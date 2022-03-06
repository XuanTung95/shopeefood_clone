import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';

import '../../utils/common_import.dart';

class DialogConfirmButton extends StatelessWidget {
  final VoidCallback? clickCancel;
  final VoidCallback? clickDone;

  const DialogConfirmButton({Key? key, this.clickCancel, this.clickDone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    final borderSide = BorderSide(color: colors.homeItemBorder, width: 0.5);
    return Row(
      children: [
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(top: borderSide)),
              child: buildButton(
                  colors, textStyle.dialogButton, 'cancel'.tr(), () {
                    clickCancel?.call();
              })),
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(left: borderSide, top: borderSide)),
              child: buildButton(
                  colors,
                  textStyle.dialogButton.copyWith(color: colors.primaryColor),
                  'done'.tr(),
                  () {
                    clickDone?.call();
                  })),
        ),
      ],
    );
  }

  Widget buildButton(AppColor colors, TextStyle textStyle, String text,
      VoidCallback callback) {
    return AppGestureDetector(
      onTap: callback,
      blurType: BlurType.OPACITY,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    );
  }
}