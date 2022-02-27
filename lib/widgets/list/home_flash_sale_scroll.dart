import 'package:shopeefood_clone/models/model_flash_sale.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';
import 'package:shopeefood_clone/widgets/common/see_all_list_item.dart';
import 'package:shopeefood_clone/widgets/flash_sale/flash_sale_item_widget.dart';

import '../../models/model_collection.dart';
import '../../utils/common_import.dart';

class HomeFlashSaleScroll extends StatelessWidget {
  final List<ModelFlashSale> datas;
  final int maxShowItem;
  final VoidCallback clickSeeAll;

  const HomeFlashSaleScroll(
      {Key? key,
      required this.datas,
      required this.maxShowItem,
      required this.clickSeeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showSeeAll = datas.length > maxShowItem;
    List<ModelFlashSale> data =
        showSeeAll ? datas.sublist(0, maxShowItem) : datas;
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
        var item = data[index];
        return Padding(
          padding: index == 0
              ? const EdgeInsets.only(
                  left: 10,
                  right: 10,
                )
              : const EdgeInsets.only(
                  right: 10,
                ),
          child: FlashSaleItemWidget(
            data: item,
          ),
        );
      },
      itemCount: data.length + (showSeeAll ? 1 : 0),
    );
  }
}
