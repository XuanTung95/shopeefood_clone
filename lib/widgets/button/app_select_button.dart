import '../../utils/common_import.dart';

class AppSelectButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final bool outline;

  const AppSelectButton(
      {Key? key,
      this.outline = false,
      required this.text,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    return TextButton(
      onPressed: onClick,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            outline ? Colors.white : colors.primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
                side: BorderSide(color: colors.primaryColor))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Text(
          text,
          style: textStyle.bodyRegular
              .copyWith(color: outline ? colors.primaryColor : Colors.white),
        ),
      ),
    );
  }
}
