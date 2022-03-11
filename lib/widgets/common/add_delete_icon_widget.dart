import 'dart:math';

import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';

import '../dialog/input_number_dialog.dart';
import 'add_icon_widget.dart';

class AddDeleteIconWidget extends StatefulWidget {
  final double iconSize;
  final Duration duration;
  final int count;
  final int? id;
  final void Function(BuildContext context, bool isAdd) onClick;
  final void Function(int)? onClickText;

  const AddDeleteIconWidget(
      {Key? key,
      this.iconSize = 25,
      this.duration = const Duration(milliseconds: 500),
      required this.count,
      this.id,
      required this.onClick, this.onClickText})
      : super(key: key);

  @override
  State<AddDeleteIconWidget> createState() => _AddDeleteIconWidgetState();
}

class _AddDeleteIconWidgetState extends State<AddDeleteIconWidget>
    with SingleTickerProviderStateMixin {
  int count = 0;
  int? id;
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    count = widget.count;
    id = widget.id;
    controller = AnimationController(vsync: this, duration: widget.duration);
    if (count > 0) {
      controller.value = 1;
    } else {
      controller.value = 0;
    }
  }

  @override
  void didUpdateWidget(covariant AddDeleteIconWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.id == id) {
      if (widget.count > 0 && count == 0) {
        controller.forward(from: 0);
      } else if (widget.count == 0 && count > 0) {
        controller.reverse();
      }
    } else {
      if (widget.count > 0) {
        controller.value = 1;
      } else {
        controller.value = 0;
      }
    }
    id = widget.id;
    count = max(0, widget.count);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Stack(
      children: [
        Row(
          children: [
            Builder(
              builder: (BuildContext context) {
                return AppGestureDetector(
                  onTap: () {
                    widget.onClick.call(context, false);
                  },
                  child: AddIconWidget(
                    size: widget.iconSize,
                    isAdd: false,
                  ),
                );
              },
            ),
            SizeTransition(
              axis: Axis.horizontal,
              sizeFactor: controller,
              child: Row(
                children: [
                  AppGestureDetector(
                    onTap: () async {
                      final String? res = await showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionBuilder: (context, a1, a2, widget) {
                          return Transform(
                            origin: Offset(0, 500 * a1.value),
                            transform: Matrix4.identity()..translate(0.0, 300.0 * (1-a1.value)),
                            child: Opacity(
                              opacity: a1.value,
                              child: widget,
                            ),
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 200),
                        barrierDismissible: true,
                        barrierLabel: '',
                        context: context,
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return InputNumberDialog(
                            initText: "$count",
                            title: "common_quantity".tr(), callback: (String number) {
                            Navigator.of(context).pop(number);
                          },);
                        },
                      );

                      final _count = int.tryParse(res ?? '');
                      if (_count!=null) {
                        widget.onClickText?.call(_count);
                      }
                    },
                    child: Container(
                      constraints: const BoxConstraints(minWidth: 25),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        '${widget.count}',
                        textAlign: TextAlign.center,
                        style: textStyle.bodySmall,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0,
                    child: AddIconWidget(
                      size: widget.iconSize,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          child: AppGestureDetector(
            onTap: () {
              widget.onClick.call(context, true);
            },
            child: AddIconWidget(
              size: widget.iconSize,
            ),
          ),
        ),
      ],
    );
  }
}