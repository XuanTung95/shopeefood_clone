import '../../utils/common_import.dart';

class SelectDeliveryMethodItem extends StatelessWidget {
  const SelectDeliveryMethodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        children: [
          Image.asset(
            Assets.images.assetsImgMerchantDeliveryIcon.path,
            width: 40,
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'shop_standard_delivery'.tr(),
                  style: textStyle.bodyMedium.copyWith(
                      fontWeight: FontWeight.w500,
                      color: textStyle.textColorBlack),
                ),
                const SizedBox(height: 5,),
                Text(
                  'ongoing_eta'.tr(args: ["21:05"]),
                  style: textStyle.bodyMedium,
                ),
              ],
            ),
          ),
          Text(
            'change'.tr(),
            style: textStyle.bodyMedium.copyWith(
                fontWeight: FontWeight.w500, color: colors.primaryColor),
          ),
        ],
      ),
    );
  }
}