import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/button/app_select_button.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';

import '../../utils/common_import.dart';
import '../../widgets/list/tile/edit_user_list_item.dart';

class ScreenUpdateUserName extends ConsumerStatefulWidget {
  const ScreenUpdateUserName({Key? key}) : super(key: key);

  @override
  _ScreenUpdateUserNameState createState() => _ScreenUpdateUserNameState();
}

class _ScreenUpdateUserNameState extends ConsumerState<ScreenUpdateUserName> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = ref.read(StateMe.provider);
    textController.text = state.userProfile?.name ?? '';
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final state = ref.watch(StateMe.provider);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(title: 'general_name'.tr()),
            Expanded(
              child: Container(
                color: colors.homeDividerBg,
                child: Column(
                  children: [
                    const ListDivider(),
                    buildUserNameRow(colors),
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

  Widget buildSaveButton(StateMe state, BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppSelectButton(
        text: 'save'.tr(),
        enabled: () {
          final newName = textController.text.trim();
          if (newName.isNotEmpty && newName != state.userProfile?.name) {
            return true;
          }
          return false;
        }(),
        onClick: () {
          state.updateName(textController.text.trim());
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Widget buildUserNameRow(AppColor colors) {
    return AppGestureDetector(
      onTap: () {},
      child: Container(
        color: colors.homeBg,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditUserListItem(
            rightText: '',
            leftText: 'general_name'.tr(),
            rightWidget: Expanded(
              flex: 9,
              child: TextField(
                textDirection: TextDirection.rtl,
                controller: textController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: const InputDecoration.collapsed(hintText: ''),
              ),
            ),
            showArrow: false,
            keepPaddingRight: false,
          ),
        ),
      ),
    );
  }
}
