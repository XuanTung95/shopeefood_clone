import 'dart:math';

import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/vm/global/state_cart.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../../models/model_cart.dart';
import '../../common/add_delete_icon_widget.dart';
import '../../common/app_image_widget.dart';

class ViewOrderDish extends ConsumerWidget {
  final OrderDishes orderDish;

  const ViewOrderDish({Key? key, required this.orderDish}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var textStyle = AppTextStyle(context);
    final cart = ref.watch(StateCart.provider);
    return DividerWidget(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
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
                  buildNoteRow(context, textStyle),
                  buildPrice(context, textStyle, cart),
                ],
              ),
            ),
          ),
        ],
      ),
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
              url: ImageUtils.getIconImage(orderDish.dish?.photos),
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
                text: orderDish.dish?.name ?? '',
                style: textStyle.bodyBoldBlack.copyWith(fontSize: 13)),
          ],
        ),
      ),
    );
  }

  buildPrice(BuildContext context, AppTextStyle textStyle, StateCart cart) {
    final colors = AppColor(context);
    String finalPrice = orderDish.price?.getPrice ?? ' ';
    String oldPrice = '';
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
            id: orderDish.id,
            onClickText: (count) {
              orderDish.quantity =
                  min(999,max(0, count));
              cart.updateOrderDish(orderDish);
            },
            onClick: (BuildContext context, bool isAdd) {
              orderDish.quantity =
                  min(999,max(0, (orderDish.quantity ?? 0) + (isAdd ? 1 : -1)));
              cart.updateOrderDish(orderDish);
            },
          ),
        ],
      ),
    );
  }

  buildNoteRow(BuildContext context, AppTextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Image.asset(
            Assets.images.assetsImgCommonNote20.path,
            width: 12,
          ),
          const SizedBox(width: 5,),
          Text('rebranding.cart_detail_item_note'.tr(), style: textStyle.bodySmallGrey,)
        ],
      ),
    );
  }
}