// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


const Duration _monthScrollDuration = Duration(milliseconds: 200);

const double _monthItemHeaderHeight = 58.0;
const double _monthItemFooterHeight = 12.0;
const double _monthItemRowHeight = 42.0;
const double _monthItemSpaceBetweenRows = 8.0;
const double _horizontalPadding = 8.0;
const double _maxCalendarWidthLandscape = 384.0;
const double _maxCalendarWidthPortrait = 480.0;

/// Displays a scrollable calendar grid that allows a user to select a range
/// of dates.
class CalendarDateRangePicker extends StatefulWidget {
  /// Creates a scrollable calendar grid for picking date ranges.
  CalendarDateRangePicker({
    Key? key,
    DateTime? initialStartDate,
    DateTime? initialEndDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    required this.onStartDateChanged,
    required this.onEndDateChanged,
  }) : initialStartDate = initialStartDate != null ? DateUtils.dateOnly(initialStartDate) : null,
        initialEndDate = initialEndDate != null ? DateUtils.dateOnly(initialEndDate) : null,
        firstDate = DateUtils.dateOnly(firstDate),
        lastDate = DateUtils.dateOnly(lastDate),
        currentDate = DateUtils.dateOnly(currentDate ?? DateTime.now()),
        super(key: key) {
    assert(
    this.initialStartDate == null || this.initialEndDate == null || !this.initialStartDate!.isAfter(initialEndDate!),
    'initialStartDate must be on or before initialEndDate.',
    );
    assert(
    !this.lastDate.isBefore(this.firstDate),
    'firstDate must be on or before lastDate.',
    );
  }

  /// The [DateTime] that represents the start of the initial date range selection.
  final DateTime? initialStartDate;

  /// The [DateTime] that represents the end of the initial date range selection.
  final DateTime? initialEndDate;

  /// The earliest allowable [DateTime] that the user can select.
  final DateTime firstDate;

  /// The latest allowable [DateTime] that the user can select.
  final DateTime lastDate;

  /// The [DateTime] representing today. It will be highlighted in the day grid.
  final DateTime currentDate;

  /// Called when the user changes the start date of the selected range.
  final ValueChanged<DateTime>? onStartDateChanged;

  /// Called when the user changes the end date of the selected range.
  final ValueChanged<DateTime?>? onEndDateChanged;

  @override
  _CalendarDateRangePickerState createState() => _CalendarDateRangePickerState();
}

class _CalendarDateRangePickerState extends State<CalendarDateRangePicker> {
  final GlobalKey _scrollViewKey = GlobalKey();
  DateTime? _startDate;
  DateTime? _endDate;
  int _initialMonthIndex = 0;
  late ScrollController _controller;
  late bool _showWeekBottomDivider;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_scrollListener);

    _startDate = widget.initialStartDate;
    _endDate = widget.initialEndDate;

    // Calculate the index for the initially displayed month. This is needed to
    // divide the list of months into two `SliverList`s.
    final DateTime initialDate = widget.initialStartDate ?? widget.currentDate;
    if (!initialDate.isBefore(widget.firstDate) &&
        !initialDate.isAfter(widget.lastDate)) {
      _initialMonthIndex = DateUtils.monthDelta(widget.firstDate, initialDate);
    }

    _showWeekBottomDivider = _initialMonthIndex != 0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_controller.offset <= _controller.position.minScrollExtent) {
      setState(() {
        _showWeekBottomDivider = false;
      });
    } else if (!_showWeekBottomDivider) {
      setState(() {
        _showWeekBottomDivider = true;
      });
    }
  }

  int get _numberOfMonths => DateUtils.monthDelta(widget.firstDate, widget.lastDate) + 1;

  void _vibrate() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        HapticFeedback.vibrate();
        break;
      case TargetPlatform.iOS:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        break;
    }
  }

  // This updates the selected date range using this logic:
  //
  // * From the unselected state, selecting one date creates the start date.
  //   * If the next selection is before the start date, reset date range and
  //     set the start date to that selection.
  //   * If the next selection is on or after the start date, set the end date
  //     to that selection.
  // * After both start and end dates are selected, any subsequent selection
  //   resets the date range and sets start date to that selection.
  void _updateSelection(DateTime date) {
    _vibrate();
    setState(() {
      if (_startDate != null && _endDate == null && !date.isBefore(_startDate!)) {
        _endDate = date;
        widget.onEndDateChanged?.call(_endDate);
      } else {
        _startDate = date;
        widget.onStartDateChanged?.call(_startDate!);
        if (_endDate != null) {
          _endDate = null;
          widget.onEndDateChanged?.call(_endDate);
        }
      }
    });
  }

  Widget _buildMonthItem(BuildContext context, int index, bool beforeInitialMonth) {
    final int monthIndex = beforeInitialMonth
        ? _initialMonthIndex - index - 1
        : _initialMonthIndex + index;
    final DateTime month = DateUtils.addMonthsToMonthDate(widget.firstDate, monthIndex);
    return _MonthItem(
      selectedDateStart: _startDate,
      selectedDateEnd: _endDate,
      currentDate: widget.currentDate,
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
      displayedMonth: month,
      onChanged: _updateSelection,
    );
  }

  @override
  Widget build(BuildContext context) {
    const Key sliverAfterKey = Key('sliverAfterKey');

    return Column(
      children: <Widget>[
        _DayHeaders(),
        if (_showWeekBottomDivider) const Divider(height: 0),
        Expanded(
          child: _CalendarKeyboardNavigator(
            firstDate: widget.firstDate,
            lastDate: widget.lastDate,
            initialFocusedDay: _startDate ?? widget.initialStartDate ?? widget.currentDate,
            // In order to prevent performance issues when displaying the
            // correct initial month, 2 `SliverList`s are used to split the
            // months. The first item in the second SliverList is the initial
            // month to be displayed.
            child: CustomScrollView(
              key: _scrollViewKey,
              controller: _controller,
              center: sliverAfterKey,
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) => _buildMonthItem(context, index, true),
                    childCount: _initialMonthIndex,
                  ),
                ),
                SliverList(
                  key: sliverAfterKey,
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) => _buildMonthItem(context, index, false),
                    childCount: _numberOfMonths - _initialMonthIndex,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CalendarKeyboardNavigator extends StatefulWidget {
  const _CalendarKeyboardNavigator({
    Key? key,
    required this.child,
    required this.firstDate,
    required this.lastDate,
    required this.initialFocusedDay,
  }) : super(key: key);

  final Widget child;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime initialFocusedDay;

  @override
  _CalendarKeyboardNavigatorState createState() => _CalendarKeyboardNavigatorState();
}

class _CalendarKeyboardNavigatorState extends State<_CalendarKeyboardNavigator> {

  final Map<ShortcutActivator, Intent> _shortcutMap = const <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(TraversalDirection.left),
    SingleActivator(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(TraversalDirection.right),
    SingleActivator(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(TraversalDirection.down),
    SingleActivator(LogicalKeyboardKey.arrowUp): DirectionalFocusIntent(TraversalDirection.up),
  };
  late Map<Type, Action<Intent>> _actionMap;
  late FocusNode _dayGridFocus;
  TraversalDirection? _dayTraversalDirection;
  DateTime? _focusedDay;

  @override
  void initState() {
    super.initState();

    _actionMap = <Type, Action<Intent>>{
      NextFocusIntent: CallbackAction<NextFocusIntent>(onInvoke: _handleGridNextFocus),
      PreviousFocusIntent: CallbackAction<PreviousFocusIntent>(onInvoke: _handleGridPreviousFocus),
      DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(onInvoke: _handleDirectionFocus),
    };
    _dayGridFocus = FocusNode(debugLabel: 'Day Grid');
  }

  @override
  void dispose() {
    _dayGridFocus.dispose();
    super.dispose();
  }

  void _handleGridFocusChange(bool focused) {
    setState(() {
      if (focused) {
        _focusedDay ??= widget.initialFocusedDay;
      }
    });
  }

  /// Move focus to the next element after the day grid.
  void _handleGridNextFocus(NextFocusIntent intent) {
    _dayGridFocus.requestFocus();
    _dayGridFocus.nextFocus();
  }

  /// Move focus to the previous element before the day grid.
  void _handleGridPreviousFocus(PreviousFocusIntent intent) {
    _dayGridFocus.requestFocus();
    _dayGridFocus.previousFocus();
  }

  /// Move the internal focus date in the direction of the given intent.
  ///
  /// This will attempt to move the focused day to the next selectable day in
  /// the given direction. If the new date is not in the current month, then
  /// the page view will be scrolled to show the new date's month.
  ///
  /// For horizontal directions, it will move forward or backward a day (depending
  /// on the current [TextDirection]). For vertical directions it will move up and
  /// down a week at a time.
  void _handleDirectionFocus(DirectionalFocusIntent intent) {
    assert(_focusedDay != null);
    setState(() {
      final DateTime? nextDate = _nextDateInDirection(_focusedDay!, intent.direction);
      if (nextDate != null) {
        _focusedDay = nextDate;
        _dayTraversalDirection = intent.direction;
      }
    });
  }

  static const Map<TraversalDirection, int> _directionOffset = <TraversalDirection, int>{
    TraversalDirection.up: -DateTime.daysPerWeek,
    TraversalDirection.right: 1,
    TraversalDirection.down: DateTime.daysPerWeek,
    TraversalDirection.left: -1,
  };

  int _dayDirectionOffset(TraversalDirection traversalDirection, TextDirection textDirection) {
    // Swap left and right if the text direction if RTL
    if (textDirection == TextDirection.rtl) {
      if (traversalDirection == TraversalDirection.left) {
        traversalDirection = TraversalDirection.right;
      } else if (traversalDirection == TraversalDirection.right) {
        traversalDirection = TraversalDirection.left;
      }
    }
    return _directionOffset[traversalDirection]!;
  }

  DateTime? _nextDateInDirection(DateTime date, TraversalDirection direction) {
    final TextDirection textDirection = Directionality.of(context);
    final DateTime nextDate = DateUtils.addDaysToDate(date, _dayDirectionOffset(direction, textDirection));
    if (!nextDate.isBefore(widget.firstDate) && !nextDate.isAfter(widget.lastDate)) {
      return nextDate;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      shortcuts: _shortcutMap,
      actions: _actionMap,
      focusNode: _dayGridFocus,
      onFocusChange: _handleGridFocusChange,
      child: _FocusedDate(
        date: _dayGridFocus.hasFocus ? _focusedDay : null,
        scrollDirection: _dayGridFocus.hasFocus ? _dayTraversalDirection : null,
        child: widget.child,
      ),
    );
  }
}

/// InheritedWidget indicating what the current focused date is for its children.
///
/// This is used by the [_MonthPicker] to let its children [_DayPicker]s know
/// what the currently focused date (if any) should be.
class _FocusedDate extends InheritedWidget {
  const _FocusedDate({
    Key? key,
    required Widget child,
    this.date,
    this.scrollDirection,
  }) : super(key: key, child: child);

  final DateTime? date;
  final TraversalDirection? scrollDirection;

  @override
  bool updateShouldNotify(_FocusedDate oldWidget) {
    return !DateUtils.isSameDay(date, oldWidget.date) || scrollDirection != oldWidget.scrollDirection;
  }

  static _FocusedDate? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_FocusedDate>();
  }
}


class _DayHeaders extends StatelessWidget {
  /// Builds widgets showing abbreviated days of week. The first widget in the
  /// returned list corresponds to the first day of week for the current locale.
  ///
  /// Examples:
  ///
  /// ```
  /// ┌ Sunday is the first day of week in the US (en_US)
  /// |
  /// S M T W T F S  <-- the returned list contains these widgets
  /// _ _ _ _ _ 1 2
  /// 3 4 5 6 7 8 9
  ///
  /// ┌ But it's Monday in the UK (en_GB)
  /// |
  /// M T W T F S S  <-- the returned list contains these widgets
  /// _ _ _ _ 1 2 3
  /// 4 5 6 7 8 9 10
  /// ```
  List<Widget> _getDayHeaders(TextStyle headerStyle, MaterialLocalizations localizations) {
    final List<Widget> result = <Widget>[];
    for (int i = localizations.firstDayOfWeekIndex; true; i = (i + 1) % 7) {
      final String weekday = localizations.narrowWeekdays[i];
      result.add(ExcludeSemantics(
        child: Center(child: Text(weekday, style: headerStyle)),
      ));
      if (i == (localizations.firstDayOfWeekIndex - 1) % 7) {
        break;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    final TextStyle textStyle = themeData.textTheme.subtitle2!.apply(color: colorScheme.onSurface);
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final List<Widget> labels = _getDayHeaders(textStyle, localizations);

    // Add leading and trailing containers for edges of the custom grid layout.
    labels.insert(0, Container());
    labels.add(Container());

    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).orientation == Orientation.landscape
            ? _maxCalendarWidthLandscape
            : _maxCalendarWidthPortrait,
        maxHeight: _monthItemRowHeight,
      ),
      child: GridView.custom(
        shrinkWrap: true,
        gridDelegate: _monthItemGridDelegate,
        childrenDelegate: SliverChildListDelegate(
          labels,
          addRepaintBoundaries: false,
        ),
      ),
    );
  }
}

class _MonthItemGridDelegate extends SliverGridDelegate {
  const _MonthItemGridDelegate();

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    final double tileWidth = (constraints.crossAxisExtent - 2 * _horizontalPadding) / DateTime.daysPerWeek;
    return _MonthSliverGridLayout(
      crossAxisCount: DateTime.daysPerWeek + 2,
      dayChildWidth: tileWidth,
      edgeChildWidth: _horizontalPadding,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(_MonthItemGridDelegate oldDelegate) => false;
}

const _MonthItemGridDelegate _monthItemGridDelegate = _MonthItemGridDelegate();

class _MonthSliverGridLayout extends SliverGridLayout {
  /// Creates a layout that uses equally sized and spaced tiles for each day of
  /// the week and an additional edge tile for padding at the start and end of
  /// each row.
  ///
  /// This is necessary to facilitate the painting of the range highlight
  /// correctly.
  const _MonthSliverGridLayout({
    required this.crossAxisCount,
    required this.dayChildWidth,
    required this.edgeChildWidth,
    required this.reverseCrossAxis,
  }) : assert(crossAxisCount > 0),
        assert(dayChildWidth >= 0),
        assert(edgeChildWidth >= 0);

  /// The number of children in the cross axis.
  final int crossAxisCount;

  /// The width in logical pixels of the day child widgets.
  final double dayChildWidth;

  /// The width in logical pixels of the edge child widgets.
  final double edgeChildWidth;

  /// Whether the children should be placed in the opposite order of increasing
  /// coordinates in the cross axis.
  ///
  /// For example, if the cross axis is horizontal, the children are placed from
  /// left to right when [reverseCrossAxis] is false and from right to left when
  /// [reverseCrossAxis] is true.
  ///
  /// Typically set to the return value of [axisDirectionIsReversed] applied to
  /// the [SliverConstraints.crossAxisDirection].
  final bool reverseCrossAxis;

  /// The number of logical pixels from the leading edge of one row to the
  /// leading edge of the next row.
  double get _rowHeight {
    return _monthItemRowHeight + _monthItemSpaceBetweenRows;
  }

  /// The height in logical pixels of the children widgets.
  double get _childHeight {
    return _monthItemRowHeight;
  }

  @override
  int getMinChildIndexForScrollOffset(double scrollOffset) {
    return crossAxisCount * (scrollOffset ~/ _rowHeight);
  }

  @override
  int getMaxChildIndexForScrollOffset(double scrollOffset) {
    final int mainAxisCount = (scrollOffset / _rowHeight).ceil();
    return math.max(0, crossAxisCount * mainAxisCount - 1);
  }

  double _getCrossAxisOffset(double crossAxisStart, bool isPadding) {
    if (reverseCrossAxis) {
      return
        ((crossAxisCount - 2) * dayChildWidth + 2 * edgeChildWidth) -
            crossAxisStart -
            (isPadding ? edgeChildWidth : dayChildWidth);
    }
    return crossAxisStart;
  }

  @override
  SliverGridGeometry getGeometryForChildIndex(int index) {
    final int adjustedIndex = index % crossAxisCount;
    final bool isEdge = adjustedIndex == 0 || adjustedIndex == crossAxisCount - 1;
    final double crossAxisStart = math.max(0, (adjustedIndex - 1) * dayChildWidth + edgeChildWidth);

    return SliverGridGeometry(
      scrollOffset: (index ~/ crossAxisCount) * _rowHeight,
      crossAxisOffset: _getCrossAxisOffset(crossAxisStart, isEdge),
      mainAxisExtent: _childHeight,
      crossAxisExtent: isEdge ? edgeChildWidth : dayChildWidth,
    );
  }

  @override
  double computeMaxScrollOffset(int childCount) {
    assert(childCount >= 0);
    final int mainAxisCount = ((childCount - 1) ~/ crossAxisCount) + 1;
    final double mainAxisSpacing = _rowHeight - _childHeight;
    return _rowHeight * mainAxisCount - mainAxisSpacing;
  }
}

/// Displays the days of a given month and allows choosing a date range.
///
/// The days are arranged in a rectangular grid with one column for each day of
/// the week.
class _MonthItem extends StatefulWidget {
  /// Creates a month item.
  _MonthItem({
    Key? key,
    required this.selectedDateStart,
    required this.selectedDateEnd,
    required this.currentDate,
    required this.onChanged,
    required this.firstDate,
    required this.lastDate,
    required this.displayedMonth,
    this.dragStartBehavior = DragStartBehavior.start,
  }) : assert(!firstDate.isAfter(lastDate)),
        assert(selectedDateStart == null || !selectedDateStart.isBefore(firstDate)),
        assert(selectedDateEnd == null || !selectedDateEnd.isBefore(firstDate)),
        assert(selectedDateStart == null || !selectedDateStart.isAfter(lastDate)),
        assert(selectedDateEnd == null || !selectedDateEnd.isAfter(lastDate)),
        assert(selectedDateStart == null || selectedDateEnd == null || !selectedDateStart.isAfter(selectedDateEnd)),
        super(key: key);

  /// The currently selected start date.
  ///
  /// This date is highlighted in the picker.
  final DateTime? selectedDateStart;

  /// The currently selected end date.
  ///
  /// This date is highlighted in the picker.
  final DateTime? selectedDateEnd;

  /// The current date at the time the picker is displayed.
  final DateTime currentDate;

  /// Called when the user picks a day.
  final ValueChanged<DateTime> onChanged;

  /// The earliest date the user is permitted to pick.
  final DateTime firstDate;

  /// The latest date the user is permitted to pick.
  final DateTime lastDate;

  /// The month whose days are displayed by this picker.
  final DateTime displayedMonth;

  /// Determines the way that drag start behavior is handled.
  ///
  /// If set to [DragStartBehavior.start], the drag gesture used to scroll a
  /// date picker wheel will begin at the position where the drag gesture won
  /// the arena. If set to [DragStartBehavior.down] it will begin at the position
  /// where a down event is first detected.
  ///
  /// In general, setting this to [DragStartBehavior.start] will make drag
  /// animation smoother and setting it to [DragStartBehavior.down] will make
  /// drag behavior feel slightly more reactive.
  ///
  /// By default, the drag start behavior is [DragStartBehavior.start].
  ///
  /// See also:
  ///
  ///  * [DragGestureRecognizer.dragStartBehavior], which gives an example for
  ///    the different behaviors.
  final DragStartBehavior dragStartBehavior;

  @override
  _MonthItemState createState() => _MonthItemState();
}

class _MonthItemState extends State<_MonthItem> {
  /// List of [FocusNode]s, one for each day of the month.
  late List<FocusNode> _dayFocusNodes;

  @override
  void initState() {
    super.initState();
    final int daysInMonth = DateUtils.getDaysInMonth(widget.displayedMonth.year, widget.displayedMonth.month);
    _dayFocusNodes = List<FocusNode>.generate(
      daysInMonth,
          (int index) => FocusNode(skipTraversal: true, debugLabel: 'Day ${index + 1}'),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check to see if the focused date is in this month, if so focus it.
    final DateTime? focusedDate = _FocusedDate.of(context)?.date;
    if (focusedDate != null && DateUtils.isSameMonth(widget.displayedMonth, focusedDate)) {
      _dayFocusNodes[focusedDate.day - 1].requestFocus();
    }
  }

  @override
  void dispose() {
    for (final FocusNode node in _dayFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  Color _highlightColor(BuildContext context) {
    return Theme.of(context).colorScheme.primary.withOpacity(0.12);
  }

  void _dayFocusChanged(bool focused) {
    if (focused) {
      final TraversalDirection? focusDirection = _FocusedDate.of(context)?.scrollDirection;
      if (focusDirection != null) {
        ScrollPositionAlignmentPolicy policy = ScrollPositionAlignmentPolicy.explicit;
        switch (focusDirection) {
          case TraversalDirection.up:
          case TraversalDirection.left:
            policy = ScrollPositionAlignmentPolicy.keepVisibleAtStart;
            break;
          case TraversalDirection.right:
          case TraversalDirection.down:
            policy = ScrollPositionAlignmentPolicy.keepVisibleAtEnd;
            break;
        }
        Scrollable.ensureVisible(primaryFocus!.context!,
          duration: _monthScrollDuration,
          alignmentPolicy: policy,
        );
      }
    }
  }

  Widget _buildDayItem(BuildContext context, DateTime dayToBuild, int firstDayOffset, int daysInMonth) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final TextDirection textDirection = Directionality.of(context);
    final Color highlightColor = _highlightColor(context);
    final int day = dayToBuild.day;

    final bool isDisabled = dayToBuild.isAfter(widget.lastDate) || dayToBuild.isBefore(widget.firstDate);

    BoxDecoration? decoration;
    TextStyle? itemStyle = textTheme.bodyText2;

    final bool isRangeSelected = widget.selectedDateStart != null && widget.selectedDateEnd != null;
    final bool isSelectedDayStart = widget.selectedDateStart != null && dayToBuild.isAtSameMomentAs(widget.selectedDateStart!);
    final bool isSelectedDayEnd = widget.selectedDateEnd != null && dayToBuild.isAtSameMomentAs(widget.selectedDateEnd!);
    final bool isInRange = isRangeSelected &&
        dayToBuild.isAfter(widget.selectedDateStart!) &&
        dayToBuild.isBefore(widget.selectedDateEnd!);

    _HighlightPainter? highlightPainter;

    if (isSelectedDayStart || isSelectedDayEnd) {
      // The selected start and end dates gets a circle background
      // highlight, and a contrasting text color.
      itemStyle = textTheme.bodyText2?.apply(color: colorScheme.onPrimary);
      decoration = BoxDecoration(
        color: colorScheme.primary,
        shape: BoxShape.circle,
      );

      if (isRangeSelected && widget.selectedDateStart != widget.selectedDateEnd) {
        final _HighlightPainterStyle style = isSelectedDayStart
            ? _HighlightPainterStyle.highlightTrailing
            : _HighlightPainterStyle.highlightLeading;
        highlightPainter = _HighlightPainter(
          color: highlightColor,
          style: style,
          textDirection: textDirection,
        );
      }
    } else if (isInRange) {
      // The days within the range get a light background highlight.
      highlightPainter = _HighlightPainter(
        color: highlightColor,
        style: _HighlightPainterStyle.highlightAll,
        textDirection: textDirection,
      );
    } else if (isDisabled) {
      itemStyle = textTheme.bodyText2?.apply(color: colorScheme.onSurface.withOpacity(0.38));
    } else if (DateUtils.isSameDay(widget.currentDate, dayToBuild)) {
      // The current day gets a different text color and a circle stroke
      // border.
      itemStyle = textTheme.bodyText2?.apply(color: colorScheme.primary);
      decoration = BoxDecoration(
        border: Border.all(color: colorScheme.primary),
        shape: BoxShape.circle,
      );
    }

    // We want the day of month to be spoken first irrespective of the
    // locale-specific preferences or TextDirection. This is because
    // an accessibility user is more likely to be interested in the
    // day of month before the rest of the date, as they are looking
    // for the day of month. To do that we prepend day of month to the
    // formatted full date.
    String semanticLabel = '${localizations.formatDecimal(day)}, ${localizations.formatFullDate(dayToBuild)}';
    if (isSelectedDayStart) {
      semanticLabel = localizations.dateRangeStartDateSemanticLabel(semanticLabel);
    } else if (isSelectedDayEnd) {
      semanticLabel = localizations.dateRangeEndDateSemanticLabel(semanticLabel);
    }

    Widget dayWidget = Container(
      decoration: decoration,
      child: Center(
        child: Semantics(
          label: semanticLabel,
          selected: isSelectedDayStart || isSelectedDayEnd,
          child: ExcludeSemantics(
            child: Text(localizations.formatDecimal(day), style: itemStyle),
          ),
        ),
      ),
    );

    if (highlightPainter != null) {
      dayWidget = CustomPaint(
        painter: highlightPainter,
        child: dayWidget,
      );
    }

    if (!isDisabled) {
      dayWidget = InkResponse(
        focusNode: _dayFocusNodes[day - 1],
        onTap: () => widget.onChanged(dayToBuild),
        radius: _monthItemRowHeight / 2 + 4,
        splashColor: colorScheme.primary.withOpacity(0.38),
        onFocusChange: _dayFocusChanged,
        child: dayWidget,
      );
    }

    return dayWidget;
  }

  Widget _buildEdgeContainer(BuildContext context, bool isHighlighted) {
    return Container(color: isHighlighted ? _highlightColor(context) : null);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final int year = widget.displayedMonth.year;
    final int month = widget.displayedMonth.month;
    final int daysInMonth = DateUtils.getDaysInMonth(year, month);
    final int dayOffset = DateUtils.firstDayOffset(year, month, localizations);
    final int weeks = ((daysInMonth + dayOffset) / DateTime.daysPerWeek).ceil();
    final double gridHeight =
        weeks * _monthItemRowHeight + (weeks - 1) * _monthItemSpaceBetweenRows;
    final List<Widget> dayItems = <Widget>[];

    for (int i = 0; true; i += 1) {
      // 1-based day of month, e.g. 1-31 for January, and 1-29 for February on
      // a leap year.
      final int day = i - dayOffset + 1;
      if (day > daysInMonth) {
        break;
      }
      if (day < 1) {
        dayItems.add(Container());
      } else {
        final DateTime dayToBuild = DateTime(year, month, day);
        final Widget dayItem = _buildDayItem(
          context,
          dayToBuild,
          dayOffset,
          daysInMonth,
        );
        dayItems.add(dayItem);
      }
    }

    // Add the leading/trailing edge containers to each week in order to
    // correctly extend the range highlight.
    final List<Widget> paddedDayItems = <Widget>[];
    for (int i = 0; i < weeks; i++) {
      final int start = i * DateTime.daysPerWeek;
      final int end = math.min(
        start + DateTime.daysPerWeek,
        dayItems.length,
      );
      final List<Widget> weekList = dayItems.sublist(start, end);

      final DateTime dateAfterLeadingPadding = DateTime(year, month, start - dayOffset + 1);
      // Only color the edge container if it is after the start date and
      // on/before the end date.
      final bool isLeadingInRange =
          !(dayOffset > 0 && i == 0) &&
              widget.selectedDateStart != null &&
              widget.selectedDateEnd != null &&
              dateAfterLeadingPadding.isAfter(widget.selectedDateStart!) &&
              !dateAfterLeadingPadding.isAfter(widget.selectedDateEnd!);
      weekList.insert(0, _buildEdgeContainer(context, isLeadingInRange));

      // Only add a trailing edge container if it is for a full week and not a
      // partial week.
      if (end < dayItems.length || (end == dayItems.length && dayItems.length % DateTime.daysPerWeek == 0)) {
        final DateTime dateBeforeTrailingPadding =
        DateTime(year, month, end - dayOffset);
        // Only color the edge container if it is on/after the start date and
        // before the end date.
        final bool isTrailingInRange =
            widget.selectedDateStart != null &&
                widget.selectedDateEnd != null &&
                !dateBeforeTrailingPadding.isBefore(widget.selectedDateStart!) &&
                dateBeforeTrailingPadding.isBefore(widget.selectedDateEnd!);
        weekList.add(_buildEdgeContainer(context, isTrailingInRange));
      }

      paddedDayItems.addAll(weekList);
    }

    final double maxWidth = MediaQuery.of(context).orientation == Orientation.landscape
        ? _maxCalendarWidthLandscape
        : _maxCalendarWidthPortrait;
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          height: _monthItemHeaderHeight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: AlignmentDirectional.centerStart,
          child: ExcludeSemantics(
            child: Text(
              localizations.formatMonthYear(widget.displayedMonth),
              style: textTheme.bodyText2!.apply(color: themeData.colorScheme.onSurface),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
            maxHeight: gridHeight,
          ),
          child: GridView.custom(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: _monthItemGridDelegate,
            childrenDelegate: SliverChildListDelegate(
              paddedDayItems,
              addRepaintBoundaries: false,
            ),
          ),
        ),
        const SizedBox(height: _monthItemFooterHeight),
      ],
    );
  }
}

/// Determines which style to use to paint the highlight.
enum _HighlightPainterStyle {
  /// Paints nothing.
  none,

  /// Paints a rectangle that occupies the leading half of the space.
  highlightLeading,

  /// Paints a rectangle that occupies the trailing half of the space.
  highlightTrailing,

  /// Paints a rectangle that occupies all available space.
  highlightAll,
}

/// This custom painter will add a background highlight to its child.
///
/// This highlight will be drawn depending on the [style], [color], and
/// [textDirection] supplied. It will either paint a rectangle on the
/// left/right, a full rectangle, or nothing at all. This logic is determined by
/// a combination of the [style] and [textDirection].
class _HighlightPainter extends CustomPainter {
  _HighlightPainter({
    required this.color,
    this.style = _HighlightPainterStyle.none,
    this.textDirection,
  });

  final Color color;
  final _HighlightPainterStyle style;
  final TextDirection? textDirection;

  @override
  void paint(Canvas canvas, Size size) {
    if (style == _HighlightPainterStyle.none) {
      return;
    }

    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final Rect rectLeft = Rect.fromLTWH(0, 0, size.width / 2, size.height);
    final Rect rectRight = Rect.fromLTWH(size.width / 2, 0, size.width / 2, size.height);

    switch (style) {
      case _HighlightPainterStyle.highlightTrailing:
        canvas.drawRect(
          textDirection == TextDirection.ltr ? rectRight : rectLeft,
          paint,
        );
        break;
      case _HighlightPainterStyle.highlightLeading:
        canvas.drawRect(
          textDirection == TextDirection.ltr ? rectLeft : rectRight,
          paint,
        );
        break;
      case _HighlightPainterStyle.highlightAll:
        canvas.drawRect(
          Rect.fromLTWH(0, 0, size.width, size.height),
          paint,
        );
        break;
      case _HighlightPainterStyle.none:
        break;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Provides a pair of text fields that allow the user to enter the start and
/// end dates that represent a range of dates.
class _InputDateRangePicker extends StatefulWidget {
  /// Creates a row with two text fields configured to accept the start and end dates
  /// of a date range.
  _InputDateRangePicker({
    Key? key,
    DateTime? initialStartDate,
    DateTime? initialEndDate,
    required DateTime firstDate,
    required DateTime lastDate,
    required this.onStartDateChanged,
    required this.onEndDateChanged,
    this.helpText,
    this.errorFormatText,
    this.errorInvalidText,
    this.errorInvalidRangeText,
    this.fieldStartHintText,
    this.fieldEndHintText,
    this.fieldStartLabelText,
    this.fieldEndLabelText,
    this.autofocus = false,
    this.autovalidate = false,
  }) : initialStartDate = initialStartDate == null ? null : DateUtils.dateOnly(initialStartDate),
        initialEndDate = initialEndDate == null ? null : DateUtils.dateOnly(initialEndDate),
        firstDate = DateUtils.dateOnly(firstDate),
        lastDate = DateUtils.dateOnly(lastDate),
        super(key: key);

  /// The [DateTime] that represents the start of the initial date range selection.
  final DateTime? initialStartDate;

  /// The [DateTime] that represents the end of the initial date range selection.
  final DateTime? initialEndDate;

  /// The earliest allowable [DateTime] that the user can select.
  final DateTime firstDate;

  /// The latest allowable [DateTime] that the user can select.
  final DateTime lastDate;

  /// Called when the user changes the start date of the selected range.
  final ValueChanged<DateTime?>? onStartDateChanged;

  /// Called when the user changes the end date of the selected range.
  final ValueChanged<DateTime?>? onEndDateChanged;

  /// The text that is displayed at the top of the header.
  ///
  /// This is used to indicate to the user what they are selecting a date for.
  final String? helpText;

  /// Error text used to indicate the text in a field is not a valid date.
  final String? errorFormatText;

  /// Error text used to indicate the date in a field is not in the valid range
  /// of [firstDate] - [lastDate].
  final String? errorInvalidText;

  /// Error text used to indicate the dates given don't form a valid date
  /// range (i.e. the start date is after the end date).
  final String? errorInvalidRangeText;

  /// Hint text shown when the start date field is empty.
  final String? fieldStartHintText;

  /// Hint text shown when the end date field is empty.
  final String? fieldEndHintText;

  /// Label used for the start date field.
  final String? fieldStartLabelText;

  /// Label used for the end date field.
  final String? fieldEndLabelText;

  /// {@macro flutter.widgets.editableText.autofocus}
  final bool autofocus;

  /// If true, this the date fields will validate and update their error text
  /// immediately after every change. Otherwise, you must call
  /// [_InputDateRangePickerState.validate] to validate.
  final bool autovalidate;

  @override
  _InputDateRangePickerState createState() => _InputDateRangePickerState();
}

/// The current state of an [_InputDateRangePicker]. Can be used to
/// [validate] the date field entries.
class _InputDateRangePickerState extends State<_InputDateRangePicker> {
  late String _startInputText;
  late String _endInputText;
  DateTime? _startDate;
  DateTime? _endDate;
  late TextEditingController _startController;
  late TextEditingController _endController;
  String? _startErrorText;
  String? _endErrorText;
  bool _autoSelected = false;

  @override
  void initState() {
    super.initState();
    _startDate = widget.initialStartDate;
    _startController = TextEditingController();
    _endDate = widget.initialEndDate;
    _endController = TextEditingController();
  }

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    if (_startDate != null) {
      _startInputText = localizations.formatCompactDate(_startDate!);
      final bool selectText = widget.autofocus && !_autoSelected;
      _updateController(_startController, _startInputText, selectText);
      _autoSelected = selectText;
    }

    if (_endDate != null) {
      _endInputText = localizations.formatCompactDate(_endDate!);
      _updateController(_endController, _endInputText, false);
    }
  }

  /// Validates that the text in the start and end fields represent a valid
  /// date range.
  ///
  /// Will return true if the range is valid. If not, it will
  /// return false and display an appropriate error message under one of the
  /// text fields.
  bool validate() {
    String? startError = _validateDate(_startDate);
    final String? endError = _validateDate(_endDate);
    if (startError == null && endError == null) {
      if (_startDate!.isAfter(_endDate!)) {
        startError = widget.errorInvalidRangeText ?? MaterialLocalizations.of(context).invalidDateRangeLabel;
      }
    }
    setState(() {
      _startErrorText = startError;
      _endErrorText = endError;
    });
    return startError == null && endError == null;
  }

  DateTime? _parseDate(String? text) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    return localizations.parseCompactDate(text);
  }

  String? _validateDate(DateTime? date) {
    if (date == null) {
      return widget.errorFormatText ?? MaterialLocalizations.of(context).invalidDateFormatLabel;
    } else if (date.isBefore(widget.firstDate) || date.isAfter(widget.lastDate)) {
      return widget.errorInvalidText ?? MaterialLocalizations.of(context).dateOutOfRangeLabel;
    }
    return null;
  }

  void _updateController(TextEditingController controller, String text, bool selectText) {
    TextEditingValue textEditingValue = controller.value.copyWith(text: text);
    if (selectText) {
      textEditingValue = textEditingValue.copyWith(selection: TextSelection(
        baseOffset: 0,
        extentOffset: text.length,
      ));
    }
    controller.value = textEditingValue;
  }

  void _handleStartChanged(String text) {
    setState(() {
      _startInputText = text;
      _startDate = _parseDate(text);
      widget.onStartDateChanged?.call(_startDate);
    });
    if (widget.autovalidate) {
      validate();
    }
  }

  void _handleEndChanged(String text) {
    setState(() {
      _endInputText = text;
      _endDate = _parseDate(text);
      widget.onEndDateChanged?.call(_endDate);
    });
    if (widget.autovalidate) {
      validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final InputDecorationTheme inputTheme = Theme.of(context).inputDecorationTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: TextField(
            controller: _startController,
            decoration: InputDecoration(
              border: inputTheme.border ?? const UnderlineInputBorder(),
              filled: inputTheme.filled,
              hintText: widget.fieldStartHintText ?? localizations.dateHelpText,
              labelText: widget.fieldStartLabelText ?? localizations.dateRangeStartLabel,
              errorText: _startErrorText,
            ),
            keyboardType: TextInputType.datetime,
            onChanged: _handleStartChanged,
            autofocus: widget.autofocus,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: _endController,
            decoration: InputDecoration(
              border: inputTheme.border ?? const UnderlineInputBorder(),
              filled: inputTheme.filled,
              hintText: widget.fieldEndHintText ?? localizations.dateHelpText,
              labelText: widget.fieldEndLabelText ?? localizations.dateRangeEndLabel,
              errorText: _endErrorText,
            ),
            keyboardType: TextInputType.datetime,
            onChanged: _handleEndChanged,
          ),
        ),
      ],
    );
  }
}
