import 'package:shopeefood_clone/widgets/divider/list_divider.dart';

import '../../utils/common_import.dart';
import '../../widgets/app_bar/app_bar_default.dart';
import '../../widgets/switch/setting_switch_widget.dart';

class ScreenNotificationSetting extends StatefulWidget {
  const ScreenNotificationSetting({Key? key}) : super(key: key);

  @override
  _ScreenNotificationSettingState createState() =>
      _ScreenNotificationSettingState();
}

class _ScreenNotificationSettingState extends State<ScreenNotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(title: 'notification_setting_title'.tr()),
            const ListDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SettingSwitchWidget(
                onChange: (value) {},
                initValue: true,
                title: 'notification_setting_push_notification'.tr(),
                description:
                    'notification_setting_push_notification_description'.tr(),
              ),
            ),
            const ListDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SettingSwitchWidget(
                onChange: (value) {},
                initValue: true,
                title: 'notification_now_promotion'.tr(),
                description:
                    'Notify me when there are promotions in the selected province/city',
              ),
            ),
            Expanded(
                child: Container(
              color: AppColor(context).homeDividerBg,
            )),
          ],
        ),
      ),
    );
  }
}