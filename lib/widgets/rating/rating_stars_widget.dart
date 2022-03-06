
import '../../utils/common_import.dart';

class RatingStarWidget extends StatelessWidget {
  final double? rating;
  final bool showEmptyStar;
  final double starSize;
  const RatingStarWidget({Key? key, required this.rating, this.showEmptyStar = true, this.starSize = 12.5}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int fillCount = (rating ?? 0).truncateToDouble().toInt();
    List<Widget> children = [];
    for (int i = 0; i < 5; i++) {
      if (showEmptyStar || i < fillCount) {
        children.add(Padding(
            padding: EdgeInsets.only(right: i < 5 - 1 ? 4 : 0),
            child: buildStar(i < fillCount)));
      }
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }

  Widget buildStar(bool fill) {
    return Image.asset(
      fill
          ? Assets.images.assetsImgMerchantIcratingstarfill.path
          : Assets.images.assetsImgMerchantIcratingstarempty.path,
      width: starSize,
    );
  }
}