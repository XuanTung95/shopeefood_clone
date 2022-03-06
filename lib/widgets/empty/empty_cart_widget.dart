

import '../../utils/common_import.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Column(
      children: [
        const SizedBox(width: double.infinity,),
        const Spacer(flex: 5,),
        Expanded(
          flex: 3,
          child: Image.asset(Assets.images.nodeModulesShopeernCommonimagesAssetsCommonimageEmptycardicon.path),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'no_cart_text'.tr(),
            style: textStyle.bodyBoldBlackBig.copyWith(color: Colors.black87),
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: Text(
            'no_cart_text_description'.tr(),
            textAlign: TextAlign.center,
            style: textStyle.bodyMedium.copyWith(color: Colors.grey[600]!),
          ),
        ),
        const Spacer(flex: 5,),
      ],
    );
  }
}