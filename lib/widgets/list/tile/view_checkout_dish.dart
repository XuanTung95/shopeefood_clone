import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../../models/model_cart.dart';
import '../../../utils/common_import.dart';

class ViewCheckoutDish extends StatelessWidget {
  final OrderDishes dish;

  const ViewCheckoutDish({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: AppImageNetworkWidget(
            url: ImageUtils.getIconImage(
              dish.dish?.photos,
            ),
            width: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
          ),
          child: Text(
            '${dish.quantity ?? 0} x',
            style: textStyle.bodyBoldBlack,
          ),
        ),
        Expanded(
          child: Text(
            '${dish.dish?.name ?? ''}',
            style: textStyle.bodyBoldBlack,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          children: [
            Text(
              '${dish.price?.text}',
              style:
                  textStyle.bodyBoldBlack.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            if (dish.originalPrice?.value != dish.price?.value)
              Text(
                '${dish.originalPrice?.text}',
                style: textStyle.bodySmallGrey.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
          ],
        ),
      ],
    );
  }
}