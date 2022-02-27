import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';
import 'package:shopeefood_clone/widgets/common/see_all_list_item.dart';

import '../../models/model_collection.dart';
import '../../utils/common_import.dart';

class HomeCollectionsScroll extends StatelessWidget {
  final List<ModelCollection> collections;
  final int maxShowItem;
  final VoidCallback clickSeeAll;

  const HomeCollectionsScroll(
      {Key? key,
      required this.collections,
      required this.maxShowItem,
      required this.clickSeeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showSeeAll = collections.length > maxShowItem;
    List<ModelCollection> data =
        showSeeAll ? collections.sublist(0, maxShowItem) : collections;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index >= data.length) {
          return GestureDetector(
            onTap: clickSeeAll,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: SeeAllListItem(),
                ),
              ],
            ),
          );
        }
        var collection = data[index];
        return Padding(
          padding: index == 0
              ? const EdgeInsets.only(
                  left: 10,
                  right: 10,
                )
              : const EdgeInsets.only(
                  right: 10,
                ),
          child: CollectionItemWidget(
            collection: collection,
          ),
        );
      },
      itemCount: data.length + (showSeeAll ? 1 : 0),
    );
  }
}

class CollectionItemWidget extends StatelessWidget {
  final ModelCollection collection;

  const CollectionItemWidget({Key? key, required this.collection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: colors.homeCollectionItemBg,
          border: Border.all(
            color: colors.homeItemBorder,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: AppImageNetworkWidget(
                url: collection.getIcon,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 8, bottom: 5, left: 8, right: 8),
                child: AutoSizeText(
                  collection.name ?? '',
                  style: textStyle.bodyBoldBlack,
                  maxLines: 2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}