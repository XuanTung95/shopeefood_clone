import 'package:shopeefood_clone/utils/date_time_utils.dart';
import 'package:shopeefood_clone/utils/money_utls.dart';
import 'package:shopeefood_clone/vm/global/state_cart.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/button/app_select_button.dart';
import 'package:shopeefood_clone/widgets/common/see_more_arrow.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';
import 'package:shopeefood_clone/widgets/switch/setting_switch_widget.dart';

import '../../models/model_cart.dart';
import '../../utils/common_import.dart';
import '../../vm/global/state_user_address.dart';
import '../../widgets/address/check_out_address_widget.dart';
import '../../widgets/common/checkout_delivery_time_widget.dart';
import '../../widgets/common/checkout_list_dish_widget.dart';
import '../../widgets/common/colors_divider.dart';
import '../../widgets/rating/select_checked_widget.dart';
import '../../widgets/tab_bar/app_tabbar.dart';

class ScreenConfirmOrder extends ConsumerStatefulWidget {
  const ScreenConfirmOrder({Key? key}) : super(key: key);

  @override
  _ScreenConfirmOrderState createState() => _ScreenConfirmOrderState();
}

class _ScreenConfirmOrderState extends ConsumerState<ScreenConfirmOrder> {
  int paymentMethod = 1;
  int tipMethod = 0;

  var isDeliverToDoor = false;
  var isCutlery = false;

  @override
  Widget build(BuildContext context) {
    final cart = ref.watch(StateCart.provider);
    OrderItems? order;
    if (cart.orderItems.isNotEmpty) order = cart.orderItems[0];
    List<OrderDishes> dish = [];
    order?.orders?.userOrder?.forEach((element) {
      dish.addAll(element.orderDishes ?? []);
    });
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    final address = ref.watch(StateUserAddress.provider);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(
              title: 'confirm_order'.tr(),
            ),
            buildScrollContent(address, order, textStyle, dish, colors),
            buildBottomRow(textStyle, colors, dish)
          ],
        ),
      ),
    );
  }

  Expanded buildScrollContent(StateUserAddress address, OrderItems? order,
      AppTextStyle textStyle, List<OrderDishes> dish, AppColor colors) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTabBar(
              onTap: (int value) {},
              tabTitle: [
                'delivery_to'.tr(),
                'checkout_shipping_method_pickup'.tr()
              ],
            ),
            if (address.address.data.isNotEmpty)
              DividerWidget(
                child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    child: CheckOutAddressWidget(
                      address: address.address.data[0],
                    )),
              ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: CheckoutDeliveryTimeWidget(
                  text: getDeliveryTime(),
                )),
            ColorsDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                order?.restaurant?.name ?? '',
                style: textStyle.bodyBoldBlack,
              ),
            ),
            CheckoutListDishWidget(
              dish: dish,
            ),
            buildSubtotalRow(dish, textStyle),
            buildTotalRow(textStyle, dish, colors),
            const ListDivider(),
            buildAddVoucherRow(textStyle),
            buildTipForDriverRow(textStyle),
            buildEarnCoinRow(textStyle),
            buildDeliveryToDoorRow(textStyle),
            buildCutleryRow(),
            buildNoteRow(textStyle),
          ],
        ),
      ),
    );
  }

  DividerWidget buildTotalRow(AppTextStyle textStyle, List<OrderDishes> dish, AppColor colors) {
    return DividerWidget(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        '${'total'.tr()}',
                        style: textStyle.bodyBoldBlackBig,
                      ),
                      const Spacer(),
                      Text(
                        '${MoneyUtils.formatMoney(getTotalPrice(dish))}đ',
                        style: textStyle.bodyRegular.copyWith(
                            color: colors.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'rebranding.checkout_tax_included'.tr(),
                    style: textStyle.bodySmall2Grey,
                  ),
                ],
              ),
            ),
          );
  }

  DividerWidget buildSubtotalRow(List<OrderDishes> dish, AppTextStyle textStyle) {
    return DividerWidget(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                children: [
                  Text(
                    '${'subtotal'.tr()} (${dish.length} items)',
                    style: textStyle.bodySmall2Grey,
                  ),
                  const Spacer(),
                  Text(
                    '${MoneyUtils.formatMoney(getTotalPrice(dish))}đ',
                    style: textStyle.bodySmall2Grey,
                  ),
                ],
              ),
            ),
          );
  }

  DividerWidget buildNoteRow(AppTextStyle textStyle) {
    return DividerWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ConfirmOrderIconRow(
                text: 'note'.tr(),
                asset: Assets.images.assetsImgCheckoutIcnote.path,
                rightWidget: Row(
                  children: [
                    const Spacer(),
                    AppGestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'none'.tr(),
                            style: textStyle.bodySmallGrey
                                .copyWith(fontSize: 12.5),
                          ),
                          const SeeMoreArrow(width: 20),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }

  DividerWidget buildCutleryRow() {
    return DividerWidget(
            child: ConfirmOrderIconRow(
              text: 'no_use_plastic_cutlery'.tr(),
              asset: Assets.images.assetsImgCheckoutIcplasticcutlery.path,
              singleRow: true,
              rightWidget: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    Assets.images.assetsImgCommonIcQuestion.path,
                    width: 12,
                  ),
                  const Spacer(),
                  SwitchDefault(
                    onChanged: (value) {
                      setState(() {
                        isCutlery = !isCutlery;
                      });
                    },
                    selected: isCutlery,
                  ),
                ],
              ),
            ),
          );
  }

  DividerWidget buildDeliveryToDoorRow(AppTextStyle textStyle) {
    return DividerWidget(
            child: ConfirmOrderIconRow(
              text: 'address_deliver_to_door'.tr(),
              singleRow: true,
              asset: Assets.images.assetsImgCheckoutIcd2d.path,
              rightWidget: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    Assets.images.assetsImgCommonIcQuestion.path,
                    width: 12,
                  ),
                  const Spacer(),
                  Text(
                    '[5,000đ]',
                    style: textStyle.bodySmall2Grey
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                  SwitchDefault(
                    onChanged: (value) {
                      setState(() {
                        isDeliverToDoor = !isDeliverToDoor;
                      });
                    },
                    selected: isDeliverToDoor,
                  ),
                ],
              ),
            ),
          );
  }

  DividerWidget buildEarnCoinRow(AppTextStyle textStyle) {
    return DividerWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ConfirmOrderIconRow(
                text: 'coins_earn_shopee_coin'.tr(),
                asset: Assets.images.assetsImgCheckoutIcshopeecoins.path,
                rightWidget: Row(
                  children: [
                    const Spacer(),
                    AppGestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'coins_enable_now'.tr(),
                            style: textStyle.bodySmallGrey
                                .copyWith(fontSize: 12.5),
                          ),
                          const SeeMoreArrow(width: 20),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }

  DividerWidget buildTipForDriverRow(AppTextStyle textStyle) {
    return DividerWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ConfirmOrderIconRow(
                text: 'tip_for_driver'.tr(),
                asset: Assets.images.assetsImgCheckoutIctipfordriver.path,
                belowWidget: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        runSpacing: 10,
                        children: [
                          AppGestureDetector(
                            onTap: () {
                              setState(() {
                                tipMethod = 0;
                              });
                            },
                            child: SelectCheckedWidget(
                              text: 'none'.tr(),
                              width: null,
                              minWidth: 60,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              isSelected: tipMethod == 0,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppGestureDetector(
                            onTap: () {
                              setState(() {
                                tipMethod = 1;
                              });
                            },
                            child: SelectCheckedWidget(
                              text: '5k',
                              width: null,
                              minWidth: 60,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              isSelected: tipMethod == 1,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppGestureDetector(
                            onTap: () {
                              setState(() {
                                tipMethod = 2;
                              });
                            },
                            child: SelectCheckedWidget(
                              text: '10k',
                              width: null,
                              minWidth: 60,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              isSelected: tipMethod == 2,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppGestureDetector(
                            onTap: () {
                              setState(() {
                                tipMethod = 3;
                              });
                            },
                            child: SelectCheckedWidget(
                              text: 'Other'.tr(),
                              width: null,
                              minWidth: 60,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              isSelected: tipMethod == 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'tip_driver_description'.tr(),
                      style: textStyle.bodySmallGrey,
                    )
                  ],
                ),
              ),
            ),
          );
  }

  DividerWidget buildAddVoucherRow(AppTextStyle textStyle) {
    return DividerWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ConfirmOrderIconRow(
                text: 'checkout_add_promotion_code'.tr(),
                asset: Assets.images.assetsImgCheckoutIccheckoutvoucher.path,
                rightWidget: Row(
                  children: [
                    const Spacer(),
                    AppGestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'rebranding.select_voucher'.tr(),
                            style: textStyle.bodySmallGrey
                                .copyWith(fontSize: 12.5),
                          ),
                          const SeeMoreArrow(width: 20),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }

  Widget buildBottomRow(
      AppTextStyle textStyle, AppColor colors, List<OrderDishes> dish) {
    return DividerWidget(
      top: true,
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: AppGestureDetector(
                    onTap: () {
                      setState(() {
                        paymentMethod = 0;
                      });
                    },
                    child: SelectCheckedWidget(
                      text: 'AirPay'.tr(),
                      isSelected: paymentMethod == 0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: AppGestureDetector(
                    onTap: () {
                      setState(() {
                        paymentMethod = 1;
                      });
                    },
                    child: SelectCheckedWidget(
                      text: 'cash'.tr(),
                      isSelected: paymentMethod == 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Text(
              'other_payment_methods'.tr(),
              style: textStyle.bodyBoldBlack
                  .copyWith(color: Colors.blue, fontSize: 13),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
            child: AppSelectButton(
                text:
                    '${'rebranding.place_order'.tr()} - ${MoneyUtils.formatMoney(getTotalPrice(dish))}đ',
                onClick: () {}),
          )
        ],
      ),
    );
  }

  double getTotalPrice(List<OrderDishes> dish) {
    double ret = 0;
    for (var item in dish) {
      ret += (item.price?.value ?? 0) * (item.quantity ?? 0);
    }
    return ret;
  }

  String getDeliveryTime() {
    final now = DateTime.now();
    var time = DateTimeUtils.dateOutCheckoutFormat.format(now);
    time = time.replaceAll('{}', 'Today');
    return '${'shop_deliver_now'.tr()} - $time';
  }
}

class ConfirmOrderIconRow extends StatelessWidget {
  final String asset;

  final String text;
  final Widget? rightWidget;
  final Widget? belowWidget;
  final bool singleRow;

  const ConfirmOrderIconRow(
      {Key? key,
      required this.asset,
      required this.text,
      this.rightWidget,
      this.belowWidget,
      this.singleRow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Row(
      crossAxisAlignment:
          singleRow ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            asset,
            width: 20,
          ),
        ),
        if (singleRow) ...[
          Text(
            text,
            style: textStyle.bodyBoldBlack
                .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
          ),
          Expanded(child: rightWidget ?? const SizedBox()),
        ],
        if (!singleRow)
          Expanded(
              child: Column(
            children: [
              Row(
                children: [
                  Text(
                    text,
                    style: textStyle.bodyBoldBlack
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                  Expanded(child: rightWidget ?? const SizedBox()),
                ],
              ),
              belowWidget ?? const SizedBox(),
            ],
          ))
      ],
    );
  }
}