import '../../../utils/common_import.dart';

class TitleListItem extends StatelessWidget {
  final String title;

  const TitleListItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: textStyle.bodySmall.copyWith(color: textStyle.textColorGrey3),
      ),
    );
  }
}