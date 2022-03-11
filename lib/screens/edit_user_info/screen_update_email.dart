import 'package:email_validator/email_validator.dart';
import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/button/app_select_button.dart';

import '../../utils/common_import.dart';
import '../../widgets/list/tile/edit_user_list_item.dart';

class ScreenUpdateEmail extends ConsumerStatefulWidget {
  const ScreenUpdateEmail({Key? key}) : super(key: key);

  @override
  _ScreenUpdateEmailState createState() => _ScreenUpdateEmailState();
}

class _ScreenUpdateEmailState extends ConsumerState<ScreenUpdateEmail> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = ref.read(StateMe.provider);
    textController.text = state.userProfile?.email ?? '';
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    final state = ref.watch(StateMe.provider);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(title: 'email'.tr()),
            Expanded(
              child: Container(
                color: colors.homeDividerBg,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Text(
                        'verify_email_description'.tr(),
                        style: textStyle.bodySmallGrey,
                      ),
                    ),
                    buildEmailRow(colors),
                    const SizedBox(
                      height: 20,
                    ),
                    buildSaveButton(state, context)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildEmailRow(AppColor colors) {
    return Container(
                    color: colors.homeBg,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: EditUserListItem(
                        rightText: '',
                        leftText: 'email'.tr(),
                        rightWidget: Expanded(
                          flex: 9,
                          child: TextField(
                            textDirection: TextDirection.rtl,
                            controller: textController,
                            onChanged: (value) {
                              setState(() {});
                            },
                            decoration:
                                const InputDecoration.collapsed(hintText: ''),
                          ),
                        ),
                        showArrow: false,
                        keepPaddingRight: false,
                      ),
                    ),
                  );
  }

  Widget buildSaveButton(StateMe state, BuildContext context) {
    return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppSelectButton(
                      text: 'save'.tr(),
                      enabled: () {
                        final newEmail = textController.text.trim();
                        if (newEmail.isNotEmpty &&
                            newEmail != state.userProfile?.email &&
                            EmailValidator.validate(newEmail)) {
                          return true;
                        }
                        return false;
                      }(),
                      onClick: () {
                        state.updateEmail(textController.text.trim());
                        Navigator.of(context).pop();
                      },
                    ),
                  );
  }
}