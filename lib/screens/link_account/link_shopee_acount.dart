import '../../utils/common_import.dart';
import '../../widgets/app_bar/app_bar_default.dart';

class LinkShopeeAcount extends StatelessWidget {
  const LinkShopeeAcount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(title: 'coins_my_shopee_coin'.tr()),
            buildCoinAvailable(context, textStyle, colors),
            Spacer(
              flex: 5,
            ),
            Expanded(
              flex: 4,
              child: Image.asset(
                Assets.images.assetsImgMeBindshopee.path,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'rebranding.coins_link_account_description'.tr(),
                textAlign: TextAlign.center,
                style: textStyle.bodyMedium.copyWith(
                  color: textStyle.textColorGrey,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: colors.primaryColor,
                  borderRadius: BorderRadius.circular(3)),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'bind_shopee_account'.tr(),
                style: textStyle.bodyMedium.copyWith(color: Colors.white),
              ),
            ),
            Spacer(
              flex: 6,
            )
          ],
        ),
      ),
    );
  }

  buildCoinAvailable(
      BuildContext context, AppTextStyle textStyle, AppColor colors) {
    return Container(
      color: colors.linkAccount,
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '0',
            style: textStyle.bodyBoldBlackBig.copyWith(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Text(
              ' Coin available',
              style: textStyle.bodyRegular.copyWith(
                color: Colors.orange,
              ),
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(4))),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'coins_how_to_earn'.tr(),
              style: textStyle.bodyRegular.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
