import 'package:shopeefood_clone/widgets/common/see_more_arrow.dart';

import '../../utils/common_import.dart';

class CheckoutDeliveryTimeWidget extends StatelessWidget {
  final String text;

  const CheckoutDeliveryTimeWidget({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Row(
      children: [
        Image.asset(
          Assets.images.assetsImgShipCheckoutIcDeliveryTimeNormal.path,
          width: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          text,
          style: textStyle.bodyBoldBlack,
        )),
        const SeeMoreArrow(
          width: 20,
        ),
      ],
    );
  }
}