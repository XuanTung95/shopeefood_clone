import 'package:shopeefood_clone/screens/home/local/tabs/order/view_cart_widget.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/order/view_history_order.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../widgets/tab_bar/my_order_tabbar.dart';
import 'ongoing_order_view.dart';
import 'order_to_rate_view.dart';

class TabMyOrderHome extends ConsumerStatefulWidget {
  const TabMyOrderHome({Key? key}) : super(key: key);

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends ConsumerState<TabMyOrderHome> with SingleTickerProviderStateMixin {

  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    return Material(
      color: colors.homeBg,
      child: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SafeArea(
              child: Column(
                children: [
                  MyOrderTabBar(
                    controller: _controller,
                    onChanged: () {},
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _controller,
                      children: const [
                        OngoingOrderView(),
                        ViewHistoryOrder(),
                        OrderToRateView(),
                        ViewCartWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void executeLoadMore() {}
}