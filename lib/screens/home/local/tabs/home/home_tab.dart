// home tab if not location -> loadlocation

import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/screens/home/local/location/finding_location.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/home/home_dish_row.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/home/home_flash_sale_row.dart';
import 'package:shopeefood_clone/vm/global/state_home_category.dart';
import 'package:shopeefood_clone/vm/global/state_home_now_service_categories.dart';
import 'package:shopeefood_clone/vm/global/state_user_location.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';
import 'package:shopeefood_clone/widgets/loading/lazy_load_scrollview.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../vm/global/state_home_tab_scroll.dart';
import '../../../../../widgets/banner/home_banner_widget.dart';
import '../../../../../widgets/flash_sale/flash_sale_countdown.dart';
import '../../../../../widgets/grid/home_category_grid.dart';
import '../../../../../widgets/list/home_now_service_categories_icon_row.dart';
import '../../../../../widgets/tab_bar/home_now_service_categories_tabbar.dart';
import '../../../../../widgets/list/tile/view_delivery_list_item.dart';
import '../../../../../widgets/loading/loading_indicator.dart';
import '../../../../../widgets/search_bar/home_search_bar_widget.dart';
import '../../location/deliver_to_widget.dart';
import 'home_collection_row.dart';

class TabHomeScreen extends ConsumerStatefulWidget {
  const TabHomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TabHomeScreen> createState() => _ScreenHomeTabState();
}

class _ScreenHomeTabState extends ConsumerState<TabHomeScreen> {
  late final ScrollController scrollController;
  late final ChangeNotifier homeScrollToTop;
  late final StateHomeTabScroll scrollState;
  bool showBackToHomeBtn = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollState = ref.read(StateHomeTabScroll.provider);
    homeScrollToTop = scrollState.homeScrollToTop;
    homeScrollToTop.addListener(_scrollToTop);

    scrollController.addListener(
      () {
        bool newValue = scrollController.offset > 500;
        if (newValue != showBackToHomeBtn) {
          showBackToHomeBtn = newValue;
          ref.read(StateHomeTabScroll.provider).showBackToTopBtn =
              showBackToHomeBtn;
        }
      },
    );
  }

  void _scrollToTop() {
    if (scrollController.hasClients) {
      scrollController.animateTo(0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.fastOutSlowIn);
    }
  }

  @override
  void dispose() {
    homeScrollToTop.removeListener(_scrollToTop);
    scrollController.dispose();
    Future.delayed(Duration.zero).then((value) {
      scrollState.showBackToTopBtn = false;
    });
    super.dispose();
  }

  GlobalKey myKey = GlobalKey();
  static const double paddingHorizontal = 10.0;

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var _stateLocation = ref.watch(StateUserLocation.provider);
    var _stateCategory = ref.watch(StateHomeCategory.provider);
    return Material(
      color: colors.homeBg,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8,
                      right: paddingHorizontal,
                      left: paddingHorizontal),
                  child: AppGestureDetector(
                      onTap: () {
                        AppRouting.goToAddressScreen(context);
                      },
                      child: const DeliverToWidget()),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                  child: HomeSearchBarWidget(
                    text: "McDonald's - Cheeseburger chỉ 1k",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: LazyLoadScrollView(
                    isLoading: false,
                    scrollOffset: 200,
                    onEndOfPage: () {
                      executeLoadMore();
                    },
                    child: RefreshIndicator(
                      onRefresh: () async {
                        var _state =
                            ref.read(StateHomeNowServiceCategories.provider);
                        _state.resetData();
                        await _state.loadNextPage();
                      },
                      child: CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          const SliverToBoxAdapter(
                            child: HomeBannerWidget(),
                          ),
                          SliverToBoxAdapter(
                            child: Container(
                              height: 180,
                              margin: const EdgeInsets.only(bottom: 10),
                              child: HomeCategoryGrid(
                                categories: _stateCategory.categories.data,
                              ),
                            ),
                          ),
                          const SliverToBoxAdapter(
                            child: ListDivider(),
                          ),
                          const SliverToBoxAdapter(
                            child: HomeCollectionsRow(),
                          ),
                          SliverToBoxAdapter(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 10,
                                  width: double.infinity,
                                  color: colors.homeDividerBg,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: HomeFlashSaleRow(),
                                ),
                              ],
                            ),
                          ),
                          const SliverToBoxAdapter(
                            child: ListDivider(),
                          ),
                          const SliverToBoxAdapter(
                            child: HomeDishRow(),
                          ),
                          ...buildSliversNowServices(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_stateLocation.loading) const FindingLocation(),
          ...buildLoading()
        ],
      ),
    );
  }

  List<Widget> buildSliversNowServices() {
    var colors = AppColor(context);
    var _stateDeliveryService =
        ref.watch(StateHomeNowServiceCategories.provider);
    var pageData = _stateDeliveryService.getCurrentData();
    if (pageData.data.isEmpty && _stateDeliveryService.prevData != null) {
      pageData = _stateDeliveryService.prevData!;
      //logger.w('This is Previous data');
    }

    return [
      const SliverToBoxAdapter(
        child: HomeNowServiceCategoriesIconRow(),
      ),
      SliverPinnedHeader(
        key: myKey,
        child: Stack(
          children: [
            HomeNowServiceCategoriesTabBar(
              onChanged: () {
                if (myKey.currentContext != null) {
                  Scrollable.ensureVisible(
                    myKey.currentContext!,
                    duration: const Duration(milliseconds: 300),
                    alignment: 0.001,
                    alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
                  );
                }
              },
            ),
          ],
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          var item = pageData.data[index];
          return Column(
            children: [
              AppGestureDetector(
                onTap: () {
                  AppRouting.goToShopDetailScreen(context);
                },
                child: ViewDeliveryTypeVerticalList(
                  data: item,
                ),
              ),
              const ListDivider(),
            ],
          );
        }, childCount: pageData.data.length),
      ),
      if (!pageData.isDone)
        SliverToBoxAdapter(
          child: Container(
            color: colors.homeDividerBg,
            padding: const EdgeInsets.only(bottom: 10),
            child: Center(
              child: DefaultLoadingIndicator(
                color: colors.primaryColor,
              ),
            ),
          ),
        ),
    ];
  }

  void executeLoadMore() {
    ref.read(StateHomeNowServiceCategories.provider).loadNextPage();
  }

  buildLoading() {
    var colors = AppColor(context);
    final loading = ref.watch(StateHomeNowServiceCategories.provider
        .select((value) => value.showFullScreenLoading));
    if (!loading) {
      return [];
    }
    return [
      ModalBarrier(color: Colors.grey.withOpacity(0.4)),
      Center(
        child: DefaultLoadingIndicator(
          color: colors.primaryColor,
        ),
      )
    ];
  }
}
