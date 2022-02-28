import 'package:shopeefood_clone/models/model_delivery.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';
import 'package:shopeefood_clone/widgets/common/see_all_list_item.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_delivery_type_most_order.dart';

import '../../models/model_collection.dart';
import '../../utils/common_import.dart';

class MostOrdersScroll extends StatelessWidget {
  final List<ModelDelivery> items;
  final int maxShowItem;
  final VoidCallback clickSeeAll;

  const MostOrdersScroll(
      {Key? key,
        required this.items,
        required this.maxShowItem,
        required this.clickSeeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showSeeAll = items.length > maxShowItem;
    List<ModelDelivery> data =
    showSeeAll ? items.sublist(0, maxShowItem) : items;
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
        var _item = data[index];
        return Padding(
          padding: index == 0
              ? const EdgeInsets.only(
            left: 10,
            right: 10,
          )
              : const EdgeInsets.only(
            right: 10,
          ),
          child: ViewDeliveryTypeMostOrder(
            item: _item,
          ),
        );
      },
      itemCount: data.length + (showSeeAll ? 1 : 0),
    );
  }
}