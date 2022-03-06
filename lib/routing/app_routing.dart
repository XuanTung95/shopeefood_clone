import 'package:shopeefood_clone/models/model_shop_detail.dart';
import 'package:shopeefood_clone/screens/dish_detail/screen_dish_detail.dart';
import 'package:shopeefood_clone/screens/error/screen_error.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../models/model_menu_response.dart';
import '../screens/home/screen_home.dart';
import '../screens/splash/screen_splash.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopeefood_clone/screens/address/screen_address.dart';
import 'package:shopeefood_clone/screens/home/screen_home.dart';
import 'package:shopeefood_clone/screens/invite/screen_invite_friend.dart';
import 'package:shopeefood_clone/screens/link_account/screen_link_shopee_acount.dart';
import 'package:shopeefood_clone/screens/my_voucher/screen_my_voucher.dart';
import 'package:shopeefood_clone/screens/notification_setting/screen_notification_setting.dart';
import 'package:shopeefood_clone/screens/payment/screen_payment.dart';
import 'package:shopeefood_clone/screens/screen_detail/screen_detail.dart';
import 'package:shopeefood_clone/screens/settings/screen_settings.dart';
import 'package:shopeefood_clone/screens/splash/screen_splash.dart';
import 'package:shopeefood_clone/screens/user_policy/screen_user_policy.dart';

class AppRouting {
  static const PATH_HOME = '/home';
  static const PATH_ERROR = 'errorScreen';
  static const PATH_SHOP_DETAIL = 'shopDetail';
  static const PATH_USER_POLICY = 'userPolicy';
  static const PATH_SETTINGS = 'settings';
  static const PATH_INVITE_FRIEND = 'inviteFriend';
  static const PATH_MY_VOUCHER = 'myVoucher';
  static const PATH_PAYMENT = 'payment';
  static const PATH_ADDRESS = 'address';
  static const PATH_LINK_SHOPEE_ACCOUNT = 'linkShopeeAccount';
  static const PATH_NOTIFICATION_SETTING = 'notificationSetting';
  static const PATH_DISH_DETAIL = 'dishDetail';

  static void goToHomeScreen(BuildContext context) {
    context.go(PATH_HOME);
  }

  static void goToLinkShopeeAcount(BuildContext context) {
    context.go('$PATH_HOME/$PATH_LINK_SHOPEE_ACCOUNT');
  }

  static void goToNotificationSetting(BuildContext context) {
    context.go('$PATH_HOME/$PATH_NOTIFICATION_SETTING');
  }

  static void goToMyVoucherScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_MY_VOUCHER');
  }

  static void goToPaymentScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_PAYMENT');
  }

  static void goToAddressScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_ADDRESS');
  }

  static void goToInviteFriendScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_INVITE_FRIEND');
  }

  static void goToErrorScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_ERROR');
  }

  static void goToUserPolicyScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_USER_POLICY');
  }

  static void goToSettingsScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_SETTINGS');
  }

  static void goToShopDetailScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_SHOP_DETAIL');
  }

  static void goToShopDetailDishScreen(
      BuildContext context, ModelMenu menu, ModelShopDetail shop) {
    context.go('$PATH_HOME/$PATH_SHOP_DETAIL/$PATH_DISH_DETAIL', extra: {
      "menu": menu,
      "shop": shop,
    });
  }

  static void goToSettingsNotificationsSettingScreen(BuildContext context) {
    context.go('$PATH_HOME/$PATH_SETTINGS/$PATH_NOTIFICATION_SETTING');
  }

  static GoRouter getRouter() {
    return GoRouter(
      errorPageBuilder: (
        context,
        state,
      ) {
        return const MaterialPage(child: ScreenError());
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const ScreenSplash(),
        ),
        GoRoute(
            path: AppRouting.PATH_HOME,
            builder: (context, state) => const ScreenHome(),
            routes: [
              GoRoute(
                path: AppRouting.PATH_LINK_SHOPEE_ACCOUNT,
                builder: (context, state) => const ScreenLinkShopeeAcount(),
              ),
              GoRoute(
                path: AppRouting.PATH_NOTIFICATION_SETTING,
                builder: (context, state) => const ScreenNotificationSetting(),
              ),
              GoRoute(
                path: AppRouting.PATH_MY_VOUCHER,
                builder: (context, state) => const ScreenMyVoucher(),
              ),
              GoRoute(
                path: AppRouting.PATH_PAYMENT,
                builder: (context, state) => const ScreenPayment(),
              ),
              GoRoute(
                path: AppRouting.PATH_ADDRESS,
                builder: (context, state) => const ScreenAddress(),
              ),
              GoRoute(
                path: AppRouting.PATH_INVITE_FRIEND,
                builder: (context, state) => const ScreenInviteFriend(),
              ),
              GoRoute(
                path: AppRouting.PATH_USER_POLICY,
                builder: (context, state) => const ScreenUserPolicy(),
              ),
              GoRoute(
                  path: AppRouting.PATH_SHOP_DETAIL,
                  builder: (context, state) => const ScreenShopDetail(),
                  routes: [
                    GoRoute(
                      path: AppRouting.PATH_DISH_DETAIL,
                      builder: (context, state) {
                        return ScreenDishDetail(
                          menu: (state.extra as Map)["menu"],
                          shopDetail: (state.extra as Map)["shop"],
                        );
                      },
                    ),
                  ]),
              GoRoute(
                  path: AppRouting.PATH_SETTINGS,
                  builder: (context, state) => const ScreenSettings(),
                  routes: [
                    GoRoute(
                      path: AppRouting.PATH_NOTIFICATION_SETTING,
                      builder: (context, state) =>
                          const ScreenNotificationSetting(),
                    ),
                  ]),
            ]),
      ],
    );
  }
}
