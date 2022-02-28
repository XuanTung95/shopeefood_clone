import 'package:shopeefood_clone/widgets/list/tile/delivery_list_item.dart';

import '../../../models/model_collection.dart';
import '../../../models/model_delivery.dart';
import '../../../utils/common_import.dart';
import '../../common/app_image_widget.dart';

class ViewDeliveryTypeMostOrder extends StatelessWidget {
  final ModelDelivery item;

  const ViewDeliveryTypeMostOrder({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: colors.homeCollectionItemBg,
          border: Border.all(
            color: colors.homeItemBorder,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 16,
              child: AppImageNetworkWidget(
                url: ImageUtils.getIconImage(item.photos),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                child: RichText(
                  text: TextSpan(
                    children: [
                      if (item.isQualityMerchant ?? false)
                        WidgetSpan(
                          child: Image.asset(
                            Assets.images.assetsImgMerchantMerchantVerifiedIcon
                                .path,
                            width: 18,
                          ),
                        ),
                      TextSpan(
                        text: item.name ?? '',
                        style: textStyle.bodyBoldBlack,
                      )
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            buildDiscountRow(context),
          ],
        ),
      ),
    );
  }

  buildDiscountRow(BuildContext context) {
    String txt = '';
    if (item.promotionGroups?.isNotEmpty ?? false) {
      txt = item.promotionGroups![0].text ?? '';
    };
    return Expanded(
      flex: 3,
      child: txt.isNotEmpty ? Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 10),
        child: RedBorderText(
          text: txt,
        ),
      ) : SizedBox(),
    );
  }
}
