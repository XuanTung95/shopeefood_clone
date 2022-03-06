import '../../models/model_shop_detail.dart';
import '../../utils/common_import.dart';

class ViewPromotionListTile extends StatelessWidget {
  final List<Promotions> promotions;

  const ViewPromotionListTile({Key? key, required this.promotions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (promotions.isEmpty) return const SizedBox();
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: promotions.map((item) {
                return buildPromotionRow(textStyle, colors, item);
              }).toList(),
            ),
          ),
          Text(
            'rebranding.see_all'.tr(),
            style: textStyle.bodyMedium.copyWith(
                fontWeight: FontWeight.w500, color: colors.primaryColor),
          ),
        ],
      ),
    );
  }

  Widget buildPromotionRow(
      AppTextStyle textStyle, AppColor colors, Promotions item) {
    String title = item.formattedTitle?.message ?? '';
    if (title.isEmpty) return const SizedBox();
    return Row(
      children: [
        Image.asset(
          Assets.images.assetsImgCommonIcPromotionTagRed.path,
          width: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.formattedTitle?.message ?? '',
            maxLines: 1,
            style: textStyle.bodyRegular,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}