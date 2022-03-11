
import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_voucher_widget.dart';

import '../../../models/model_voucher.dart';
import '../../../utils/common_import.dart';
import '../../button/app_gesture_detector.dart';
import '../../empty/empty_voucher_widget.dart';

class ViewVoucherListWidget extends StatelessWidget {
  final List<ModelVoucher> vouchers;

  const ViewVoucherListWidget({Key? key, this.vouchers = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (vouchers.isEmpty) return const EmptyVoucherWidget();
    final colors = AppColor(context);
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              final item = vouchers[index];
              return AppGestureDetector(
                onTap: () {
                  AppRouting.goToMyVoucherVoucherDetailScreen(context, item);
                },
                child: Container(
                  color: colors.homeBg,
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: (index == vouchers.length - 1) ? 10 : 0),
                  child: ViewVoucherWidget(
                    voucher: item,
                  ),
                ),
              );
            },
            childCount: vouchers.length,
          ),
        )
      ],
    );
  }
}