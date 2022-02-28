import 'package:shopeefood_clone/vm/global/state_home_now_service_categories.dart';

import '../../utils/common_import.dart';

class HomeNowServiceCategoriesTabBar extends ConsumerStatefulWidget {
  final VoidCallback? onChanged;

  const HomeNowServiceCategoriesTabBar({Key? key, this.onChanged}) : super(key: key);

  @override
  _HomeNowServiceCategoriesTabBarState createState() =>
      _HomeNowServiceCategoriesTabBarState();
}

class _HomeNowServiceCategoriesTabBarState
    extends ConsumerState<HomeNowServiceCategoriesTabBar>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    var style = textStyle.bodyBoldBlack;
    return Container(
      color: colors.homeBg,
      child: Column(
        children: [
          SizedBox(
            height: 45,
            child: TabBar(
              onTap: (value) {
                var state = ref.read(StateHomeNowServiceCategories.provider);
                state.setSelectedFilter(value);
                widget.onChanged?.call();
              },
              padding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: const EdgeInsets.symmetric(horizontal: 1),
              indicatorColor: colors.primaryColor,
              labelColor: colors.primaryColor,
              labelStyle: style,
              unselectedLabelStyle: style.copyWith(fontWeight: FontWeight.w400),
              unselectedLabelColor: textStyle.textColorBlack,
              controller: controller,
              tabs: [
                buildTabItem('Nearby'),
                buildTabItem('Top Sales'),
                buildTabItem("Best Rated"),
                buildTabItem('Fast'),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[100],
          ),
        ],
      ),
    );
  }

  buildTabItem(String text) {
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          maxLines: 1,
        ),
      ),
    );
  }
}