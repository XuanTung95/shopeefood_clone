import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/utils/date_time_utils.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../../models/model_voucher.dart';
import '../../common/see_more_arrow.dart';
import 'view_delivery_list_item.dart';

class ViewVoucherWidget extends StatelessWidget {
  final ModelVoucher voucher;

  const ViewVoucherWidget({Key? key, required this.voucher}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    final expire = DateTimeUtils.getVoucherExpireDay(voucher);
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 10,
            child: buildVoucherImage(textStyle),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 20,
            child: buildVoucherInfo(textStyle, expire, colors),
          ),
          buildUseAndToC(textStyle, colors)
        ],
      ),
    );
  }

  Container buildUseAndToC(AppTextStyle textStyle, AppColor colors) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 2),
      child: Column(
        children: [
          if (voucher.status == 1)
            Row(
              children: [
                Text(
                  'use'.tr(),
                  style: textStyle.bodySmall
                      .copyWith(fontSize: 12, color: colors.primaryColor),
                ),
                SeeMoreArrow(
                  width: 15,
                  color: colors.primaryColor,
                ),
              ],
            ),
          const Spacer(),
          Text('term_condition_txt'.tr(),
              style: textStyle.bodySmall.copyWith(
                  fontSize: 12,
                  color:
                      (voucher.status == 1) ? Colors.blue : Colors.grey[400])),
        ],
      ),
    );
  }

  Padding buildVoucherInfo(
      AppTextStyle textStyle, Duration? expire, AppColor colors) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ViewVoucherTitle(voucher: voucher),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ViewVoucherTagInfo(voucher: voucher),
          ),
          if (voucher.status == 1 && expire != null && expire.inDays > 0)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                '${'common_expiring'.tr()}: ${'expired_days_left'.tr(args: [
                      '${expire.inDays}'
                    ])}',
                style: textStyle.bodySmall2Grey.apply(
                  color: colors.primaryColor,
                ),
              ),
            ),
          if (voucher.status == 5)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                '${'common_expired_on'.tr()}: ${DateTimeUtils.getVoucherExpiredOn(voucher)}',
                style: textStyle.bodySmall2Grey,
              ),
            ),
        ],
      ),
    );
  }

  Widget buildVoucherImage(AppTextStyle textStyle) {
    return ViewVoucherImage(voucher: voucher);
  }
}

class ViewVoucherTitle extends StatelessWidget {
  const ViewVoucherTitle({
    Key? key,
    required this.voucher,
  }) : super(key: key);

  final ModelVoucher voucher;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Text(
      voucher.title ?? '',
      style: textStyle.bodyBoldBlack,
    );
  }
}

class ViewVoucherTagInfo extends StatelessWidget {
  const ViewVoucherTagInfo({
    Key? key,
    required this.voucher,
  }) : super(key: key);

  final ModelVoucher voucher;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 6,
      spacing: 10,
      children: voucher.tagInfos
              ?.map((item) => RedBorderText(text: item.name ?? ''))
              .toList() ??
          [],
    );
  }
}

class ViewVoucherImage extends StatelessWidget {
  final BoxFit fit;

  const ViewVoucherImage({
    Key? key,
    required this.voucher,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  final ModelVoucher voucher;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Stack(
      children: [
        (voucher.iconUrl == null)
            ? AppImageNetworkWidget(
                fit: fit,
                url: voucher.icon?.background?.value ?? '',
                loadingWidget: const AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
                color: voucher.status == 1 ? null : Colors.grey[300],
              )
            : AppImageNetworkWidget(
                fit: fit,
                url: voucher.iconUrl ?? '',
                loadingWidget: const AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
              ),
        if (voucher.iconUrl == null)
          Positioned.fill(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Image.asset(
                    Assets.images.icNotifyNowiconWhite.path,
                    width: 60,
                  ),
                ),
                Text(
                  voucher.icon?.text ?? '',
                  style: textStyle.bodySmall2Grey.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
      ],
    );
  }
}
