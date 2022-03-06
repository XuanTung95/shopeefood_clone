import 'dart:math';

import 'package:shopeefood_clone/models/model_flash_sale.dart';
import 'package:shopeefood_clone/utils/money_utls.dart';

import '../../utils/common_import.dart';
import '../common/app_image_widget.dart';

class FlashSaleItemWidget extends StatelessWidget {
  final ModelFlashSale data;

  const FlashSaleItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    var soldPercent = getSoldPercent();
    if (soldPercent > 0) {
      soldPercent = max(soldPercent, 0.1);
    }
    return SizedBox(
      width: 130,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.homeCollectionItemBg,
              border: Border.all(
                color: colors.homeItemBorder,
                width: 0.5
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 10,
                  child: Stack(
                    children: [
                      AppImageNetworkWidget(
                        url: ImageUtils.getIconImage(data.dishInfo?.photos),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                Assets
                                    .images
                                    .nodeModulesShopeernCommonimagesAssetsCommonimageDiscountbackgrounimg
                                    .path,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 8, right: 8),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: '${getDiscountPercent()}%\n',
                                  style: textStyle.bodySmall2Grey
                                      .copyWith(color: colors.primaryColor),
                                  children: [
                                    TextSpan(
                                      text: 'OFF',
                                      style: textStyle.bodySmallGrey
                                          .copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 3, left: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Text(
                            data.dishInfo?.name ?? '',
                            textAlign: TextAlign.start,
                            style: textStyle.bodyBoldBlack,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: RichText(
                            text: TextSpan(
                              text: MoneyUtils.formatMoney(
                                  data.flashSaleInfo?.discountPrice?.value ??
                                      0),
                              style: textStyle.bodyBoldBlackBig
                                  .copyWith(color: colors.primaryColor),
                              children: [
                                TextSpan(
                                  text:
                                      data.flashSaleInfo?.discountPrice?.unit ??
                                          '',
                                  style: textStyle.bodyBoldBlack
                                      .copyWith(color: colors.primaryColor),
                                )
                              ],
                            ),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Expanded(
                                flex: 20,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      gradient: LinearGradient(colors: [
                                        Colors.deepOrange,
                                        Colors.orangeAccent,
                                        Colors.grey[300]!,
                                      ], stops: [
                                        0,
                                        soldPercent * 3 / 4,
                                        soldPercent,
                                      ]),
                                      borderRadius: BorderRadius.circular(100)),
                                  padding: const EdgeInsets.symmetric(vertical: 1),
                                  child: AutoSizeText(
                                    'flash_sale_item_sold'.tr(args: [
                                      '${data.flashSaleInfo?.sold ?? 0}'
                                    ]).toUpperCase(),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    minFontSize: 6,
                                    style: textStyle.bodyMedium
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  double getSoldPercent() {
    int sold = data.flashSaleInfo?.sold ?? 0;
    int total = data.flashSaleInfo?.stock ?? 0;
    if (total == 0 || sold == 0) {
      return 0;
    }
    return sold / total;
  }

  int getDiscountPercent() {
    if (data.dishInfo?.price?.value != null &&
        data.dishInfo!.price!.value! > 0 &&
        data.flashSaleInfo?.discountPrice?.value != null) {

      return (100 * data.flashSaleInfo!.discountPrice!.value!) ~/
          data.dishInfo!.price!.value!;
    }
    return 0;
  }
}