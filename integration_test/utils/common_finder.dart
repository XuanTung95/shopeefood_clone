import 'package:flutter_test/flutter_test.dart';
import 'package:shopeefood_clone/utils/app_labels.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/widgets/bottom_bar/home_bottom_nav_bar.dart';

class CommonFinder {
  static Finder get appBarBackButton =>
      find.bySemanticsLabel(AppLabels.BACK_BUTTON_APP_BAR);

  static Finder get appBarTitle => find.bySemanticsLabel(AppLabels.TITLE_APP_BAR);

  static Finder get homeBottomNav => find.byType(HomeBottomNavigationBar);

  static Finder get homeNavTabMyOrder => find.descendant(
      of: homeBottomNav, matching: find.text('tab_order_title'.tr()));

  static Finder get homeNavTabLike => find.descendant(
      of: homeBottomNav, matching: find.text('rebranding.likes_tab_title'.tr()));

  static Finder get homeNavTabNotifications => find.descendant(
      of: homeBottomNav, matching: find.text('notifications'.tr()));

  static Finder get homeNavTabMe => find.descendant(
      of: homeBottomNav, matching: find.text('me_title'.tr()));

  static Finder get appBarTitleText =>
      find.descendant(of: appBarTitle, matching: find.byType(Text));
}
