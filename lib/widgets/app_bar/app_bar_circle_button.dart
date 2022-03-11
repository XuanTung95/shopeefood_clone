import '../../utils/common_import.dart';

class AppBarCircleButton extends StatelessWidget {
  final String asset;
  final Color? color;
  final Color bgColor;
  final EdgeInsets padding;
  final VoidCallback onTap;

  const AppBarCircleButton(
      {Key? key,
        required this.asset,
        required this.color,
        required this.bgColor,
        required this.padding,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        padding: padding,
        child: Image.asset(
          asset,
          color: color,
        ),
      ),
    );
  }
}