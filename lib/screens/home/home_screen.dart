import 'dart:io';

import 'package:shopeefood_clone/vm/global/state_home_bottom_nav.dart';
import 'package:shopeefood_clone/widgets/bubble/notify_bubble.dart';

import '../../utils/common_import.dart';
import '../../widgets/bottom_bar/home_bottom_nav_bar.dart';
import '../../widgets/scroll_behavior/macos_scroll_behavior.dart';
import 'local/location/finding_location.dart';
import 'local/tabs/home/home_tab.dart';

// Size: 360.0 : 779.6666666666666
class ScreenHome extends ConsumerWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return ScrollConfiguration(
      behavior:
      Platform.isMacOS ? MacOsScrollBehavior() : const ScrollBehavior(),
      child: LayoutBuilder(builder: (context, size) {
        print('Size: ${size.maxWidth} : ${size.maxHeight}');
        Widget homeContent = const SizedBox();
        var stateBotNav = ref.watch(StateHomeBottomNav.provider);
        switch(stateBotNav.selected) {
          case HomeBottomNavName.HOME:
            homeContent = const ScreenHomeTab();
            break;
          case HomeBottomNavName.MY_ORDER:
            break;
          case HomeBottomNavName.LIKES:
            break;
          case HomeBottomNavName.NOTIFICATION:
            break;
          case HomeBottomNavName.ME:
            break;
        }
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    homeContent
                  ],
                ),
              ),
              HomeBottomNavigationBar(),
            ],
          ),
        );
      }),
    );
  }
}