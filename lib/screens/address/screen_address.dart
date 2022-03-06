import 'package:shopeefood_clone/models/model_address.dart';
import 'package:shopeefood_clone/vm/global/state_user_address.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';
import 'package:shopeefood_clone/widgets/list/tile/simple_list_item.dart';

import '../../utils/common_import.dart';

class ScreenAddress extends ConsumerStatefulWidget {
  const ScreenAddress({Key? key}) : super(key: key);

  @override
  _ScreenAddressState createState() => _ScreenAddressState();
}

class _ScreenAddressState extends ConsumerState<ScreenAddress> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateUserAddress.provider);
    final colors = AppColor(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: colors.homeDividerBg,
          child: Column(
            children: [
              buildAppBar(colors),
              buildAddHomeAddress(colors),
              buildAddWorkAddress(colors),
              Expanded(
                child: buildListAddress(state, colors),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView buildListAddress(StateUserAddress state, AppColor colors) {
    return SingleChildScrollView(
                child: Column(
                  children: state.address.data.map((item) {
                    return Container(
                        color: colors.homeBg,
                        child: ViewAddressItem(address: item));
                  }).toList(),
                ),
              );
  }

  AppGestureDetector buildAddWorkAddress(AppColor colors) {
    return AppGestureDetector(
      onTap: () {},
      child: DividerWidget(
        child: Container(
          color: colors.homeBg,
          child: SimpleListItem(
              asset: Assets.images.assetsImgDeliveryaddressIcworkaddress.path,
              title: 'delivery_address_add_work_address'.tr()),
        ),
      ),
    );
  }

  AppGestureDetector buildAddHomeAddress(AppColor colors) {
    return AppGestureDetector(
      onTap: () {},
      child: DividerWidget(
        child: Container(
          color: colors.homeBg,
          child: SimpleListItem(
              asset: Assets.images.assetsImgDeliveryaddressIchomeaddress.path,
              title: 'delivery_address_add_home_address'.tr()),
        ),
      ),
    );
  }

  DividerWidget buildAppBar(AppColor colors) {
    return DividerWidget(
      child: Container(
          color: colors.homeBg,
          child: AppBarDefault(title: 'delivery_address_title'.tr())),
    );
  }
}

class ViewAddressItem extends StatelessWidget {
  final ModelAddresses address;

  const ViewAddressItem({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return DividerWidget(
      child: AppGestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  Assets.images
                      .assetsImgDeliveryaddressIcDeliveryPinAddressNormal.path,
                  width: 25,
                ),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.workAddress?.trim() ?? '',
                    style: textStyle.bodyBoldBlack.copyWith(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '[${address.workAddress?.trim() ?? ''}] ${address.address?.trim() ?? ''}',
                      style: textStyle.bodySmall2Grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      '${address.contactName?.trim() ?? ''}  ${address.phone?.text ?? ''}',
                      style: textStyle.bodySmall2Grey
                          .copyWith(fontSize: 12.5, color: Colors.black87),
                    ),
                  ),
                ],
              )),
              Text(
                'Edit',
                style: textStyle.bodySmall2Grey.copyWith(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
