import 'package:shopeefood_clone/models/model_dish.dart';
import 'package:shopeefood_clone/utils/money_utls.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';
import 'package:shopeefood_clone/widgets/common/see_all_list_item.dart';

import '../../models/model_collection.dart';
import '../../utils/common_import.dart';
import '../common/add_icon_widget.dart';

class HomeDishScroll extends StatelessWidget {
  final List<ModelDish> dishs;
  final int maxShowItem;
  final VoidCallback clickSeeAll;

  const HomeDishScroll(
      {Key? key,
      required this.dishs,
      required this.maxShowItem,
      required this.clickSeeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showSeeAll = dishs.length > maxShowItem;
    List<ModelDish> data = showSeeAll ? dishs.sublist(0, maxShowItem) : dishs;
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
          child: DishItemWidget(
            dish: collection,
          ),
        );
      },
      itemCount: data.length + (showSeeAll ? 1 : 0),
    );
  }
}

class DishItemWidget extends StatelessWidget {
  final ModelDish dish;

  const DishItemWidget({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.homeCollectionItemBg,
              border: Border.all(
                color: colors.homeItemBorder,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: AppImageNetworkWidget(
                    url: dish.getPhotoUrl ?? '',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 3, left: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Text(
                            dish.name ?? '',
                            textAlign: TextAlign.start,
                            style: textStyle.bodyBoldBlack,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            dish.delivery?.name ?? '',
                            style: textStyle.bodySmall2Grey,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            dish.price?.getPrice ?? '',
                            style: textStyle.bodySmallGrey.copyWith(
                              decoration: TextDecoration.lineThrough,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                child: (dish.discountPrice?.getPrice
                                            .isNotEmpty ??
                                        false)
                                    ? RichText(
                                        text: TextSpan(
                                            text: MoneyUtils.formatMoney(dish
                                                    .discountPrice!.value!),
                                            style: textStyle.bodySmallGrey
                                                .copyWith(
                                                    color: colors.primaryColor,
                                                    fontWeight:
                                                        FontWeight.w600),
                                            children: [
                                              TextSpan(
                                                text: dish.discountPrice!.unit!,
                                                style: textStyle.bodySmallGrey
                                                    .copyWith(
                                                        color:
                                                            colors.primaryColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 11),
                                              )
                                            ]),
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    : const SizedBox(),
                              ),
                              const AddIconWidget(
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          if (dish.displayTotalLike != null)
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(2),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                child: Text(
                  '${dish.displayTotalLike} likes',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: textStyle.fontFamily,
                      fontSize: 9,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
        ],
      ),
    );
  }
}