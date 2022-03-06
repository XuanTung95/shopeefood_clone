import 'dart:io';

import 'package:shopeefood_clone/vm/global/state_my_voucher.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/empty/empty_voucher_widget.dart';

import '../../models/model_voucher.dart';
import '../../utils/common_import.dart';
import '../../widgets/list/tile/view_voucher_list_widget.dart';
import '../../widgets/list/tile/view_voucher_widget.dart';
import '../../widgets/scroll_behavior/macos_scroll_behavior.dart';
import '../../widgets/tab_bar/app_tabbar.dart';

class ScreenMyVoucher extends ConsumerStatefulWidget {
  const ScreenMyVoucher({Key? key}) : super(key: key);

  @override
  _ScreenMyVoucherState createState() => _ScreenMyVoucherState();
}

class _ScreenMyVoucherState extends ConsumerState<ScreenMyVoucher>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final state = ref.watch(StateMyVoucher.provider);
    return Scaffold(
      body: ScrollConfiguration(
        behavior:
            Platform.isMacOS ? MacOsScrollBehavior() : const ScrollBehavior(),
        child: Material(
          color: colors.homeDividerBg,
          child: SafeArea(
            child: Column(
              children: [
                buildAppBar(),
                buildTabBar(),
                Expanded(
                  child: buildTabBarView(state),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TabBarView buildTabBarView(StateMyVoucher state) {
    return TabBarView(controller: tabController, children: [
                  ViewVoucherListWidget(
                    vouchers: state.validVoucher,
                  ),
                  ViewVoucherListWidget(
                    vouchers: state.usedVoucher,
                  ),
                  ViewVoucherListWidget(
                    vouchers: state.invalidVoucher,
                  ),
                ]);
  }

  AppTabBar buildTabBar() {
    return AppTabBar(
                controller: tabController,
                onTap: (int value) {},
                tabTitle: [
                  'my_voucher_tab_valid'.tr(),
                  'my_voucher_tab_used'.tr(),
                  'my_voucher_tab_invalid'.tr(),
                ],
              );
  }

  AppBarDefault buildAppBar() {
    return AppBarDefault(
                title: 'user_voucher_header'.tr(),
              );
  }
}
