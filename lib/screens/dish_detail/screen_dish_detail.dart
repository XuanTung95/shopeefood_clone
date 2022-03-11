import 'dart:io';
import 'dart:math';

import 'package:shopeefood_clone/models/model_menu_response.dart';
import 'package:shopeefood_clone/utils/app_config.dart';
import 'package:shopeefood_clone/vm/global/state_cart.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../models/model_cart.dart';
import '../../models/model_shop_detail.dart';
import '../../routing/app_routing.dart';
import '../../utils/common_import.dart';
import '../../utils/money_utls.dart';
import '../../utils/widget_utils.dart';
import '../../widgets/app_bar/app_bar_circle_button.dart';
import '../../widgets/bottom_sheet/my_basket_bottom_sheet.dart';
import '../../widgets/button/app_gesture_detector.dart';
import '../../widgets/common/add_delete_icon_widget.dart';
import '../../widgets/common/app_image_widget.dart';
import '../../widgets/common/checkout_row.dart';
import '../../widgets/common/flying_circle_animation_widget.dart';
import '../../widgets/scroll_behavior/macos_scroll_behavior.dart';
import '../error/screen_error.dart';
import '../screen_detail/screen_detail.dart';

class ScreenDishDetail extends ConsumerStatefulWidget {
  final ModelMenu? menu;
  final ModelShopDetail? shopDetail;

  const ScreenDishDetail({Key? key, this.shopDetail, this.menu})
      : super(key: key);

  @override
  _ScreenDishDetailState createState() => _ScreenDishDetailState();
}

class _ScreenDishDetailState extends ConsumerState<ScreenDishDetail> {
  DetailScreenScrollPhysics? scrollPhysics;
  late final ShopDetailScrollSize scrollSize;
  final flyingAnimationKey = GlobalKey<FlyingCircleAnimationWidgetState>();
  final basketSheetKey = GlobalKey<MyBasketBottomSheetState>();

  @override
  void initState() {
    super.initState();
    scrollSize = ShopDetailScrollSize(context);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.menu == null || widget.shopDetail == null) {
      return const ScreenError();
    }
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: ScrollConfiguration(
        behavior:
            Platform.isMacOS ? MacOsScrollBehavior() : const ScrollBehavior(),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      buildAppBar(),
                      SliverToBoxAdapter(
                        child: DividerWidget(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildDishNameRow(textStyle),
                                buildDishDescRow(
                                  context,
                                  textStyle,
                                ),
                                buildSoldRow(
                                  context,
                                  textStyle,
                                ),
                                buildPrice(
                                  context,
                                  textStyle,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'review'.tr(),
                                  style: textStyle.bodyBoldBlackBig,
                                ),
                              ),
                              Image.asset(
                                Assets.images.assetsImgRatingNoreviews.path,
                                width: 130,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'review_empty_review_text'.tr(),
                                  style: textStyle.bodyBoldBlackBig
                                      .copyWith(color: Colors.black87),
                                ),
                              ),
                              FractionallySizedBox(
                                widthFactor: 0.8,
                                child: Text(
                                  'review_empty_review_text_description'.tr(),
                                  textAlign: TextAlign.center,
                                  style: textStyle.bodyMedium
                                      .copyWith(color: Colors.grey[600]!),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  FlyingCircleAnimationWidget(
                    key: flyingAnimationKey,
                  ),
                  MyBasketBottomSheet(
                    key: basketSheetKey,
                    shopDetail: widget.shopDetail!,
                  ),
                ],
              ),
            ),
            CheckoutRow(
              restaurantId: widget.shopDetail?.id ?? -1,
              clickViewOrder: () {
                basketSheetKey.currentState?.isOpen = true;
              },
              clickCheckout: () {
                AppRouting.goToShopDetailDishDetailConfirmOrderScreen(
                    context, widget.menu!, widget.shopDetail!);
              },
            ),
          ],
        ),
      ),
    );
  }

  buildAppBarButton(
    BuildContext context,
    String asset,
    VoidCallback onTap, {
    Color? color,
    Color bgColor = const Color(0x49000000),
    EdgeInsets padding = const EdgeInsets.all(5),
  }) {
    return AppBarCircleButton(
        asset: asset,
        color: color,
        bgColor: bgColor,
        padding: padding,
        onTap: onTap);
  }

  SliverStack buildAppBar() {
    return SliverStack(
      insetOnOverlap: false, // defaults to false
      children: <Widget>[
        SliverToBoxAdapter(
          child: SizedBox(
            height: 250,
            child: AppImageNetworkWidget(
              url: ImageUtils.getIconImage(widget.menu?.photos,
                  highQuality: true),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPinnedHeader(
            child: SizedBox(
          height: scrollSize.tabBarHeight(),
          child: Padding(
            padding: EdgeInsets.only(top: scrollSize.statusBarHeight()),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                buildAppBarButton(
                  context,
                  Assets
                      .images
                      .nodeModulesShopeernCommonimagesAssetsCommoniconArrowbackwhiteicon
                      .path,
                  () {
                    context.pop();
                  },
                ),
                const Spacer(),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }

  buildDishNameRow(AppTextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: widget.menu?.name ?? '',
                style: textStyle.bodyBoldBlack.copyWith(fontSize: 18)),
          ],
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  buildDishDescRow(BuildContext context, AppTextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.menu?.description ?? '',
              style: textStyle.bodySmallGrey,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  buildSoldRow(BuildContext context, AppTextStyle textStyle) {
    int sold = widget.menu?.totalOrder ?? 0;
    String like = widget.menu?.totalLike ?? '0';
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        children: [
          Text(
            sold <= 0 ? '' : '${widget.menu?.totalOrder ?? 0}+ sold',
            style: textStyle.bodySmallGrey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (like != '0')
            Container(
              width: 1,
              height: 15,
              color: Colors.grey[300],
              margin: const EdgeInsets.symmetric(horizontal: 5),
            ),
          Text(
            like == '0' ? '' : '$like likes',
            style: textStyle.bodySmallGrey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  buildPrice(BuildContext context, AppTextStyle textStyle) {
    final cart = ref.watch(StateCart.provider);
    OrderDishes orderDish =
        cart.getOrderDishFromMenu(widget.shopDetail!, widget.menu!);

    final colors = AppColor(context);
    String finalPrice = widget.menu?.price?.getPrice ?? ' ';
    String oldPrice = '';
    if (widget.menu?.discountPrice != null) {
      oldPrice = finalPrice;
      finalPrice =
          '${MoneyUtils.formatMoney(widget.menu!.discountPrice!.value ?? 0)}${widget.menu?.discountPrice?.unit ?? ''}';
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Row(
        children: [
          Text(
            oldPrice,
            style: textStyle.bodyRegular.copyWith(
                color: textStyle.textColorGrey3,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.lineThrough,
                fontSize: 15),
            maxLines: 1,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
          ),
          if (oldPrice.isNotEmpty)
            const SizedBox(
              width: 10,
            ),
          Expanded(
            child: Text(
              finalPrice,
              style: textStyle.bodyRegular.copyWith(
                  color: colors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Builder(builder: (context) {
            return AppGestureDetector(
              onTap: () {
                Offset? clickPos;
                clickPos = WidgetUtils.getWidgetGlobalPosition(context);
                final state = flyingAnimationKey.currentState;
                if (clickPos != null && state != null) {
                  Offset? pos =
                      WidgetUtils.getWidgetGlobalPosition(state.context);
                  Size? size = WidgetUtils.getWidgetSize(state.context);
                  if (pos != null && size != null) {
                    state.startAnimation(
                      FlyingCircleData(
                          startLeft: clickPos.dx,
                          startBot: pos.dy + size.height - clickPos.dy,
                          endLeft: 20,
                          endBot: 0),
                    );
                  }
                }
              },
              child: AddDeleteIconWidget(
                count: orderDish.quantity ?? 0,
                id: widget.menu!.id,
                onClickText: (count) {
                  orderDish.quantity =
                      min(AppConfig.MAX_ITEM_ORDER, max(0, count));
                  cart.addRemoveDish(orderDish, widget.shopDetail!);
                },
                onClick: (BuildContext context, bool isAdd) {
                  Offset? clickPos;
                  clickPos = WidgetUtils.getWidgetGlobalPosition(context);
                  orderDish.quantity = min(AppConfig.MAX_ITEM_ORDER,
                      max(0, (orderDish.quantity ?? 0) + (isAdd ? 1 : -1)));
                  cart.addRemoveDish(orderDish, widget.shopDetail!);
                  if (isAdd) {
                    final state = flyingAnimationKey.currentState;
                    if (clickPos != null && state != null) {
                      Offset? pos =
                          WidgetUtils.getWidgetGlobalPosition(state.context);
                      Size? size = WidgetUtils.getWidgetSize(state.context);
                      if (pos != null && size != null) {
                        state.startAnimation(
                          FlyingCircleData(
                              startLeft: clickPos.dx,
                              startBot: pos.dy + size.height - clickPos.dy,
                              endLeft: 20,
                              endBot: 0),
                        );
                      }
                    }
                  }
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
