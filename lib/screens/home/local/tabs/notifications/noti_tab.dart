import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/vm/global/state_notifications.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../widgets/button/app_gesture_detector.dart';
import '../../../../../widgets/list/tile/icon_title_desc_widget.dart';
import '../../../../../widgets/list/tile/view_notification_widget.dart';

class TabNotificationHome extends ConsumerStatefulWidget {
  const TabNotificationHome({Key? key}) : super(key: key);

  @override
  _NotificationTabState createState() => _NotificationTabState();
}

class _NotificationTabState extends ConsumerState<TabNotificationHome> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateNotifications.provider);
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return SafeArea(
      child: Column(
        children: [
          DividerWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'rebranding.notification'.tr(),
                      style: textStyle.appBarText,
                    ),
                  ),
                  AppGestureDetector(
                    onTap: () {
                      AppRouting.goToNotificationSetting(context);
                    },
                    child: Image.asset(
                      Assets.images.assetsImgNotificationtabSettings.path,
                      width: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: AppGestureDetector(
                    onTap: () {},
                    child: IconTitleDescWidget(
                      asset:
                          Assets.images.assetsImgNotificationtabPromotion.path,
                      title: 'notification_now_promotion'.tr(),
                      desc: 'Tặng bạn 70K - Ăn trưa cùng ShopeeFood',
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Divider(
                    thickness: 0.5,
                    height: 0.5,
                  ),
                ),
                SliverToBoxAdapter(
                  child: AppGestureDetector(
                    onTap: () {
                    },
                    child: IconTitleDescWidget(
                      asset: Assets.images.assetsImgNotificationtabNews.path,
                      title: 'notification_news'.tr(),
                      desc: 'Nhấn vào đây để lấy 200 xu siêu dễ 🎁',
                    ),
                  ),
                ),
                buildNotificationCount(colors, textStyle, state),
                buildListNotification(state),
              ],
            ),
          )
        ],
      ),
    );
  }

  SliverToBoxAdapter buildNotificationCount(AppColor colors, AppTextStyle textStyle, StateNotifications state) {
    return SliverToBoxAdapter(
                child: Container(
                  color: colors.homeDividerBg,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    children: [
                      Text(
                        'key_updates'.tr(),
                        style: textStyle.bodyMedium
                            .copyWith(color: textStyle.textColorGrey),
                      ),
                      const Spacer(),
                      Text(
                          'notification_now_read_all'.tr() +
                              ' (${state.notifications.data.length})',
                          style: textStyle.bodyMedium
                              .copyWith(color: colors.primaryColor)),
                    ],
                  ),
                ),
              );
  }

  SliverList buildListNotification(StateNotifications state) {
    return SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final item = state.notifications.data[index];
                  return DividerWidget(
                      child: AppGestureDetector(
                        onTap: () {
                          AppRouting.goToShopDetailScreen(context);
                        },
                        child: ViewNotificationWidget(
                    notification: item,
                  ),
                      ));
                }, childCount: state.notifications.data.length),
              );
  }
}