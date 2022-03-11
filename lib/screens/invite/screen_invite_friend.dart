import '../../utils/common_import.dart';
import '../../widgets/app_bar/app_bar_default.dart';
import '../../widgets/button/app_gesture_detector.dart';
import '../../widgets/divider/list_divider.dart';
import '../../widgets/list/tile/divider_widget.dart';
import '../../widgets/list/tile/simple_list_item.dart';

class ScreenInviteFriend extends StatelessWidget {
  const ScreenInviteFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildAppBar(),
            const ListDivider(),
            DividerWidget(
                child: AppGestureDetector(
                  onTap: () {  },
                  child: SimpleListItem(
                    title: 'send_to_sms'.tr(),
                  ),
                )),
            DividerWidget(
                child: AppGestureDetector(
                  onTap: () {  },
                  child: SimpleListItem(
                    title: 'send_to_email'.tr(),
                  ),
                )),
            DividerWidget(
              child: AppGestureDetector(
                onTap: () {  },
                child: SimpleListItem(
                  title: 'copy_download_app_link'.tr(),
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

  DividerWidget buildAppBar() {
    return DividerWidget(
            child: AppBarDefault(
              title: 'me_invite_friend'.tr(),
            ),
          );
  }
}