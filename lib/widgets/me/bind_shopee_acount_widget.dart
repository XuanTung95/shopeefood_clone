import 'package:shopeefood_clone/utils/common_import.dart';

class BindShopeeAcountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    return Container(
      color: colors.linkAccount,
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Image.asset(
              Assets
                  .images
                  .nodeModulesShopeernCommonimagesAssetsCommoniconShopeecoinicon
                  .path,
              width: 20,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0).copyWith(left: 0),
              child: Text(
                'bind_account_to_get_x_coin_for_rating'.tr(args: ['2,000']),
                style: textStyle.bodyMedium,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: colors.primaryColor, borderRadius: BorderRadius.circular(2)),
            padding: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 0),
            child: Text(
              'bind'.tr(),
              style: textStyle.bodySmall.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(width: 8,),
        ],
      ),
    );
  }
}
