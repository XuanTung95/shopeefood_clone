import '../../../../../utils/common_import.dart';

class LinkShopeeAccountRow extends StatelessWidget {
  const LinkShopeeAccountRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Container(
      color: colors.linkAccount,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              Assets
                  .images
                  .nodeModulesShopeernCommonimagesAssetsCommoniconShopeecoinicon
                  .path,
              width: 22,
            ),
          ),
          Expanded(
            child: Text(
              'link_shopee_account_rating'.tr(),
              style: textStyle.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 5),
            child: Image.asset(
              Assets.images.assetsImgCommonArrowRight.path,
              height: 15,
            ),
          ),
        ],
      ),
    );
  }
}
