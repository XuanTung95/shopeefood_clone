import 'package:shopeefood_clone/models/model_shop_detail.dart';
import 'package:shopeefood_clone/models/model_voucher.dart';
import 'package:shopeefood_clone/screens/confirm_order/screen_confirm_order.dart';
import 'package:shopeefood_clone/screens/dish_detail/screen_dish_detail.dart';
import 'package:shopeefood_clone/screens/edit_user_info/screen_change_avatar.dart';
import 'package:shopeefood_clone/screens/edit_user_info/screen_update_phone.dart';
import 'package:shopeefood_clone/screens/edit_user_info/screen_update_user_name.dart';
import 'package:shopeefood_clone/screens/error/screen_error.dart';
import 'package:shopeefood_clone/screens/voucher_detail/screen_voucher_detail.dart';
import 'package:shopeefood_clone/screens/webview/screen_webview.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../models/model_menu_response.dart';
import '../screens/edit_user_info/screen_edit_user_info.dart';
import '../screens/edit_user_info/screen_update_email.dart';
import '../screens/edit_user_info/screen_view_phone_number.dart';
import '../screens/home/screen_home.dart';
import '../screens/splash/screen_splash.dart';

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
  static const _PATH_HOME = '/home';
  static const _PATH_ERROR = 'errorScreen';
  static const _PATH_SHOP_DETAIL = 'shopDetail';
  static const _PATH_USER_POLICY = 'userPolicy';
  static const _PATH_SETTINGS = 'settings';
  static const _PATH_INVITE_FRIEND = 'inviteFriend';
  static const _PATH_MY_VOUCHER = 'myVoucher';
  static const _PATH_PAYMENT = 'payment';
  static const _PATH_ADDRESS = 'address';
  static const _PATH_LINK_SHOPEE_ACCOUNT = 'linkShopeeAccount';
  static const _PATH_WEBVIEW = 'webview';
  static const _PATH_NOTIFICATION_SETTING = 'notificationSetting';
  static const _PATH_DISH_DETAIL = 'dishDetail';
  static const _PATH_CONFIRM_ORDER = 'confirmOrder';
  static const _PATH_VOUCHER_DETAIL = 'voucherDetail';
  static const _PATH_EDIT_USER_INFO = 'editUserInfo';
  static const _PATH_EDIT_AVATAR = 'editAvatar';
  static const _PATH_PHONE_DETAIL = 'phoneDetail';
  static const _PATH_UPDATE_PHONE = 'updatePhone';
  static const _PATH_UPDATE_NAME = 'updateName';
  static const _PATH_UPDATE_EMAIL = 'updateEmail';

  static const _NAME_SPLASH = 'splash';

  static const _NAME_HOME = 'home';

  static const _NAME_HOME_LINK_SHOPEE_ACCOUNT = 'home/linkAccount';

  static const _NAME_HOME_WEB_VIEW = 'home/webview';

  static const _NAME_HOME_NOTIFICATION_SETTING = 'home/notificationSetting';

  static const _NAME_HOME_MY_VOUCHER = 'home/myVoucher';

  static const _NAME_HOME_PAYMENT = 'home/payment';

  static const _NAME_HOME_EDIT_USER_INFO = 'home/editUserInfo';
  static const _NAME_HOME_EDIT_USER_INFO_AVATAR = 'home/editUserInfo/avatar';
  static const _NAME_HOME_EDIT_USER_INFO_PHONE_DETAIL =
      'home/editUserInfo/phoneDetail';
  static const _NAME_HOME_EDIT_USER_INFO_UPDATE_NAME =
      'home/editUserInfo/updateName';

  static const _NAME_HOME_EDIT_USER_INFO_UPDATE_EMAIL =
      'home/editUserInfo/updateEmail';

  static const _NAME_HOME_EDIT_USER_INFO_UPDATE_PHONE =
      'home/editUserInfo/phoneDetail/updatePhone';

  static const _NAME_HOME_ADDRESS = 'home/address';

  static const _NAME_HOME_INVITE_FRIEND = 'home/inviteFriend';

  static const _NAME_HOME_USER_POLICY = 'home/userPolicy';

  static const _NAME_HOME_SHOP_DETAIL = 'home/shopDetail';

  static const _NAME_HOME_MY_VOUCHER_VOUCHER_DETAIL =
      '$_NAME_HOME_MY_VOUCHER/voucherDetail';

  static const _NAME_HOME_SHOP_DETAIL_DISH_DETAIL =
      '$_NAME_HOME_SHOP_DETAIL/dishDetail';
  static const _NAME_HOME_SHOP_DETAIL_DISH_DETAIL_CONFIRM_ORDER =
      '$_NAME_HOME_SHOP_DETAIL/dishDetail/$_PATH_CONFIRM_ORDER';
  static const _NAME_HOME_SHOP_DETAIL_CONFIRM_ORDER =
      '$_NAME_HOME_SHOP_DETAIL/$_PATH_CONFIRM_ORDER';

  static const _NAME_HOME_SETTINGS = 'home/setting';

  static const _NAME_HOME_SETTINGS_NOTIFICATION_SETTING =
      '$_NAME_HOME_SETTINGS/notificationSetting';

  static void goToHomeScreen(BuildContext context) {
    context.goNamed(_NAME_HOME);
  }

  static void goToLinkShopeeAcount(BuildContext context) {
    context.goNamed(_NAME_HOME_LINK_SHOPEE_ACCOUNT);
  }

  static void goToNotificationSetting(BuildContext context) {
    context.goNamed(_NAME_HOME_NOTIFICATION_SETTING);
  }

  static void goToMyVoucherScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_MY_VOUCHER);
  }

  static void goToMyVoucherVoucherDetailScreen(
      BuildContext context, ModelVoucher voucher) {
    context.goNamed(_NAME_HOME_MY_VOUCHER_VOUCHER_DETAIL, extra: voucher);
  }

  static void goToPaymentScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_PAYMENT);
  }

  static void goToAddressScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_ADDRESS);
  }

  static void goToInviteFriendScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_INVITE_FRIEND);
  }

  static void goToErrorScreen(BuildContext context) {
    context.go('$_PATH_HOME/$_PATH_ERROR');
  }

  static void goToUserPolicyScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_USER_POLICY);
  }

  static void goToSettingsScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_SETTINGS);
  }

  static void goToShopDetailScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_SHOP_DETAIL);
  }

  static void goToShopDetailConfirmOrderScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_SHOP_DETAIL_CONFIRM_ORDER);
  }

  static void goToEditUserInfoScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_EDIT_USER_INFO);
  }

  static void goToEditAvatarScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_EDIT_USER_INFO_AVATAR);
  }

  static void goToPhoneDetailScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_EDIT_USER_INFO_PHONE_DETAIL);
  }

  static void goToUpdatePhoneScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_EDIT_USER_INFO_UPDATE_PHONE);
  }

  static void goToShopDetailDishDetailConfirmOrderScreen(
      BuildContext context, ModelMenu menu, ModelShopDetail shop) {
    context.goNamed(_NAME_HOME_SHOP_DETAIL_DISH_DETAIL_CONFIRM_ORDER, extra: {
      "menu": menu,
      "shop": shop,
    });
  }

  static void goToShopDetailDishScreen(
      BuildContext context, ModelMenu menu, ModelShopDetail shop) {
    context.goNamed(_NAME_HOME_SHOP_DETAIL_DISH_DETAIL, extra: {
      "menu": menu,
      "shop": shop,
    });
  }

  static void goToHomeWebViewScreen(
      {required BuildContext context,
      required String title,
      required String url}) {
    context.goNamed(_NAME_HOME_WEB_VIEW, extra: {
      "title": title,
      "url": url,
    });
  }

  static void goToSettingsNotificationsSettingScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_SETTINGS_NOTIFICATION_SETTING);
  }

  static void goToUpdateNameScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_EDIT_USER_INFO_UPDATE_NAME);
  }

  static void goToUpdateEmailScreen(BuildContext context) {
    context.goNamed(_NAME_HOME_EDIT_USER_INFO_UPDATE_EMAIL);
  }


  static GoRouter getRouter() {
    return GoRouter(
      // redirect: (state) {
      //   // logger.d('Redirect: ${state.path}');
      // },
      debugLogDiagnostics: true,
      errorPageBuilder: (
        context,
        state,
      ) {
        return const MaterialPage(child: ScreenError());
      },
      routes: [
        GoRoute(
          path: '/',
          name: _NAME_SPLASH,
          builder: (context, state) => const ScreenSplash(),
        ),
        GoRoute(
            path: AppRouting._PATH_HOME,
            name: _NAME_HOME,
            builder: (context, state) => const ScreenHome(),
            routes: [
              GoRoute(
                name: _NAME_HOME_EDIT_USER_INFO,
                path: AppRouting._PATH_EDIT_USER_INFO,
                builder: (context, state) => const ScreenEditUserInfo(),
                routes: [
                  GoRoute(
                    name: _NAME_HOME_EDIT_USER_INFO_AVATAR,
                    path: AppRouting._PATH_EDIT_AVATAR,
                    builder: (context, state) => const ScreenChangeAvatar(),
                  ),
                  GoRoute(
                    name: _NAME_HOME_EDIT_USER_INFO_UPDATE_NAME,
                    path: AppRouting._PATH_UPDATE_NAME,
                    builder: (context, state) => const ScreenUpdateUserName(),
                  ),
                  GoRoute(
                    name: _NAME_HOME_EDIT_USER_INFO_UPDATE_EMAIL,
                    path: AppRouting._PATH_UPDATE_EMAIL,
                    builder: (context, state) => const ScreenUpdateEmail(),
                  ),
                  GoRoute(
                    name: _NAME_HOME_EDIT_USER_INFO_PHONE_DETAIL,
                    path: AppRouting._PATH_PHONE_DETAIL,
                    builder: (context, state) => const ScreenViewPhoneNumber(),
                    routes: [
                      GoRoute(
                        name: _NAME_HOME_EDIT_USER_INFO_UPDATE_PHONE,
                        path: AppRouting._PATH_UPDATE_PHONE,
                        builder: (context, state) => const ScreenUpdatePhone(),
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                name: _NAME_HOME_WEB_VIEW,
                path: AppRouting._PATH_WEBVIEW,
                builder: (context, state) {
                  if (state.extra is Map) {
                    return ScreenWebView(
                        title: (state.extra as Map)["title"] ?? '',
                        url: (state.extra as Map)["url"]);
                  }
                  return const ScreenWebView(
                    title: "",
                    url: "",
                  );
                },
              ),
              GoRoute(
                name: _NAME_HOME_LINK_SHOPEE_ACCOUNT,
                path: AppRouting._PATH_LINK_SHOPEE_ACCOUNT,
                builder: (context, state) => const ScreenLinkShopeeAcount(),
              ),
              GoRoute(
                name: _NAME_HOME_NOTIFICATION_SETTING,
                path: AppRouting._PATH_NOTIFICATION_SETTING,
                builder: (context, state) => const ScreenNotificationSetting(),
              ),
              GoRoute(
                  name: _NAME_HOME_MY_VOUCHER,
                  path: AppRouting._PATH_MY_VOUCHER,
                  builder: (context, state) => const ScreenMyVoucher(),
                  routes: [
                    GoRoute(
                      name: _NAME_HOME_MY_VOUCHER_VOUCHER_DETAIL,
                      path: AppRouting._PATH_VOUCHER_DETAIL,
                      builder: (context, state) => ScreenVoucherDetail(
                        voucher: state.extra is ModelVoucher
                            ? (state.extra as ModelVoucher)
                            : null,
                      ),
                    ),
                  ]),
              GoRoute(
                name: _NAME_HOME_PAYMENT,
                path: AppRouting._PATH_PAYMENT,
                builder: (context, state) => const ScreenPayment(),
              ),
              GoRoute(
                name: _NAME_HOME_ADDRESS,
                path: AppRouting._PATH_ADDRESS,
                builder: (context, state) => const ScreenAddress(),
              ),
              GoRoute(
                name: _NAME_HOME_INVITE_FRIEND,
                path: AppRouting._PATH_INVITE_FRIEND,
                builder: (context, state) => const ScreenInviteFriend(),
              ),
              GoRoute(
                name: _NAME_HOME_USER_POLICY,
                path: AppRouting._PATH_USER_POLICY,
                builder: (context, state) => const ScreenUserPolicy(),
              ),
              GoRoute(
                  name: _NAME_HOME_SHOP_DETAIL,
                  path: AppRouting._PATH_SHOP_DETAIL,
                  builder: (context, state) => const ScreenShopDetail(),
                  routes: [
                    GoRoute(
                        name: _NAME_HOME_SHOP_DETAIL_DISH_DETAIL,
                        path: AppRouting._PATH_DISH_DETAIL,
                        builder: (context, state) {
                          if (state.extra is Map) {
                            return ScreenDishDetail(
                              menu: (state.extra as Map)["menu"],
                              shopDetail: (state.extra as Map)["shop"],
                            );
                          } else {
                            return const ScreenDishDetail();
                          }
                        },
                        routes: [
                          GoRoute(
                            name:
                                _NAME_HOME_SHOP_DETAIL_DISH_DETAIL_CONFIRM_ORDER,
                            path: AppRouting._PATH_CONFIRM_ORDER,
                            builder: (context, state) {
                              return const ScreenConfirmOrder();
                            },
                          ),
                        ]),
                    GoRoute(
                      name: _NAME_HOME_SHOP_DETAIL_CONFIRM_ORDER,
                      path: AppRouting._PATH_CONFIRM_ORDER,
                      builder: (context, state) {
                        return const ScreenConfirmOrder();
                      },
                    ),
                  ]),
              GoRoute(
                  name: _NAME_HOME_SETTINGS,
                  path: AppRouting._PATH_SETTINGS,
                  builder: (context, state) => const ScreenSettings(),
                  routes: [
                    GoRoute(
                      name: _NAME_HOME_SETTINGS_NOTIFICATION_SETTING,
                      path: AppRouting._PATH_NOTIFICATION_SETTING,
                      builder: (context, state) =>
                          const ScreenNotificationSetting(),
                    ),
                  ]),
            ]),
      ],
    );
  }
}
