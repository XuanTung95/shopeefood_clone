import 'dart:io';

import 'package:shopeefood_clone/vm/global/state_home_bottom_nav.dart';

import '../../utils/common_import.dart';
import '../../widgets/bottom_bar/home_bottom_nav_bar.dart';
import '../../widgets/popup/home_popup_widget.dart';
import '../../widgets/scroll_behavior/macos_scroll_behavior.dart';
import 'local/tabs/home/home_tab.dart';
import 'local/tabs/like/like_tab.dart';
import 'local/tabs/me/me_tab.dart';
import 'local/tabs/notifications/noti_tab.dart';
import 'local/tabs/order/tab_my_order.dart';

// Size: 360.0 : 779.6666666666666
class ScreenHome extends ConsumerWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return ScrollConfiguration(
      behavior:
      Platform.isMacOS ? MacOsScrollBehavior() : const ScrollBehavior(),
      child: LayoutBuilder(builder: (context, size) {
        Widget homeContent = const SizedBox();
        var stateBotNav = ref.watch(StateHomeBottomNav.provider);
        switch(stateBotNav.selected) {
          case HomeBottomNavName.HOME:
            homeContent = const TabHomeScreen();
            break;
          case HomeBottomNavName.MY_ORDER:
            homeContent = const TabMyOrderHome();
            break;
          case HomeBottomNavName.LIKES:
            homeContent = const TabLikeHome();
            break;
          case HomeBottomNavName.NOTIFICATION:
            homeContent = const TabNotificationHome();
            break;
          case HomeBottomNavName.ME:
            homeContent = const TabMeHomeView();
            break;
        }
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        homeContent,
                      ],
                    ),
                  ),
                  const HomeBottomNavigationBar(),
                ],
              ),
              const HomePopupWidget(),
            ],
          ),
        );
      }),
    );
  }
}