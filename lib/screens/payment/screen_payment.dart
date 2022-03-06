import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';
import '../../widgets/divider/list_divider.dart';
import '../../widgets/list/tile/simple_list_item.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DividerWidget(
              child: AppBarDefault(
                title: 'payment_title'.tr(),
              ),
            ),
            const ListDivider(),
            DividerWidget(
                child: AppGestureDetector(
                  onTap: () {  },
                  child: SimpleListItem(
              title: 'AirPay'.tr(),
            ),
                )),
            DividerWidget(
                child: AppGestureDetector(
                  onTap: () {  },
                  child: SimpleListItem(
              title: 'rebranding.credit_and_debit_card_page_title'.tr(),
            ),
                )),
            DividerWidget(
              child: AppGestureDetector(
                onTap: () {  },
                child: SimpleListItem(
                  title: 'pay_by_now_credit'.tr(),
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: colors.homeDividerBg,
            ))
          ],
        ),
      ),
    );
  }
}