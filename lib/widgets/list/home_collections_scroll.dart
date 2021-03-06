import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/common/see_all_list_item.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_collection_item_widget.dart';

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
              children: const [
                Padding(
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
          child: AppGestureDetector(
            onTap: () {
              AppRouting.goToShopDetailScreen(context);
            },
            child: ViewCollectionItemWidget(
              collection: collection,
            ),
          ),
        );
      },
      itemCount: data.length + (showSeeAll ? 1 : 0),
    );
  }
}

