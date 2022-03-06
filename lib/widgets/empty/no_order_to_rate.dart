

import '../../utils/common_import.dart';

class NoOrderToRate extends StatelessWidget {
  const NoOrderToRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Column(
      children: [
        const SizedBox(width: double.infinity,),
        const Spacer(flex: 5,),
        Expanded(
          flex: 3,
          child: Image.asset(Assets.images.assetsImgRatingNoreviews.path),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'history_no_order'.tr(),
            style: textStyle.bodyBoldBlackBig.copyWith(color: Colors.black87),
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: Text(
            'to_rate_empty_data_sub_title'.tr(),
            textAlign: TextAlign.center,
            style: textStyle.bodyMedium.copyWith(color: Colors.grey[600]!),
          ),
        ),
        const Spacer(flex: 5,),
      ],
    );
  }
}