import '../../utils/common_import.dart';

class PreferredTagWidget extends StatelessWidget {
  final String text;

  const PreferredTagWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    return Container(
      decoration: BoxDecoration(
        color: colors.primaryColor,
        borderRadius: BorderRadius.circular(2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: Text(
        text,
        style: textStyle.bodyBoldSmallWhite,
      ),
    );
  }
}
