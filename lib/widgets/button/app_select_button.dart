import '../../utils/common_import.dart';

class AppSelectButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final bool outline;
  final bool enabled;

  const AppSelectButton(
      {Key? key,
      this.outline = false,
      required this.text,
      required this.onClick,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    return TextButton(
      onPressed: () {
        if (enabled) {
          onClick.call();
        }
      },
      style: enabled
          ? ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              backgroundColor: MaterialStateProperty.all(
                  outline ? Colors.white : colors.primaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      side: BorderSide(color: colors.primaryColor))),
            )
          : ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                  side: BorderSide(color: Colors.grey[200]!),
                ),
              ),
            ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
        child: Text(
          text,
          style: enabled
              ? textStyle.bodyRegular
                  .copyWith(color: outline ? colors.primaryColor : Colors.white)
              : textStyle.bodyRegular.copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}
