import 'package:shopeefood_clone/widgets/common/see_more_arrow.dart';

import '../../models/model_address.dart';
import '../../utils/common_import.dart';

class CheckOutAddressWidget extends StatelessWidget {
  final ModelAddresses address;

  const CheckOutAddressWidget({Key? key, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.images.assetsImgCheckoutIccheckoutlocationpin.path,
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'rebranding.delivery_address'.tr(),
                  style: textStyle.bodyMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${address.contactName ?? ''} - ${address.phone?.text ?? ''}',
                  style: textStyle.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${address.address ?? ''}',
                  style: textStyle.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'note'.tr(),
                  style: textStyle.bodySmallGrey,
                ),
              ],
            ),
          ),
          Container(
            height: double.infinity,
            child: const SeeMoreArrow(width: 20,),
          ),
        ],
      ),
    );
  }
}