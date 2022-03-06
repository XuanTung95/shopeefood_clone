import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';

import '../../utils/common_import.dart';

class EmptyVoucherWidget extends StatelessWidget {
  const EmptyVoucherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        const Spacer(
          flex: 5,
        ),
        Expanded(
          flex: 3,
          child: AppGestureDetector(
              onTap: () {},
              blurType: BlurType.OPACITY,
              child: Image.asset(
                  Assets.images.assetsImgPromotionIllusnocouponcolor.path)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'my_voucher_no_voucher'.tr(),
            style: textStyle.bodyBoldBlackBig.copyWith(color: Colors.black87),
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: Text(
            'my_voucher_no_voucher_description'.tr(),
            textAlign: TextAlign.center,
            style: textStyle.bodyMedium.copyWith(color: Colors.grey[600]!),
          ),
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }
}