import 'package:shopeefood_clone/models/model_menu_response.dart';
import 'package:shopeefood_clone/utils/widget_utils.dart';

import '../../../models/model_cart.dart';
import '../../../utils/common_import.dart';
import '../../../utils/money_utls.dart';
import '../../common/add_delete_icon_widget.dart';
import '../../common/app_image_widget.dart';

class ViewDishDetailTile extends StatelessWidget {
  final ModelMenu menu;
  final OrderDishes orderDish;
  final void Function(int)? onClickText;
  final void Function(bool isAdd, Offset? globalPos)? onClickAdd;


  const ViewDishDetailTile(
      {Key? key, required this.menu, this.onClickAdd, required this.orderDish, this.onClickText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: buildImage(context, textStyle),
          ),
        ),
        Expanded(
          flex: 12,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNameRow(context, textStyle),
                buildDescRow(context, textStyle),
                buildSoldRow(context, textStyle),
                buildPrice(context, textStyle),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildImage(BuildContext context, AppTextStyle textStyle) {
    return LayoutBuilder(
      builder: (context, size) {
        double padding = size.maxWidth * 0.027;
        return AspectRatio(
          aspectRatio: 1,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(padding),
            child: AppImageNetworkWidget(
              url: ImageUtils.getIconImage(menu.photos),
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
    );
  }

  buildNameRow(BuildContext context, AppTextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: menu.name ?? '',
                style: textStyle.bodyMedium.copyWith(fontSize: 14)),
          ],
        ),
      ),
    );
  }

  buildDescRow(BuildContext context, AppTextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              menu.description ?? '',
              style: textStyle.bodySmallGrey,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'rebranding.see_more'.tr(),
            style: textStyle.bodySmallGrey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  buildSoldRow(BuildContext context, AppTextStyle textStyle) {
    int sold = menu.totalOrder ?? 0;
    String like = menu.totalLike ?? '0';
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
      ),
      child: Row(
        children: [
          Text(
            sold <= 0 ? '' : '${menu.totalOrder ?? 0}+ sold',
            style: textStyle.bodySmallGrey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (like != '0')
            Container(
              width: 1,
              height: 15,
              color: Colors.grey[300],
              margin: const EdgeInsets.symmetric(horizontal: 5),
            ),
          Text(
            like == '0' ? '' : '$like likes',
            style: textStyle.bodySmallGrey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

  buildPrice(BuildContext context, AppTextStyle textStyle) {
    final colors = AppColor(context);
    String finalPrice = '${menu.price?.getPrice ?? ' '}';
    String oldPrice = '';
    if (menu.discountPrice != null) {
      oldPrice = finalPrice;
      finalPrice =
          '${MoneyUtils.formatMoney(menu.discountPrice!.value!)}${menu.discountPrice?.unit ?? ''}';
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Row(
        children: [
          Text(
            oldPrice,
            style: textStyle.bodyRegular.copyWith(
                color: textStyle.textColorGrey3,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.lineThrough,
                fontSize: 13),
            maxLines: 1,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
          ),
          if (oldPrice.isNotEmpty)
            const SizedBox(
              width: 10,
            ),
          Expanded(
            child: Text(
              finalPrice,
              style: textStyle.bodyRegular.copyWith(
                  color: colors.primaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          AddDeleteIconWidget(
            count: orderDish.quantity ?? 0,
            id: menu.id,
            onClickText: onClickText,
            onClick: (BuildContext context, bool isAdd) {
              Offset? clickPos;
              clickPos = WidgetUtils.getWidgetGlobalPosition(context);
              onClickAdd?.call(isAdd, clickPos);
            },
          ),
        ],
      ),
    );
  }
}
