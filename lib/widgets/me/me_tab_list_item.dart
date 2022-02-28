import '../../utils/common_import.dart';

class MeTabListItem extends StatelessWidget {
  final String asset;
  final String title;
  final Widget? tailWidget;
  final bool rightArrow;

  const MeTabListItem(
      {Key? key,
      required this.asset,
      required this.title,
      this.tailWidget,
      this.rightArrow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              asset,
              width: 28,
            ),
          ),
          Expanded(child: Text(title)),
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
