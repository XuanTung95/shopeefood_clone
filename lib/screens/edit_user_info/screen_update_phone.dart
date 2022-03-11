import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_select_button.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';
import '../../widgets/input/input_text_with_icon.dart';

class ScreenUpdatePhone extends ConsumerStatefulWidget {
  const ScreenUpdatePhone({Key? key}) : super(key: key);

  @override
  _ScreenViewPhoneState createState() => _ScreenViewPhoneState();
}

class _ScreenViewPhoneState extends ConsumerState<ScreenUpdatePhone> {
  late final TextEditingController controller;
  bool isValid = false;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      setState(() {
        isValid = controller.text.length > 7;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
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
            AppBarDefault(title: 'update_phone_number_title'.tr()),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  buildInputPhoneNumberRow(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildNextButton(state, context),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget buildNextButton(StateMe state, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppSelectButton(
        text: 'next'.tr(),
        enabled: isValid,
        onClick: () {
          if (isValid) {
            state.updatePhone(controller.text);
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }

  Widget buildInputPhoneNumberRow() {
    return DividerWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InputTextWithIcon(
          asset: Assets.images.assetsImgAuthenticationIconPhone.path,
          keyboardType: TextInputType.phone,
          hint: 'phone_number'.tr(),
          controller: controller,
        ),
      ),
    );
  }
}
