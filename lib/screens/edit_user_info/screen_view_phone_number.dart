import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/button/app_select_button.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';

import '../../utils/common_import.dart';
import '../../utils/phone_utils.dart';
import '../../widgets/list/tile/edit_user_list_item.dart';

class ScreenViewPhoneNumber extends ConsumerStatefulWidget {
  const ScreenViewPhoneNumber({Key? key}) : super(key: key);

  @override
  _ScreenViewPhoneNumberState createState() => _ScreenViewPhoneNumberState();
}

class _ScreenViewPhoneNumberState extends ConsumerState<ScreenViewPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final state = ref.watch(StateMe.provider);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(title: 'phone_detail_title'.tr()),
            Expanded(
              child: Container(
                color: colors.homeDividerBg,
                child: Column(
                  children: [
                    const ListDivider(),
                    buildPhoneNumberRow(colors, state),
                    const SizedBox(
                      height: 20,
                    ),
                    buildUpdateButton(context)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUpdateButton(BuildContext context) {
    return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppSelectButton(
                        text: 'phone_detail_btn_update_phone'.tr(),
                        onClick: () {
                          AppRouting.goToUpdatePhoneScreen(context);
                        }),
                  );
  }

  Widget buildPhoneNumberRow(AppColor colors, StateMe state) {
    return AppGestureDetector(
                    onTap: () {},
                    child: Container(
                      color: colors.homeBg,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: EditUserListItem(
                          rightText: PhoneUtils.getDisplayPhone(
                              state.userProfile?.phones,
                              hide: true),
                          leftText: 'phone_number'.tr(),
                          showArrow: false,
                          keepPaddingRight: false,
                        ),
                      ),
                    ),
                  );
  }
}
