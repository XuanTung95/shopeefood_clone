import 'package:shopeefood_clone/utils/common_import.dart';

class AppRouting {
  static void goToHomeScreen(BuildContext context) {
    context.go('/home');
  }

  static void goToLinkShopeeAcount(BuildContext context) {
    context.go('/home/linkShopeeAccount');
  }

  static void goToNotificationSetting(BuildContext context) {
    context.go('/home/notificationSetting');
  }

}