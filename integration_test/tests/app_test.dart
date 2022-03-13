import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shopeefood_clone/screens/address/screen_address.dart';
import 'package:shopeefood_clone/screens/edit_user_info/screen_edit_user_info.dart';
import 'package:shopeefood_clone/screens/home/local/location/deliver_to_widget.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/like/like_tab.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/me/me_tab.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/notifications/noti_tab.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/order/search_filter_row.dart';
import 'package:shopeefood_clone/screens/invite/screen_invite_friend.dart';
import 'package:shopeefood_clone/screens/link_account/screen_link_shopee_acount.dart';
import 'package:shopeefood_clone/screens/my_voucher/screen_my_voucher.dart';
import 'package:shopeefood_clone/screens/payment/screen_payment.dart';
import 'package:shopeefood_clone/screens/screen_detail/screen_detail.dart';
import 'package:shopeefood_clone/screens/settings/screen_settings.dart';
import 'package:shopeefood_clone/screens/user_policy/screen_user_policy.dart';
import 'package:shopeefood_clone/screens/webview/screen_webview.dart';
import 'package:shopeefood_clone/utils/app_config.dart';
import 'package:shopeefood_clone/utils/app_labels.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/bottom_bar/home_bottom_nav_bar.dart';
import 'package:shopeefood_clone/widgets/drag/drag_ads_widget.dart';
import 'package:shopeefood_clone/widgets/grid/home_category_grid.dart';
import 'package:shopeefood_clone/widgets/list/most_ordered_scroll.dart';
import 'package:shopeefood_clone/widgets/list/tile/icon_title_desc_widget.dart';
import 'package:shopeefood_clone/widgets/list/tile/order_item_widget.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_delivery_list_item.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_delivery_type_most_order.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_draft_cart.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_notification_widget.dart';
import 'package:shopeefood_clone/widgets/me/bind_shopee_acount_widget.dart';
import 'package:shopeefood_clone/widgets/rating/rating_stars_widget.dart';
import 'package:shopeefood_clone/widgets/tab_bar/app_tabbar.dart';
import 'package:shopeefood_clone/widgets/tab_bar/my_order_tabbar.dart';
import '../utils/common_finder.dart';
import '../utils/extension/tester_extension.dart';
import '../utils/app_behavior.dart';

void main() {
  logger.d("Start Integration Test");
  AppConfig.testConfig = TestConfig.testing();
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  if (binding is LiveTestWidgetsFlutterBinding) {
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
  }
  const bool skipAll = false;
  final appBehavior = AppBehavior();
  group('smoke test', () {
    testWidgets(
      'Tap on the bottom navigation button, check each tab is displayed',
      (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        final findTabButton = find.byType(HomeBotNavTabItem);
        // check nav bar is displayed
        expect(findTabButton, findsNWidgets(5));
        expect(
            find.descendant(
                of: findTabButton, matching: find.text('tab_home_title'.tr())),
            findsOneWidget);
        expect(CommonFinder.homeNavTabMyOrder, findsOneWidget);
        expect(CommonFinder.homeNavTabLike, findsOneWidget);
        expect(CommonFinder.homeNavTabNotifications, findsOneWidget);
        expect(CommonFinder.homeNavTabMe, findsOneWidget);
        // click tab icon
        for (int i = 0; i < 5; i++) {
          await tester.tap(
            findTabButton.at(i),
          );
          await tester.pumpAndSettle();
          switch (i) {
            case 0:
              expect(find.text('home_delivery_to'.tr()), findsOneWidget);
              break;
            case 1:
              final findOrderTabBar = find.byType(MyOrderTabBar);
              expect(
                  find.descendant(
                      of: findOrderTabBar,
                      matching: find.text('general_ongoing'.tr())),
                  findsOneWidget);
              expect(
                  find.descendant(
                      of: findOrderTabBar,
                      matching: find.text('general_history'.tr())),
                  findsOneWidget);
              expect(
                  find.descendant(
                      of: findOrderTabBar, matching: find.text('to_rate'.tr())),
                  findsOneWidget);
              expect(
                  find.descendant(
                      of: findOrderTabBar,
                      matching: find.text('general_cart'.tr())),
                  findsOneWidget);
              break;
            case 2:
              expect(find.text('rebranding.likes_tab_title'.tr()),
                  findsNWidgets(2));
              expect(
                  find.descendant(
                      of: find.byType(AppTabBar),
                      matching: find.text('latest'.tr())),
                  findsOneWidget);
              expect(
                  find.descendant(
                      of: find.byType(AppTabBar),
                      matching: find.text('search.nearby'.tr())),
                  findsOneWidget);
              expect(
                  find.descendant(
                      of: find.byType(AppTabBar), matching: find.byType(Text)),
                  findsNWidgets(2));
              break;
            case 3:
              expect(find.text('rebranding.notification'.tr()), findsOneWidget);
              break;
            case 4:
              expect(find.text('user_voucher_header'.tr()), findsOneWidget);
              break;
          }
        }
        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'click home square, check webview page is displayed',
      (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        final findSquareItems = find.byType(HomeCategoryItem);
        await tester.pumpAndSettle();
        final items = tester.widgetList(findSquareItems);
        expect(items.length > 5, true, reason: "Check Square item count");
        for (int i = 0; i < items.length; i++) {
          expect(findSquareItems, findsWidgets);
          await tester.ensureVisible(
            findSquareItems.at(i),
          );
          await tester.pumpAndSettle();
          // tab on home square item
          await tester.tap(findSquareItems.at(i));
          await tester.pumpAndSettle();
          // check webview page is displayed
          expect(find.byType(ScreenWebView), findsOneWidget);
          expect(CommonFinder.appBarBackButton, findsOneWidget);
          // back to home page
          await tester.tap(CommonFinder.appBarBackButton);
          await tester.pumpAndSettle();
          expect(find.byType(ScreenWebView), findsNothing);
          expect(CommonFinder.appBarBackButton, findsNothing);
          expect(findSquareItems, findsWidgets);
        }
        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'click drag ads, check detail page is displayed',
      (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        final findDragAds = find.byType(DragAdsWidget);
        await tester.waitForWidget(findDragAds);
        expect(findDragAds, findsOneWidget);
        final findCloseDragAds =
            find.bySemanticsLabel(AppLabels.CLOSE_DRAG_ADS_BUTTON);
        expect(findCloseDragAds, findsOneWidget);
        // click on ads
        await tester.tap(findDragAds);
        await tester.pumpAndSettle();
        // check open detail screen
        expect(findDragAds, findsNothing);
        await checkShopDetailPageIsOpened(tester);
        expect(findDragAds, findsOneWidget);
        // click close ads
        expect(findCloseDragAds, findsOneWidget);
        await tester.tap(findCloseDragAds);
        await tester.pumpAndSettle();
        // check ads is dismissed
        expect(findCloseDragAds, findsNothing);
        expect(
            find.descendant(
              of: findDragAds,
              matching: find.byType(GestureDetector),
            ),
            findsNothing);
        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'click home deliver to, check Delivery Address is displayed',
      (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        // check delivery to is displayed
        expect(find.byType(DeliverToWidget), findsOneWidget);
        final findDeliverToText = find.text('home_delivery_to'.tr());
        expect(findDeliverToText, findsOneWidget);
        final currLocationText = find
            .descendant(
                of: find.byType(DeliverToWidget), matching: find.byType(Text))
            .last;
        expect(currLocationText, findsOneWidget);
        expect((currLocationText.evaluate().first.widget as Text).data,
            '[test address]');
        // open delivery address screen
        await tester.tap(findDeliverToText);
        await tester.pumpAndSettle();
        expect(find.byType(ScreenAddress), findsOneWidget);
        expect(find.byType(DeliverToWidget), findsNothing);
        expect(find.byType(AppBarDefault), findsOneWidget);
        final appBarBackBtn = CommonFinder.appBarBackButton;
        expect(appBarBackBtn, findsOneWidget);

        final titleText = find.descendant(
            of: find.byType(AppBarDefault),
            matching: find.text('delivery_address_title'.tr()));
        expect(titleText, findsOneWidget);

        final textAddHomeAddress =
            find.text('delivery_address_add_home_address'.tr());
        expect(textAddHomeAddress, findsOneWidget);

        final textAddWorkAddress =
            find.text('delivery_address_add_work_address'.tr());
        expect(textAddWorkAddress, findsOneWidget);

        final addressItems = find.byType(ViewAddressItem);
        expect(addressItems, findsNWidgets(3));

        await tester.tap(appBarBackBtn);
        await tester.pumpAndSettle();
        expect(find.byType(ScreenAddress), findsNothing);
        expect(textAddHomeAddress, findsNothing);
        expect(textAddWorkAddress, findsNothing);

        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'click My order tab, click on tab bar, check each tab is displayed',
      (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        // click my order tab
        expect(CommonFinder.homeNavTabMyOrder, findsOneWidget);
        await tester.tap(CommonFinder.homeNavTabMyOrder);
        await tester.pumpAndSettle();
        // check on going order
        final tabItemOnGoing = find.descendant(
            of: find.byType(MyOrderTabBar),
            matching: find.text('general_ongoing'.tr()));
        await tester.tap(tabItemOnGoing);
        await tester.pumpAndSettle();
        expect(find.text("no_on_going_orders".tr()), findsOneWidget);
        expect(
            find.text("no_on_going_orders_description".tr()), findsOneWidget);

        // history order
        final tabItemHistory = find.descendant(
            of: find.byType(MyOrderTabBar),
            matching: find.text('general_history'.tr()));
        await tester.tap(tabItemHistory);
        await tester.pumpAndSettle();
        await tester.waitForWidget(
          find.byType(OrderItemWidget),
        );
        expect(find.byType(OrderItemWidget), findsWidgets);
        await tester.pumpAndSettle();
        final items = find.byType(OrderItemWidget).evaluate();
        for (var item in items) {
          await tester.pumpAndSettle();
          await tester.ensureVisible(find.byWidget(item.widget));
          final center = tester.getCenter(find.byWidget(item.widget));
          await tester.tapAt(center);
          await checkShopDetailPageIsOpened(tester);
        }
        // to rate order
        final tabItemToRate = find.descendant(
            of: find.byType(MyOrderTabBar),
            matching: find.text('to_rate'.tr()));
        await tester.tap(tabItemToRate);
        await tester.pumpAndSettle();
        expect(find.text("history_no_order".tr()), findsWidgets);
        await tester.pumpAndSettle();
        // cart
        final tabItemCart = find.descendant(
            of: find.byType(MyOrderTabBar),
            matching: find.text('general_cart'.tr()));
        await tester.tap(tabItemCart);
        await tester.pumpAndSettle();
        await tester.waitForWidget(
          find.byType(ViewDraftCart),
        );
        expect(find.byType(ViewDraftCart), findsWidgets);
        await tester.pumpAndSettle();
        final cartItems = find.byType(ViewDraftCart).evaluate();
        for (var item in cartItems) {
          await tester.pumpAndSettle();
          await tester.ensureVisible(find.byWidget(item.widget));
          final center = tester.getCenter(find.byWidget(item.widget));
          await tester.tapAt(center);
          await checkShopDetailPageIsOpened(tester);
        }

        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'click Likes tab, check open detail screen when click on items',
      (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        // check delivery to is displayed
        expect(CommonFinder.homeNavTabLike, findsOneWidget);
        await tester.tap(CommonFinder.homeNavTabLike);
        await tester.pumpAndSettle();
        final findLikeTitle = find.descendant(
          of: find.byType(TabLikeHome),
          matching: find.text(
            'rebranding.likes_tab_title'.tr(),
          ),
        );
        expect(
          findLikeTitle,
          findsOneWidget,
        );
        final findLatest = find.descendant(
          of: find.byType(AppTabBar),
          matching: find.text(
            'latest'.tr(),
          ),
        );
        expect(
          findLatest,
          findsOneWidget,
        );

        final findNearby = find.descendant(
          of: find.byType(AppTabBar),
          matching: find.text(
            'search.nearby'.tr(),
          ),
        );
        expect(
          findNearby,
          findsOneWidget,
        );
        // select category
        final findSearchFilter = find.descendant(of: find.byType(SearchFilterRow), matching: find.byType(Text));
        expect(findSearchFilter, findsOneWidget);
        await tester.tap(findSearchFilter);
        await tester.pumpAndSettle();
        final serviceFilter = find.byKey(const ValueKey("services"));
        expect(serviceFilter, findsOneWidget);
        final filters = find.descendant(of: serviceFilter, matching: find.byType(Text));
        expect(filters, findsWidgets);
        filters.evaluate().forEach((item) {
          print('${(item.widget as Text).data}');
        });
        await tester.tap(filters.first);
        await tester.pumpAndSettle();
        expect(serviceFilter, findsNothing);
        expect(serviceFilter, findsNothing);
        expect(filters, findsNothing);
        // most ordered
        expect(find.byType(MostOrdersScroll), findsOneWidget);
        expect(find.byType(ViewDeliveryTypeMostOrder), findsWidgets);
        expect(find.byType(ViewDeliveryTypeVerticalList), findsWidgets);
        // click on liked item
        final likedItems =find.byType(ViewDeliveryTypeVerticalList).evaluate();
        for (var item in likedItems) {
          final findCurr = find.byWidget(item.widget);
          await tester.ensureVisible(findCurr);
          await tester.tap(findCurr);
          await tester.pumpAndSettle();
          await checkShopDetailPageIsOpened(tester);
        }

        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'click Notifications tab, check open detail screen when click on items',
          (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        // check delivery to is displayed
        expect(CommonFinder.homeNavTabNotifications, findsOneWidget);
        await tester.tap(CommonFinder.homeNavTabNotifications);
        await tester.pumpAndSettle();
        final findNotificationTitle = find.descendant(
          of: find.byType(TabNotificationHome),
          matching: find.text(
            'rebranding.notification'.tr(),
          ),
        );
        expect(
          findNotificationTitle,
          findsOneWidget,
        );

        expect(find.byType(IconTitleDescWidget), findsNWidgets(2));
        expect(find.descendant(of: find.byType(IconTitleDescWidget), matching: find.text('notification_now_promotion'.tr())), findsOneWidget);
        expect(find.descendant(of: find.byType(IconTitleDescWidget), matching: find.text('notification_news'.tr())), findsOneWidget);
        expect(find.text('key_updates'.tr()), findsOneWidget);

        expect(find.byType(ViewNotificationWidget), findsWidgets);
        final notificationItems = find.byType(ViewNotificationWidget).evaluate();

        for (var item in notificationItems) {
          final findCurr = find.byWidget(item.widget);
          await tester.ensureVisible(findCurr);
          await tester.tap(findCurr);
          await tester.pumpAndSettle();
          await checkShopDetailPageIsOpened(tester);
        }

        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'click Me tab, check open detail screen when click on items',
          (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        // check delivery to is displayed
        expect(CommonFinder.homeNavTabMe, findsOneWidget);
        await tester.tap(CommonFinder.homeNavTabMe);
        await tester.pumpAndSettle();
        final findMeTab = find.byType(TabMeHomeView);
        expect(findMeTab, findsOneWidget);
        // avatar
        expect(find.byType(AvatarUserNameWidget), findsOneWidget);
        expect(find.descendant(of: find.byType(AvatarUserNameWidget), matching: find.text("Xuan Tung")), findsOneWidget);
        await tester.tap(find.byType(AvatarUserNameWidget), warnIfMissed: false);
        await tester.pumpAndSettle();
        expect(find.byType(ScreenEditUserInfo), findsOneWidget);
        expect(CommonFinder.appBarBackButton, findsOneWidget);
        await tester.tap(CommonFinder.appBarBackButton);
        await tester.pumpAndSettle();
        expect(find.byType(ScreenEditUserInfo), findsNothing);
        // Bind account
        final findBindAccount = find.byType(BindShopeeAcountWidget);
        expect(findBindAccount, findsOneWidget);
        expect(find.descendant(of: findBindAccount, matching: find.text('bind'.tr())), findsOneWidget);
        // my voucher
        await testMeTabClickItem(tester, 'user_voucher_header'.tr(), ScreenMyVoucher);
        // My coins
        await testMeTabClickItem(tester, 'coins_my_shopee_coin'.tr(), ScreenLinkShopeeAcount);
        // payments
        await testMeTabClickItem(tester, 'payment_title'.tr(), ScreenPayment);
        // address
        await testMeTabClickItem(tester, 'general_address'.tr(), ScreenAddress);
        // invite friends
        await testMeTabClickItem(tester, 'me_invite_friend'.tr(), ScreenInviteFriend);
        // help
        expect(find.text('help_center'.tr()), findsOneWidget);
        // shop owner
        expect(find.text('me_for_shop_owner'.tr()), findsOneWidget);
        // user policy
        await testMeTabClickItem(tester, 'user_policy'.tr(), ScreenUserPolicy);
        // settings
        await testMeTabClickItem(tester, 'account_settings'.tr(), ScreenSettings);
        await tester.scrollUntilVisible(find.text('logout'.tr()), 100);
        // about
        expect(find.text('about_now_vn'.tr()), findsOneWidget);
        // logout
        expect(find.text('logout'.tr()), findsOneWidget);

        debugDefaultTargetPlatformOverride = null;
      },
      skip: skipAll,
    );

    testWidgets(
      'don\'t end the test',
      (WidgetTester tester) async {
        await appBehavior.openAppAndGoToHomeScreen(tester);
        await Future.delayed(const Duration(days: 1));
      },
      skip: true,
    );
  });
}

Future<void> testMeTabClickItem(WidgetTester tester, String text, Type openScreen) async {
  final findText = find.text(text);
  expect(findText, findsOneWidget);
  await tester.tap(findText);
  await tester.pumpAndSettle();
  expect(find.byType(openScreen), findsOneWidget);
  await tester.tap(CommonFinder.appBarBackButton);
  await tester.pumpAndSettle();
  expect(find.byType(openScreen), findsNothing);
}

Future<void> checkShopDetailPageIsOpened(WidgetTester tester) async {
  await tester.pumpAndSettle();
  expect(find.byType(ScreenShopDetail), findsOneWidget);
  await tester.waitForWidget(CommonFinder.appBarBackButton);
  final ratingStar = find.byType(RatingStarWidget);
  await tester.waitForWidget(ratingStar);
  expect(ratingStar, findsOneWidget);
  await tester.tap(CommonFinder.appBarBackButton, warnIfMissed: false);
  await tester.pumpAndSettle();
  expect(find.byType(ScreenShopDetail), findsNothing);
  expect(CommonFinder.appBarBackButton, findsNothing);
}
