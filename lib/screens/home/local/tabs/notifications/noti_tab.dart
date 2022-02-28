import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/vm/global/state_notifications.dart';

import '../../../../../utils/common_import.dart';
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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'rebranding.notification'.tr(),
                  style: textStyle.appBarText,
                ),
              ),
              GestureDetector(
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
        Divider(
          thickness: 0.5,
          height: 0,
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: IconTitleDescWidget(
                  asset: Assets.images.assetsImgNotificationtabPromotion.path,
                  title: 'notification_now_promotion'.tr(),
                  desc: 'Tặng bạn 70K - Ăn trưa cùng ShopeeFood',
                ),
              ),
              SliverToBoxAdapter(
                child: Divider(
                  thickness: 0.5,
                  height: 0.5,
                ),
              ),
              SliverToBoxAdapter(
                child: IconTitleDescWidget(
                  asset: Assets.images.assetsImgNotificationtabNews.path,
                  title: 'notification_news'.tr(),
                  desc: 'Nhấn vào đây để lấy 200 xu siêu dễ 🎁',
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: colors.homeDividerBg,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    children: [
                      Text(
                        'key_updates'.tr(),
                        style: textStyle.bodyMedium
                            .copyWith(color: textStyle.textColorGrey),
                      ),
                      Spacer(),
                      Text('notification_now_read_all'.tr() + ' (${state.notifications.length})',
                          style: textStyle.bodyMedium
                              .copyWith(color: colors.primaryColor)),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final item = state.notifications[index];
                    return Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300, width: 0.5))),
                        child: ViewNotificationWidget(notification: item,));
                  },
                  childCount: state.notifications.length
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
