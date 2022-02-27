import 'package:shopeefood_clone/vm/global/state_user_location.dart';

import '../../../../utils/common_import.dart';

class DeliverToWidget extends ConsumerWidget {
  const DeliverToWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var textStyle = AppTextStyle(context);
    var stateLocation = ref.watch(StateUserLocation.provider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'home_delivery_to'.tr(),
          style: textStyle.homeDeliverTo,
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Image.asset(
              Assets.images.assetsImgWeatherIcWeatherHot.path,
              width: 20,
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: Text(
                '[${stateLocation.currentLocation?.address ?? ''}]',
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: textStyle.homeDeliverToContent,
              ),
            ),
            Image.asset(
              Assets.images.assetsImgShipCommonArrowRight.path,
              width: 25,
            ),
          ],
        )
      ],
    );
  }
}