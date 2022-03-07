import 'package:shopeefood_clone/models/model_order.dart';
import 'package:shopeefood_clone/utils/date_time_utils.dart';

import '../../../utils/common_import.dart';
import '../../common/app_image_widget.dart';

class OrderItemWidget extends StatelessWidget {
  final ModelOrders order;

  const OrderItemWidget({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Column(
      children: [
        const SizedBox(height: 10,),
        buildOrderNoRow(context, textStyle, colors),
        buildInfoRow(context, textStyle, colors),
        const Divider(
          thickness: 0.5,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              order.status?.text?.text ?? '',
              style: textStyle.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }

  buildOrderNoRow(
      BuildContext context, AppTextStyle textStyle, AppColor colors) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: 'Food',
            style: textStyle.bodyBoldBlack,
            children: [
              TextSpan(
                text: '  #${order.orderCode ?? ''} Member',
                style: textStyle.bodySmallGrey.copyWith(
                  color: textStyle.textColorGrey,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          DateTimeUtils.getOrderDate(order),
          style: textStyle.bodySmall2Grey,
        ),
      ],
    );
  }

  buildInfoRow(BuildContext context, AppTextStyle textStyle, AppColor colors) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
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
              buildLocationRow(context),
              buildPayOptionRow(context),
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
                url: ImageUtils.getIconImage(order.delivery?.photos),
                fit: BoxFit.fitWidth,
                loadingWidget: const AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(),
                ),
              ),
            ),
            if (order.delivery?.label?.photos?.isNotEmpty ?? false)
              Positioned.fill(
                child: Container(
                  margin: EdgeInsets.only(left: padding, bottom: padding),
                  alignment: Alignment.bottomLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.75,
                    child: AppImageNetworkWidget(
                      url: ImageUtils.getIconImage(
                          order.delivery?.label?.photos),
                      fit: BoxFit.fitWidth,
                      loadingWidget: const SizedBox(),
                      errorWidget: const SizedBox(),
                    ),
                  ),
                ),
              ),
            if (order.delivery?.isQualityMerchant ?? false)
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

  buildLocationRow(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Text(
      order.delivery?.address ?? '',
      style: textStyle.bodySmall2Grey,
      maxLines: 1,
    );
  }

  buildNameRow(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: RichText(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          children: [
            if (order.delivery?.isQualityMerchant ?? false)
              WidgetSpan(
                child: Image.asset(
                  Assets.images.assetsImgMerchantMerchantVerifiedIcon.path,
                  width: 20,
                ),
              ),
            TextSpan(
                text: order.delivery?.name ?? '',
                style: textStyle.bodyBoldBlack.copyWith(fontSize: 13)),
          ],
        ),
      ),
    );
  }

  buildPayOptionRow(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: RichText(
        text: TextSpan(
            text: '${order.paidStatus?.amount?.text}',
            children: [
              TextSpan(
                  text:
                      ' (${order.orderItems?.totalItem ?? 0} items) - ${order.paidOption?.airpaySource?.sourceText ?? 'Crash'}',
                  style: textStyle.bodySmall)
            ],
            style: textStyle.bodyBoldBlack),
      ),
    );
  }
}