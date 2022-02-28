import '../../utils/common_import.dart';

class SeeAllListItem extends StatelessWidget {
  const SeeAllListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Column(
      children: [
        Image.asset(
          Assets.images
              .nodeModulesShopeernCommonimagesAssetsCommoniconShowmoreicon.path,
          width: 30,
        ),
        const SizedBox(height: 10,),
        Text(
          'shopeefood.see_all'.tr(),
          style: textStyle.seeAllItem,
        ),
      ],
    );
  }
}