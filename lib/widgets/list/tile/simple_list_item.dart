import '../../../utils/common_import.dart';

class SimpleListItem extends StatelessWidget {
  final String? asset;
  final String title;
  final Widget? tailWidget;
  final bool rightArrow;
  final double iconSize;

  const SimpleListItem(
      {Key? key,
      this.asset,
      required this.title,
      this.tailWidget,
      this.rightArrow = true, this.iconSize = 25})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          if (asset != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                asset!,
                width: iconSize,
              ),
            ),
          Expanded(child: Text(title, style: textStyle.bodySmall,)),
          if (tailWidget != null) tailWidget!,
          Image.asset(
            Assets.images.assetsImgShipCommonArrowRight.path,
            width: 25,
          ),
        ],
      ),
    );
  }
}