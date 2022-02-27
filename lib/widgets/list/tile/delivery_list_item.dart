import 'package:shopeefood_clone/models/model_delivery.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../../utils/common_import.dart';
import '../../bottom_sheet/bottom_sheet_select_restaurant.dart';

class DeliveryListItem extends StatelessWidget {
  final ModelDelivery data;

  const DeliveryListItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: buildImage(context, textStyle),
          ),
        ),
        Expanded(
          flex: 12,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNameRow(context),
              buildRatingRow(context),
              buildDiscountRow(context),
              buildOutletsRow(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildImage(BuildContext context, AppTextStyle textStyle) {
    return LayoutBuilder(
      builder: (context, size) {
        double padding = size.maxWidth * 0.028;
        return Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(padding),
              child: AppImageNetworkWidget(
                url: ImageUtils.getIconImage(data.photos),
                fit: BoxFit.fitWidth,
              ),
            ),
            if (data.label?.photos?.isNotEmpty ?? false)
              Positioned.fill(
                child: Container(
                  margin: EdgeInsets.only(left: padding, bottom: padding),
                  alignment: Alignment.bottomLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.75,
                    child: AppImageNetworkWidget(
                      url: ImageUtils.getIconImage(data.label?.photos),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            if (data.isQualityMerchant ?? false)
              Positioned.fill(
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: padding * 2),
                  child: FractionallySizedBox(
                    widthFactor: 0.4,
                    heightFactor: null,
                    child: Stack(
                      children: [
                        Image.asset(Assets
                            .images.assetsImgMerchantIccortagpreferredbg.path),
                        Positioned.fill(
                          child: FractionallySizedBox(
                            widthFactor: 0.8,
                            heightFactor: 0.8,
                            alignment: const Alignment(0, -0.5),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'QUALITY'.tr(),
                                maxLines: 1,
                                style: textStyle.bodyMedium
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  buildRatingRow(BuildContext context) {
    var textStyle = AppTextStyle(context);
    const double iconSize = 16;
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.end,
      children: [
        Image.asset(
          Assets.images.assetsImgRatingIcpromotionyellowstar.path,
          width: iconSize,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            '${data.rating?.avg ?? 0}',
            style: textStyle.bodySmallGrey,
          ),
        ),
        Container(
          color: Colors.grey[400],
          width: 1,
          height: 15,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
        ),
        Image.asset(
          Assets.images.assetsImgMerchantIcitemlocation.path,
          width: iconSize,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            '${(data.rating?.avg ?? 0) / 2}km',
            style: textStyle.bodySmallGrey,
          ),
        ),
        Container(
          color: Colors.grey[400],
          width: 1,
          height: 15,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
        ),
        Image.asset(
          Assets.images.assetsImgMerchantIcitemtime.path,
          width: iconSize,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            '20min',
            style: textStyle.bodySmallGrey,
          ),
        ),
      ],
    );
  }

  buildNameRow(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: RichText(
        text: TextSpan(
          children: [
            if (data.isQualityMerchant ?? false)
              WidgetSpan(
                child: Image.asset(
                  Assets.images.assetsImgMerchantMerchantVerifiedIcon.path,
                  width: 20,
                ),
              ),
            TextSpan(
                text: data.name ?? '',
                style: textStyle.bodyBoldBlack.copyWith(fontSize: 13)),
          ],
        ),
      ),
    );
  }

  buildDiscountRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Wrap(
        runSpacing: 6,
        spacing: 10,
        children: data.promotionGroups
                ?.map((item) => RedBorderText(text: item.text ?? ''))
                .toList() ??
            [],
      ),
    );
  }

  buildOutletsRow(BuildContext context) {
    final textStyle = AppTextStyle(context);
    int outletsCount = (data.brand?.restaurantCount ?? 1) - 1;
    if (outletsCount < 1) {
      return const SizedBox();
    }
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheetSelectRestaurant(shop: data,);
            },
            isScrollControlled: true,
            constraints: const BoxConstraints.expand(),
            backgroundColor: Colors.transparent);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: RichText(
          text: TextSpan(
            text: 'rebranding.home_brand_restaurant_count'.tr(
              args: [outletsCount.toString()],
            ),
            style: textStyle.bodySmallGrey,
            children: const [
              WidgetSpan(
                child: Icon(
                  Icons.chevron_right_sharp,
                  size: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeliveryListItemLoading extends StatelessWidget {
  final Color loadingColor = Colors.grey[200]!;
  DeliveryListItemLoading({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: buildImage(context, textStyle),
          ),
        ),
        Expanded(
          flex: 12,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNameRow(context),
              buildRatingRow(context),
              buildDiscountRow(context),
              buildOutletsRow(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildImage(BuildContext context, AppTextStyle textStyle) {
    return LayoutBuilder(
      builder: (context, size) {
        double padding = size.maxWidth * 0.028;
        return AspectRatio(
          aspectRatio: 1,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(padding),
            color: loadingColor,
          ),
        );
      },
    );
  }

  buildRatingRow(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.3,
      child: Container(
        color: loadingColor,
        width: double.infinity,
        height: 15,
      ),
    );
  }

  buildNameRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10,),
      child: FractionallySizedBox(
        widthFactor: 0.6,
        child: Container(
          color: loadingColor,
          width: double.infinity,
          height: 18,
        ),
      ),
    );
  }

  buildDiscountRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: loadingColor,
              width: double.infinity,
              height: 15,
            ),
          ),
          const Spacer(flex: 4,),
          Expanded(
            flex: 4,
            child: Container(
              color: loadingColor,
              width: double.infinity,
              height: 12,
            ),
          ),
          const Spacer(flex: 2,),
        ],
      ),
    );
  }

  buildOutletsRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: loadingColor,
              width: double.infinity,
              height: 15,
            ),
          ),
          const Spacer(flex: 1,),
          Expanded(
            flex: 2,
            child: Container(
              color: loadingColor,
              width: double.infinity,
              height: 15,
            ),
          ),
          const Spacer(flex: 8,),
        ],
      ),
    );
  }
}


class RedBorderText extends StatelessWidget {
  final String text;

  const RedBorderText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(border: Border.all(color: colors.primaryColor)),
      child: Text(
        text,
        style: textStyle.bodySmall2Grey.apply(
          color: colors.primaryColor,
        ),
      ),
    );
  }
}