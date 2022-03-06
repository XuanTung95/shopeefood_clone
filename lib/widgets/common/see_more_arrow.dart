import '../../utils/common_import.dart';

class SeeMoreArrow extends StatelessWidget {
  final double width;
  final Color? color;
  const SeeMoreArrow({Key? key, required this.width, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.assetsImgShipCommonArrowRight.path,
      width: width,
      color: color,
    );
  }
}
