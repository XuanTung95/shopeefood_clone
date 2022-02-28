import 'package:shopeefood_clone/vm/global/state_most_ordered.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../vm/global/state_home_collections.dart';
import '../../../../../widgets/common/see_all_row.dart';
import '../../../../../widgets/list/home_collections_scroll.dart';
import '../../../../../widgets/list/most_ordered_scroll.dart';
import '../../../../../widgets/list/tile/delivery_list_item.dart';
import '../../../../../widgets/tab_bar/likes_tabbar.dart';
import '../order/search_filter_row.dart';
import 'local/like_filter_select_item_view.dart';

class TabLikeHome extends ConsumerStatefulWidget {
  const TabLikeHome({Key? key}) : super(key: key);

  @override
  _LikeTabViewState createState() => _LikeTabViewState();
}

class _LikeTabViewState extends ConsumerState<TabLikeHome> {
  final filterKey =
      GlobalObjectKey<LikeFilterSelectItemViewState>("likeFilterKey");

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Material(
      color: colors.homeBg,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'rebranding.likes_tab_title'.tr(),
                style: textStyle.appBarText,
              ),
            ),
          ),
          LikesTabBar(),
          Divider(
            thickness: 0.5,
            height: 0,
          ),
          buildSearchFilterRow(context),
          Expanded(
            child: Stack(
              children: [
                buildListContent(context),
                LikeFilterSelectItemView(
                  key: filterKey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildSearchFilterRow(BuildContext context) {
    final colors = AppColor(context);
    return Container(
      color: colors.homeDividerBg,
      child: SearchFilterRow(
        text1: 'all_services'.tr(),
        text2: '',
        text3: '',
        onClickIndex: (int index) {
          filterKey.currentState?.toggleVisible();
        },
      ),
    );
  }

  buildListContent(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: buildMostOrderRow(context),
        ),
        SliverToBoxAdapter(child: ListDivider()),
        buildLikesRow(context),
      ],
    );
  }

  buildMostOrderRow(BuildContext context) {
    var state = ref.watch(StateMostOrdered.provider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SeeAllRow(
              showSeeAll: state.mostOrdered.length > 9,
              onClick: () {},
              title: 'saved_page_most_ordered_section_title'.tr(),
            ),
          ),
          SizedBox(
            height: 190,
            child: MostOrdersScroll(
              maxShowItem: 9,
              clickSeeAll: () {},
              items: state.mostOrdered,
            ),
          ),
        ],
      ),
    );
  }

  buildLikesRow(BuildContext context) {
    var state = ref.watch(StateMostOrdered.provider);
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        var item = state.mostOrdered[index];
        return Column(
          children: [
            ViewDeliveryTypeVerticalList(
              data: item,
              isLike: true,
              showOutlets: false,
            ),
            Container(
              height: 10,
              width: double.infinity,
              color: AppColor(context).homeDividerBg,
            ),
          ],
        );
      }, childCount: state.mostOrdered.length),
    );
  }
}
