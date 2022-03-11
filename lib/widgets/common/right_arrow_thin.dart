import '../../utils/common_import.dart';

class RightArrowThin extends StatelessWidget {
  final double width;

  const RightArrowThin({Key? key, this.width = 14}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.assetsImgCommonIcarrowright12.path,
      width: width,
    );
  }
}
