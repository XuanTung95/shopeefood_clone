import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/order/search_filter_row.dart';
import 'package:shopeefood_clone/vm/global/state_order_history.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../vm/global/state_order_history_filter.dart';
import '../../../../../widgets/common/search_filter.dart';
import '../../../../../widgets/divider/list_divider.dart';
import '../../../../../widgets/empty/order_empty_widget.dart';
import '../../../../../widgets/list/tile/order_item_widget.dart';
import '../../../../../widgets/common/link_shopee_account_row.dart';

class ViewHistoryOrder extends ConsumerStatefulWidget {
  const ViewHistoryOrder({Key? key}) : super(key: key);

  @override
  _ViewHistoryOrderState createState() => _ViewHistoryOrderState();
}

class _ViewHistoryOrderState extends ConsumerState<ViewHistoryOrder> {
  final key = const GlobalObjectKey<SearchFilterSelectWidgetState>("filter_order");
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
    var vm = ref.watch(StateOrderHistoryFilter.provider);
    return SearchFilterRow(
      text1: vm.selectedService,
      text2: vm.selectedStatus,
      text3: vm.getDateString(),
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
          if (stateOrderHistory.orders.data.isNotEmpty)
            CustomScrollView(
              controller: scrollController, // bug scroll controller
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final order = stateOrderHistory.orders.data[index];
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: AppGestureDetector(
                                onTap: () {
                                  AppRouting.goToShopDetailScreen(context);
                                },
                                child: OrderItemWidget(order: order,)),
                          ),
                          const ListDivider(),
                        ],
                      );
                    },
                    childCount: stateOrderHistory.orders.data.length,
                  ),
                )
              ],
            )
          else
            const OrderEmptyWidget(),
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
      child: const LinkShopeeAccountRow(),
    );
  }
}