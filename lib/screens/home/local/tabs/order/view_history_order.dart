import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/order/search_filter_row.dart';
import 'package:shopeefood_clone/vm/global/state_order_history.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../vm/global/state_order_history_filter.dart';
import '../../../../../widgets/button/app_select_button.dart';
import '../../../../../widgets/divider/list_divider.dart';
import '../../../../../widgets/empty/order_empty_widget.dart';
import '../../../../../widgets/list/tile/order_item_widget.dart';
import '../../../../../widgets/picker/scroll_date_range_picker.dart';
import 'link_shopee_account_row.dart';

class ViewHistoryOrder extends ConsumerStatefulWidget {
  const ViewHistoryOrder({Key? key}) : super(key: key);

  @override
  _ViewHistoryOrderState createState() => _ViewHistoryOrderState();
}

class _ViewHistoryOrderState extends ConsumerState<ViewHistoryOrder> {
  final key = GlobalObjectKey<SearchFilterSelectWidgetState>("filter_order");
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildLinkShopeeRow(context),
        buildSearchFilterRow(context),
        buildScrollContent(context),
      ],
    );
  }

  buildSearchFilterRow(BuildContext context) {
    return SearchFilterRow(
      text1: 'all_services'.tr(),
      text2: 'all_status'.tr(),
      text3: '29/11/21 - 27/02/22',
      onClickIndex: (int index) {
        if (key.currentContext != null) {
          switch (index) {
            case 0:
              key.currentState?.clickServices();
              break;
            case 1:
              key.currentState?.clickStatus();
              break;
            case 2:
              key.currentState?.clickDates();
              break;
          }
        }
      },
    );
  }

  buildScrollContent(BuildContext context) {
    final stateOrderHistory = ref.watch(StateOrderHistory.provider);
    return Expanded(
      child: Stack(
        children: [
          if (stateOrderHistory.orders.isNotEmpty)
            CustomScrollView(
              controller: scrollController, // bug scroll controller
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final order = stateOrderHistory.orders[index];
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: OrderItemWidget(order: order,),
                          ),
                          ListDivider(),
                        ],
                      );
                    },
                    childCount: stateOrderHistory.orders.length,
                  ),
                )
              ],
            )
          else
            OrderEmptyWidget(),
          Positioned.fill(
            child: SearchFilterSelectWidget(
              key: key,
            ),
          )
        ],
      ),
    );
  }

  buildLinkShopeeRow(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouting.goToLinkShopeeAcount(context);
      },
      child: LinkShopeeAccountRow(),
    );
  }
}

class SearchFilterSelectWidget extends ConsumerStatefulWidget {
  const SearchFilterSelectWidget({Key? key}) : super(key: key);

  @override
  SearchFilterSelectWidgetState createState() =>
      SearchFilterSelectWidgetState();
}

class SearchFilterSelectWidgetState
    extends ConsumerState<SearchFilterSelectWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController sizeController;
  late Animation<Color?> animationColor;
  ScrollController scrollService = ScrollController();
  ScrollController scrollStatus = ScrollController();

  _SelectState state = _SelectState.NOT_SELECT;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    sizeController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animationColor = controller.drive(
      ColorTween(
        begin: Colors.black.withOpacity(0.01),
        end: Colors.black.withOpacity(0.6),
      ),
    );
    controller.addStatusListener((status) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    sizeController.dispose();
    super.dispose();
  }

  void close() {
    controller.reverse();
    setState(() {
      state = _SelectState.NOT_SELECT;
    });
  }

  void clickServices() {
    switch (state) {
      case _SelectState.NOT_SELECT:
        controller.forward();
        state = _SelectState.SELECT_SERVICE;
        break;
      case _SelectState.SELECT_SERVICE:
        controller.reverse();
        state = _SelectState.NOT_SELECT;
        break;
      case _SelectState.SELECT_STATUS:
      case _SelectState.SELECT_DATE:
        state = _SelectState.SELECT_SERVICE;
        break;
    }
    setState(() {});
  }

  void clickStatus() {
    switch (state) {
      case _SelectState.NOT_SELECT:
        controller.forward();
        state = _SelectState.SELECT_STATUS;
        break;
      case _SelectState.SELECT_STATUS:
        controller.reverse();
        state = _SelectState.NOT_SELECT;
        break;
      case _SelectState.SELECT_SERVICE:
      case _SelectState.SELECT_DATE:
        state = _SelectState.SELECT_STATUS;
        break;
    }
    setState(() {});
  }

  void clickDates() {
    switch (state) {
      case _SelectState.NOT_SELECT:
        controller.forward();
        sizeController.forward();
        state = _SelectState.SELECT_DATE;
        break;
      case _SelectState.SELECT_DATE:
        sizeController.reverse();
        controller.reverse().then((value) {
          setState(() {
            state = _SelectState.NOT_SELECT;
          });
        });
        break;
      case _SelectState.SELECT_SERVICE:
      case _SelectState.SELECT_STATUS:
        sizeController.forward();
        state = _SelectState.SELECT_DATE;
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var vm = ref.watch(StateOrderHistoryFilter.provider);
    final textStyle = AppTextStyle(context);
    return Stack(
      children: [
        IgnorePointer(
            ignoring: controller.value <= 0,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    close();
                  });
                },
                child: ColoredBox(
                    color: Colors.transparent,
                    child: IgnorePointer(
                        child: AnimatedModalBarrier(color: animationColor))))),
        if (state == _SelectState.SELECT_SERVICE)
          Container(
            constraints: BoxConstraints(maxHeight: 400),
            color: Colors.white,
            child: ListView.builder(
              controller: scrollService,
              key: const ValueKey("services"),
              itemBuilder: (context, index) {
                final currItem = vm.allServices[index];
                final selected = currItem == vm.selectedService;
                return GestureDetector(
                  onTap: () {
                    vm.selectedService = currItem;
                    close();
                  },
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  currItem,
                                  style: selected
                                      ? textStyle.bodyBoldBlackBig
                                      : textStyle.bodyRegular,
                                ),
                              ),
                              if (selected)
                                Image.asset(
                                  Assets
                                      .images
                                      .nodeModulesShopeernCommonimagesAssetsCommoniconCheckorangeicon
                                      .path,
                                  width: 30,
                                ),
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                );
              },
              itemCount: vm.allServices.length,
            ),
          ),
        if (state == _SelectState.SELECT_STATUS)
          Container(
            color: Colors.white,
            constraints: BoxConstraints(maxHeight: 400),
            child: ListView.builder(
              controller: scrollStatus,
              key: ValueKey("status"),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final currItem = vm.allStatus[index];
                final selected = currItem == vm.selectedStatus;
                return GestureDetector(
                  onTap: () {
                    vm.selectedStatus = currItem;
                    close();
                  },
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  currItem,
                                  style: selected
                                      ? textStyle.bodyBoldBlackBig
                                      : textStyle.bodyRegular,
                                ),
                              ),
                              if (selected)
                                Image.asset(
                                  Assets
                                      .images
                                      .nodeModulesShopeernCommonimagesAssetsCommoniconCheckorangeicon
                                      .path,
                                  width: 30,
                                ),
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                );
              },
              itemCount: vm.allStatus.length,
            ),
          ),
        if (state == _SelectState.SELECT_DATE)
          SizeTransition(
            sizeFactor: sizeController,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: CalendarDateRangePicker(
                      firstDate: DateTime.now().subtract(Duration(days: 200)),
                      lastDate: DateTime.now(),
                      onEndDateChanged: (DateTime? value) {},
                      onStartDateChanged: (DateTime value) {},
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppSelectButton(
                            text: 'date_picker_reset'.tr(),
                            onClick: () {},
                            outline: true,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: AppSelectButton(
                            text: 'date_picker_select'.tr(),
                            onClick: () {
                              clickDates();
                            },
                            outline: false,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}

enum _SelectState {
  NOT_SELECT,
  SELECT_SERVICE,
  SELECT_STATUS,
  SELECT_DATE,
}
