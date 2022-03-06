import 'dart:io';
import 'dart:math';

import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:measured_size/measured_size.dart';
import 'package:shopeefood_clone/models/model_menu_response.dart';
import 'package:shopeefood_clone/models/model_photo.dart';
import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/utils/share_utils.dart';
import 'package:shopeefood_clone/vm/global/state_cart.dart';
import 'package:shopeefood_clone/vm/global/state_restaurant_detail.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';
import 'package:shopeefood_clone/widgets/common/preferred_tag_widget.dart';
import 'package:shopeefood_clone/widgets/curves/custom_curves.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';
import 'package:shopeefood_clone/widgets/list/tile/simple_list_item.dart';
import 'package:shopeefood_clone/widgets/search_bar/home_search_bar_widget.dart';
import 'package:shopeefood_clone/widgets/tab_bar/app_tabbar.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../models/model_cart.dart';
import '../../models/model_feedback_response.dart';
import '../../models/model_shop_detail.dart';
import '../../utils/common_import.dart';
import '../../utils/widget_utils.dart';
import '../../vm/global/state_user_feedback.dart';
import '../../widgets/app_bar/app_bar_circle_button.dart';
import '../../widgets/bottom_sheet/my_basket_bottom_sheet.dart';
import '../../widgets/button/app_gesture_detector.dart';
import '../../widgets/common/category_layer.dart';
import '../../widgets/common/checkout_row.dart';
import '../../widgets/common/flying_circle_animation_widget.dart';
import '../../widgets/common/select_delivery_method_item.dart';
import '../../widgets/list/tile/view_dish_detail_tile.dart';
import '../../widgets/list/tile/view_user_comment.dart';
import '../../widgets/loading/lazy_load_scrollview.dart';
import '../../widgets/loading/loading_indicator.dart';
import '../../widgets/map/google_map_widget.dart';
import '../../widgets/promotions/view_promotion_list_tile.dart';
import '../../widgets/rating/rating_detail_widget.dart';
import '../../widgets/rating/rating_stars_widget.dart';
import '../../widgets/scroll_behavior/macos_scroll_behavior.dart';

class ScreenShopDetail extends ConsumerStatefulWidget {
  final String id = "id";

  const ScreenShopDetail({Key? key}) : super(key: key);

  @override
  _ScreenShopDetailState createState() => _ScreenShopDetailState();
}

class _ScreenShopDetailState extends ConsumerState<ScreenShopDetail>
    with SingleTickerProviderStateMixin {
  late final ScrollController scrollController;
  double appBarOpacity = 0;
  late final AnimationController animationController;
  late final Animation<double> imageZoomAnimation;
  late final ShopDetailScrollSize scrollSize;
  void Function(void Function())? setStateAppbar;
  DetailScreenScrollPhysics? scrollPhysics;
  final directionTracker = ScrollDirectionTracker();
  bool isLike = false;
  final categoryLayer = GlobalKey<SelectCategoryLayerState>();
  final basketSheetKey = GlobalKey<MyBasketBottomSheetState>();
  final Map<MenuInfos, GlobalObjectKey> _menuKeys = {};
  final flyingAnimationKey = GlobalKey<FlyingCircleAnimationWidgetState>();
  int selectedTab = 0;

  GlobalObjectKey getMenuKey(MenuInfos item) {
    if (!_menuKeys.containsKey(item)) {
      _menuKeys[item] = GlobalObjectKey(item);
    }
    return _menuKeys[item]!;
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    imageZoomAnimation =
        animationController.drive(CustomCurves.imageZoomAnimation());
    scrollController = ScrollController();
    scrollController.addListener(onScroll);
    scrollSize = ShopDetailScrollSize(context);

    WidgetsBinding.instance?.addPostFrameCallback(
      (timeStamp) {
        final state = ref.read(StateRestaurantDetail.provider(widget.id));
        state.init();
      },
    );
  }

  void onScroll() {
    calAppBarOpacity();
    categoryLayer.currentState?.runAnimation();
  }

  void calAppBarOpacity() {
    if (scrollController.hasClients) {
      double offset = scrollController.offset;
      var _opacity = offset / 150;
      _opacity = max(0, min(1.0, _opacity));
      if (_opacity != appBarOpacity) {
        setStateAppbar?.call(
          () {
            appBarOpacity = _opacity;
          },
        );
      }
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateRestaurantDetail.provider(widget.id));
    scrollPhysics ??= DetailScreenScrollPhysics(
        sizeTracker: scrollSize,
        parent: const ClampingScrollPhysics(),
        direction: directionTracker);
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: state.isLoading
          ? buildLoadingScreen(colors)
          : ScrollConfiguration(
              behavior: Platform.isMacOS
                  ? MacOsScrollBehavior()
                  : const ScrollBehavior(),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        buildListMenuLayer(state, colors, textStyle, context),
                        buildCategoryLayer(state, colors, textStyle, context),
                        buildFlyingCircleLayer(
                            state, colors, textStyle, context),
                        MyBasketBottomSheet(
                          key: basketSheetKey,
                          shopDetail: state.shopDetail!,
                        ),
                      ],
                    ),
                  ),
                  if (state.shopDetail?.id != null)
                    CheckoutRow(
                      restaurantId: state.shopDetail?.id ?? -1,
                      onTap: () {
                        basketSheetKey.currentState?.isOpen = true;
                      },
                    ),
                ],
              ),
            ),
    );
  }

  SafeArea buildLoadingScreen(AppColor colors) {
    return SafeArea(
          child: Column(
              children: [
                const AppBarDefault(title: ""),
                Expanded(
                    child: Center(
                  child: DefaultLoadingIndicator(
                    color: colors.primaryColor,
                  ),
                )),
              ],
            ),
        );
  }

  Widget buildListMenuLayer(StateRestaurantDetail state, AppColor colors,
      AppTextStyle textStyle, BuildContext context) {
    final commentState = ref.watch(StateUserFeedback.provider(widget.id));
    return RepaintBoundary(
      child: NotificationListener(
        onNotification: (notification) {
          calZoomImageAnimation(notification);
          calScrollDirection(notification);
          return false;
        },
        child: LazyLoadScrollView(
          isLoading: false,
          scrollOffset: 200,
          onEndOfPage: () {
            executeLoadMore();
          },
          child: RefreshIndicator(
            onRefresh: () {
              return Future.delayed(const Duration(seconds: 2));
            },
            child: CustomScrollView(
              controller: scrollController,
              physics: scrollPhysics,
              slivers: [
                buildAppBar(state),
                ...(state.isLoading)
                    ? [
                        SliverFillRemaining(
                          child: Center(
                            child: DefaultLoadingIndicator(
                              color: colors.primaryColor,
                            ),
                          ),
                        )
                      ]
                    : [
                        buildShopName(state, textStyle, colors),
                        buildTabBar(),
                        ...buildScrollContent(
                            context, textStyle, colors, state, commentState),
                      ]
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategoryLayer(StateRestaurantDetail state, AppColor colors,
      AppTextStyle textStyle, BuildContext context) {
    return Visibility(
      visible: selectedTab == 0,
      child: SelectCategoryLayer(
        key: categoryLayer,
        menus: state.menus.data,
        onChooseMenu: (item) {
          final key = getMenuKey(item);
          if (key.currentContext != null) {
            Scrollable.ensureVisible(key.currentContext!,
                duration: const Duration(milliseconds: 300));
          }
        },
      ),
    );
  }

  List<Widget> buildScrollContent(
      BuildContext context,
      AppTextStyle textStyle,
      AppColor colors,
      StateRestaurantDetail state,
      StateUserFeedback commentState) {
    switch (selectedTab) {
      case 0:
        return buildOrderView(context, textStyle, colors, state);
      case 1:
        return buildReviewsView(
            context, textStyle, colors, state, commentState);
      case 2:
        return buildInfoView(context, textStyle, colors, state);
    }
    return [];
  }

  List<Widget> buildInfoView(BuildContext context, AppTextStyle textStyle,
      AppColor colors, StateRestaurantDetail state) {
    return [
      SliverToBoxAdapter(
        child: DividerWidget(
          child: SizedBox(
            height: 200,
            child: GoogleMapWidget(
              location: LatLng(state.shopDetail?.position?.latitude ?? 0,
                  state.shopDetail?.position?.longitude ?? 0),
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: DividerWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SimpleListItem(
              asset: Assets.images.assetsImgMerchantIcLocation.path,
              title: state.shopDetail?.address ?? '',
              iconSize: 20,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: DividerWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SimpleListItem(
              asset: Assets.images.assetsImgMerchantIcCategory.path,
              title:
                  '${'shop_category'.tr()}: ${_getShopCategory(state.shopDetail?.categories) ?? ''}',
              iconSize: 20,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: DividerWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SimpleListItem(
              asset: Assets.images.assetsImgMerchantIcPrice.path,
              title:
                  '${'shop_avg_price'.tr()}: ${state.shopDetail?.delivery?.avgPrice?.text ?? ''}',
              iconSize: 20,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: DividerWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SimpleListItem(
              asset: Assets.images.assetsImgMerchantIcTime.path,
              title: '${'shop_opening_hours'.tr()}',
              iconSize: 20,
              tailWidget: Text(
                '00:00 - 23:59',
                style: textStyle.bodySmall,
              ),
            ),
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: ListDivider(),
      )
    ];
  }

  List<Widget> buildReviewsView(
      BuildContext context,
      AppTextStyle textStyle,
      AppColor colors,
      StateRestaurantDetail state,
      StateUserFeedback commentState) {
    if (commentState.pageData.shouldLoadFirstData) {
      WidgetsBinding.instance?.addPostFrameCallback((value) {
        commentState.loadData();
      });
    }
    List<Widget> ret = [];
    ret.add(
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: RatingDetailWidget(
            rating: state.shopDetail?.rating,
            onSelected: (value) {
              commentState.pageData.reset();
              commentState.loadData();
              print('isLoading: ${commentState.pageData.isLoading}');
            },
          ),
        ),
      ),
    );
    ret.add(
      SliverToBoxAdapter(
        child: DividerWidget(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Row(
              children: [
                Image.asset(
                  Assets.images.assetsImgCommonIcorangedotselected.path,
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'review_option_with_comment_only'.tr(),
                  style: textStyle.bodySmallGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ret.add(SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final ModelUserFeedbacks comment = commentState.pageData.data[index];
        return ViewUserComment(comment: comment);
      }, childCount: commentState.pageData.data.length),
    ));
    if (!commentState.pageData.isDone) {
      ret.add(
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: Center(
              child: DefaultLoadingIndicator(
                color: colors.primaryColor,
              ),
            ),
          ),
        ),
      );
    }
    return ret;
  }

  List<Widget> buildOrderView(BuildContext context, AppTextStyle textStyle,
      AppColor colors, StateRestaurantDetail state) {
    List<Widget> listMenus = [];
    final cart = ref.watch(StateCart.provider);
    for (var menu in state.menus.data) {
      listMenus.addAll([
        SliverToBoxAdapter(
          key: getMenuKey(menu),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              '${menu.dishTypeName ?? ''} (${menu.dishes?.length ?? 0})',
              style: textStyle.bodyBoldBlackBig
                  .copyWith(color: textStyle.textColorGrey, fontSize: 14),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final item = menu.dishes![index];
            OrderDishes orderDish =
                cart.getOrderDishFromMenu(state.shopDetail!, item);
            return AppGestureDetector(
              onTap: () {
                AppRouting.goToShopDetailDishScreen(
                    context, item, state.shopDetail!);
              },
              child: ViewDishDetailTile(
                menu: item,
                orderDish: orderDish,
                onClickText: (count) {
                  orderDish.quantity = min(999, max(0, count));
                  cart.addRemoveDish(orderDish, state.shopDetail!);
                },
                onClickAdd: (bool isAdd, Offset? clickPos) {
                  orderDish.quantity = min(999,
                      max(0, (orderDish.quantity ?? 0) + (isAdd ? 1 : -1)));
                  cart.addRemoveDish(orderDish, state.shopDetail!);
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
          }, childCount: menu.dishes?.length ?? 0),
        )
      ]);
    }
    return [
      const SliverToBoxAdapter(
          child: DividerWidget(
        child: SelectDeliveryMethodItem(),
      )),
      SliverToBoxAdapter(
          child: DividerWidget(
        child: ViewPromotionListTile(
            promotions: state.shopDetail?.promotions ?? []),
      )),
      ...listMenus,
    ];
  }

  void calScrollDirection(Object? notification) {
    if (notification is UserScrollNotification) {
      if (notification.direction == ScrollDirection.reverse) {
        directionTracker.isUp = true;
      } else {
        directionTracker.isUp = false;
      }
    }
  }

  void calZoomImageAnimation(Object? notification) {
    if (notification is OverscrollNotification) {
      if (notification.velocity < -1000 && !animationController.isAnimating) {
        animationController.forward(from: 0);
      }
    }
  }

  SliverPinnedHeader buildTabBar() {
    return SliverPinnedHeader(
      child: AppTabBar(
        tabTitle: ['general_order'.tr(), 'review'.tr(), 'information'.tr()],
        onTap: (int value) {
          setState(() {
            selectedTab = value;
          });
        },
      ),
    );
  }

  SliverToBoxAdapter buildShopName(
      StateRestaurantDetail state, AppTextStyle textStyle, AppColor colors) {
    Widget child;
    if (state.isLoading) {
      child = const SizedBox();
    } else {
      child = Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildNameRow(state.shopDetail!),
            Row(
              children: [
                Flexible(
                    child: FittedBox(
                  child: Row(
                    children: [
                      RatingStarWidget(
                        rating: state.shopDetail?.rating?.avg ?? 0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${state.shopDetail?.rating?.avg ?? 0} (${state.shopDetail?.rating?.totalReview ?? 0}+ Reviews) ',
                        style: textStyle.bodySmall,
                        maxLines: 1,
                      ),
                      Container(
                        color: Colors.grey[300],
                        width: 2,
                        height: 15,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      Text(
                        '20 Mins ',
                        style: textStyle.bodySmall,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLike = !isLike;
                          });
                        },
                        child: Image.asset(
                          isLike
                              ? Assets.images.assetsImgCommonLike.path
                              : Assets
                                  .images
                                  .nodeModulesShopeernCommonimagesAssetsCommoniconHeartgrayicon
                                  .path,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const ListDivider(),
          ],
        ),
      );
    }
    return SliverToBoxAdapter(
      child: MeasuredSize(
        onChange: (Size size) {
          scrollSize.titleHeight = size.height;
        },
        key: scrollSize.titleRowKey,
        child: child,
      ),
    );
  }

  buildNameRow(ModelShopDetail detail) {
    var textStyle = AppTextStyle(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: RichText(
        text: TextSpan(
          children: [
            if (detail.isQualityMerchant ?? false)
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: PreferredTagWidget(
                    text: 'QUALITY'.tr(),
                  ),
                ),
              ),
            if (detail.isQualityMerchant ?? false)
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Image.asset(
                    Assets.images.assetsImgMerchantMerchantVerifiedIcon.path,
                    width: 22,
                  ),
                ),
              ),
            TextSpan(
                text: detail.name ?? '',
                style: textStyle.bodyBoldBlack.copyWith(fontSize: 18)),
          ],
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  SliverStack buildAppBar(StateRestaurantDetail state) {
    return SliverStack(
      insetOnOverlap: false, // defaults to false
      children: <Widget>[
        if (!state.isLoading)
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            expandedHeight: scrollSize.shopImageHeight(),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              background: ScaleTransition(
                scale: imageZoomAnimation,
                child: AppImageNetworkWidget(
                  url: ImageUtils.getIconImage(state.shopDetail?.photos),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        // if (!state.isLoading)
        //   SliverPersistentHeader(
        //       delegate: ShopImageHeaderDelegate(
        //           scrollSize.shopImageHeight(),
        //           state.deliveryDetail?.photos ?? [],
        //           imageZoomAnimation)),
        SliverPinnedHeader(
            child: Container(
          height: scrollSize.tabBarHeight(),
          child: StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              setStateAppbar = setState;
              return Stack(
                fit: StackFit.expand,
                children: [
                  Padding(
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
                        buildAppBarButton(
                            context,
                            Assets
                                .images
                                .nodeModulesShopeernUicommonSrcComponentsActionbarIconSearchIcSearch
                                .path,
                            () {},
                            color: Colors.white),
                        const SizedBox(
                          width: 10,
                        ),
                        buildAppBarButton(
                          context,
                          Assets.images.assetsIcMapShare.path,
                          () {
                            if (state.shopDetail != null) {
                              String shareContext =
                                  '${state.shopDetail!.name ?? ''} ${state.shopDetail!.address ?? ''} ${state.shopDetail!.url ?? ''}';
                              ShareUtils.shareText(shareContext);
                            }
                          },
                          color: Colors.white,
                          padding: const EdgeInsets.all(2),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: appBarOpacity,
                    child: Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.only(top: scrollSize.statusBarHeight()),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          buildAppBarButton(
                              context,
                              Assets
                                  .images
                                  .nodeModulesShopeernCommonimagesAssetsCommoniconArrowbackicon
                                  .path, () {
                            context.pop();
                          }, bgColor: Colors.transparent),
                          const Expanded(
                              child: SizedBox(
                            height: 35,
                            child: HomeSearchBarWidget(
                              text: 'Find Item at ',
                            ),
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          buildAppBarButton(
                            context,
                            Assets.images.assetsIcMapShare.path,
                            () {
                              String shareContext =
                                  '${state.shopDetail!.name ?? ''} ${state.shopDetail!.address ?? ''} ${state.shopDetail!.url ?? ''}';
                              ShareUtils.shareText(shareContext);
                            },
                            bgColor: Colors.transparent,
                            color: Colors.redAccent,
                            padding: const EdgeInsets.all(2),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        )),
      ],
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

  buildFlyingCircleLayer(StateRestaurantDetail state, AppColor colors,
      AppTextStyle textStyle, BuildContext context) {
    return FlyingCircleAnimationWidget(
      key: flyingAnimationKey,
    );
  }

  _getShopCategory(List<String>? categories) {
    if (categories == null || categories.isEmpty) {
      return '';
    }
    String ret = '';
    for (int i = 0; i < categories.length; i++) {
      ret += categories[i];
      if (i < categories.length - 1) {
        ret += ', ';
      }
    }
    return ret;
  }

  void executeLoadMore() {
    if (selectedTab == 1) {
      ref.read(StateUserFeedback.provider(widget.id)).loadData();
    }
  }
}

class ShopDetailScrollSize {
  final BuildContext context;
  final GlobalKey titleRowKey = GlobalKey();

  ShopDetailScrollSize(this.context);

  double tabBarHeight() {
    return statusBarHeight() + 50;
  }

  double statusBarHeight() {
    return MediaQuery.of(context).padding.top;
  }

  double shopImageHeight() {
    return 200;
  }

  double _titleHeight = 0;

  set titleHeight(double value) {
    _titleHeight = value;
  }

  double shopTitleRowHeight() {
    if (_titleHeight == 0) {
      WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
        logger.i('Get Title Height');
        final BuildContext? context = titleRowKey.currentContext;
        if (context == null) return;
        final RenderObject? box = context.findRenderObject();
        if (box is RenderBox) {
          _titleHeight = box.size.height;
        }
      });
    }
    return _titleHeight;
  }

  double autoSnapOffset() {
    final titleHeight = shopTitleRowHeight();
    return (shopImageHeight() + statusBarHeight()) -
        tabBarHeight() +
        titleHeight;
  }
}

class ScrollDirectionTracker {
  bool isUp = false;
}

class DetailScreenScrollPhysics extends ScrollPhysics {
  final ShopDetailScrollSize sizeTracker;
  final ScrollDirectionTracker direction;

  final mSpring = SpringDescription.withDampingRatio(
    mass: 0.5,
    stiffness: 300.0,
    ratio: 1.1,
  );

  DetailScreenScrollPhysics(
      {required this.direction,
      required this.sizeTracker,
      ScrollPhysics? parent})
      : super(parent: parent);

  @override
  ScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return DetailScreenScrollPhysics(
        direction: direction,
        sizeTracker: sizeTracker,
        parent: buildParent(ancestor));
  }

  // double _getPage(ScrollMetrics position) {
  //   return position.pixels / position.viewportDimension;
  // }
  //
  // double _getPixels(ScrollMetrics position, double page) {
  //   return page * position.viewportDimension;
  // }

  bool _shouldAutoScroll(ScrollMetrics position) {
    return position.pixels < sizeTracker.autoSnapOffset();
  }

  double _getTargetPixels(
      ScrollMetrics position, Tolerance tolerance, double velocity) {
    return direction.isUp ? sizeTracker.autoSnapOffset() : 0;
    // double page = _getPage(position);
    // if (velocity < -tolerance.velocity)
    //   page -= 0.5;
    // else if (velocity > tolerance.velocity) page += 0.5;
    // return _getPixels(position, page.roundToDouble());
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at a page boundary.
    bool _autoScroll = _shouldAutoScroll(position);
    if (_autoScroll == false ||
        (velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }
    final Tolerance tolerance = this.tolerance;
    final double target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(mSpring, position.pixels, target, velocity,
          tolerance: tolerance);
    }
    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}

class ShopImageHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final Animation<double> imageZoomAnimation;
  final List<Photos> photos;

  ShopImageHeaderDelegate(this.maxHeight, this.photos, this.imageZoomAnimation);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ScaleTransition(
      scale: imageZoomAnimation,
      child: AppImageNetworkWidget(
        url: ImageUtils.getIconImage(photos),
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
