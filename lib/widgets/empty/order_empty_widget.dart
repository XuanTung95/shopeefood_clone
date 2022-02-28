import '../../utils/common_import.dart';

class OrderEmptyWidget extends StatelessWidget {
  const OrderEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Column(
      children: [
        SizedBox(width: double.infinity,),
        Spacer(flex: 5,),
        Expanded(
          flex: 3,
          child: Image.asset(Assets.images.assetsImgNotificationtabReview.path),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'no_on_going_orders'.tr(),
            style: textStyle.bodyBoldBlackBig.copyWith(color: Colors.black87),
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: Text(
            'no_on_going_orders_description'.tr(),
            textAlign: TextAlign.center,
            style: textStyle.bodyMedium.copyWith(color: Colors.grey[600]!),
          ),
        ),
        Spacer(flex: 5,),
      ],
    );
  }
}
