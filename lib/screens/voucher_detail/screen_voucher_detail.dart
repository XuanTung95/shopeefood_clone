import 'package:clipboard/clipboard.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_select_button.dart';
import 'package:shopeefood_clone/widgets/empty/empty_voucher_widget.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';
import 'package:shopeefood_clone/widgets/toast/toast_widget.dart';

import '../../models/model_voucher.dart';
import '../../utils/common_import.dart';
import '../../utils/date_time_utils.dart';
import '../../widgets/button/app_gesture_detector.dart';
import '../../widgets/list/tile/view_voucher_widget.dart';

class ScreenVoucherDetail extends StatefulWidget {
  final ModelVoucher? voucher;

  const ScreenVoucherDetail({Key? key, this.voucher}) : super(key: key);

  @override
  _ScreenVoucherDetailState createState() => _ScreenVoucherDetailState();
}

class _ScreenVoucherDetailState extends State<ScreenVoucherDetail> {
  final toastKey = GlobalKey<ToastWidgetState>();

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                AppBarDefault(
                  title: 'rebranding.voucher_detail'.tr(),
                ),
                ...buildVoucherContent(context, colors, textStyle),
              ],
            ),
            ToastWidget(
              key: toastKey,
            ),
          ],
        ),
      ),
    );
  }

  buildVoucherContent(
      BuildContext context, AppColor colors, AppTextStyle textStyle) {
    if (widget.voucher == null) {
      return [const EmptyVoucherWidget()];
    }
    List<Widget> children = [];
    children.add(
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildVoucherImageRow(colors, textStyle),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: buildVoucherInfoRow(
                        'voucher_code_txt'.tr(),
                        widget.voucher?.code ?? '',
                        rightWidget: createCopyButton(textStyle),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: buildVoucherInfoRow(
                        'valid_time_txt'.tr(),
                        DateTimeUtils.getTimeFromTo(
                            widget.voucher?.startTime ?? '',
                            widget.voucher?.endTime ?? ''),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: buildVoucherInfoRow(
                        'applicable_merchant_txt'.tr(),
                        'voucher_applicable_for_verified_shop'.tr(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: buildVoucherInfoRow(
                        'shipping_method_txt'.tr(),
                        'shipping_method_delivery'.tr(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: buildVoucherInfoRow(
                        'term_condition_txt'.tr(),
                        widget.voucher?.conditionText ?? '',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    children.add(
      buildConfirmButton(),
    );
    return children;
  }

  Widget createCopyButton(AppTextStyle textStyle) {
    return AppGestureDetector(
      onTap: () async {
        try {
          await FlutterClipboard.copy(widget.voucher?.code ?? '');
        } catch (e) {
          logger.e(e);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'copy_txt'.tr(),
          style: textStyle.bodyMediumGrey.copyWith(color: Colors.blue),
        ),
      ),
    );
  }

  DividerWidget buildConfirmButton() {
    return DividerWidget(
      top: true,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: AppSelectButton(
          text: 'rebranding.voucher_selector_use'.tr(),
          onClick: () {},
        ),
      ),
    );
  }

  Stack buildVoucherImageRow(AppColor colors, AppTextStyle textStyle) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Image.asset(
            Assets
                .images
                .nodeModulesShopeernCommonimagesAssetsBackgroundEvoucherbackgroundimg
                .path,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            bottom: 0,
            left: 15,
            right: 15,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: colors.homeBg,
                        border: Border(
                          right: BorderSide(color: Colors.grey[300]!),
                          bottom: BorderSide(color: Colors.grey[300]!),
                        )),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 10,
                      child: ViewVoucherImage(voucher: widget.voucher!),
                    ),
                    Expanded(
                      flex: 20,
                      child: buildVoucherInfo(textStyle, colors),
                    ),
                  ],
                ),
              ],
            ),
        ),
      ],
    );
  }

  Widget buildVoucherInfo(AppTextStyle textStyle, AppColor colors) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ViewVoucherTitle(voucher: widget.voucher!),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ViewVoucherTagInfo(voucher: widget.voucher!),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildVoucherInfoRow(String topText, String botText,
      {Widget? rightWidget}) {
    final textStyle = AppTextStyle(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: textStyle.bodyRegular.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Flexible(
              child: Text(
                botText,
                style: textStyle.bodyMediumGrey,
              ),
            ),
            if (rightWidget != null) Flexible(child: rightWidget),
          ],
        ),
      ],
    );
  }
}