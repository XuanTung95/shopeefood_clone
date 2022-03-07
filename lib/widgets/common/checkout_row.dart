import 'package:badges/badges.dart';
import 'package:shopeefood_clone/utils/money_utls.dart';
import 'package:shopeefood_clone/vm/global/state_cart.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';

class CheckoutRow extends ConsumerWidget {
  final int restaurantId;
  final double height;
  final VoidCallback? clickViewOrder;
  final VoidCallback? clickCheckout;


  const CheckoutRow({Key? key, required this.restaurantId, this.clickViewOrder, this.clickCheckout, this.height = 60})
      : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final cart = ref.watch(StateCart.provider);
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    final orderDishes = cart.orderDishes(restaurantId);
    return Stack(
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 500),
          child: SizedBox(
            height: orderDishes.isEmpty ? 0 : height,
            width: double.infinity,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: height,
            child: DividerWidget(
              bottom: false,
              top: true,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: AppGestureDetector(
                        onTap: () {
                          clickViewOrder?.call();
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.topRight,
                                  children: [
                                    Badge(
                                      badgeColor: colors.primaryColor,
                                      position: const BadgePosition(top: -5, end: -0),
                                      badgeContent: Text('${orderDishes.length}',
                                          style: textStyle.bodyBoldSmallWhite
                                              .copyWith(fontSize: 9)),
                                      child: Container(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: FractionallySizedBox(
                                          heightFactor: 0.7,
                                          child: Image.asset(
                                            Assets.images.assetsImgMerchantIcbasket
                                                .path,
                                            width: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text('${MoneyUtils.formatMoney(cart.totalPriceOf(restaurantId))}đ',
                                style: textStyle.bodyRegular.copyWith(
                                    color: colors.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppGestureDetector(
                      onTap: () {
                        clickCheckout?.call();
                      },
                      child: Container(
                        color: colors.primaryColor,
                        height: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Text(
                          'check_out'.tr(),
                          textAlign: TextAlign.center,
                          style: textStyle.bodyRegular.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
