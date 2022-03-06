import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';
import '../../widgets/divider/list_divider.dart';
import '../../widgets/list/tile/simple_list_item.dart';
import '../../widgets/list/tile/title_list_item.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DividerWidget(
              child: AppBarDefault(
                title: 'general_setting'.tr(),
              ),
            ),
            Container(
                color: colors.homeDividerBg,
                child: TitleListItem(
                  title: 'account_user_settings'.tr(),
                )),
            DividerWidget(
              child: AppGestureDetector(
                onTap: () {},
                child: SimpleListItem(
                  title: 'account_information'.tr(),
                ),
              ),
            ),
            DividerWidget(
                child: AppGestureDetector(
              onTap: () {},
              child: SimpleListItem(
                title: 'account_password'.tr(),
              ),
            )),
            Container(
                color: colors.homeDividerBg,
                child: TitleListItem(
                  title: 'rebranding.app_settings'.tr(),
                )),
            DividerWidget(
              child: AppGestureDetector(
                onTap: () {},
                child: SimpleListItem(
                  title: 'account_change_language'.tr(),
                ),
              ),
            ),
            DividerWidget(
              child: AppGestureDetector(
                onTap: () {
                  AppRouting.goToSettingsNotificationsSettingScreen(context);
                },
                child: SimpleListItem(
                  title: 'notification_setting_title'.tr(),
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: colors.homeDividerBg,
            ))
          ],
        ),
      ),
    );
  }
}
