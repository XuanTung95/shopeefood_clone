import 'package:shopeefood_clone/vm/global/state_home_now_service_categories.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';

class MyOrderTabBar extends ConsumerStatefulWidget {
  final VoidCallback? onChanged;
  final TabController controller;

  const MyOrderTabBar({Key? key, this.onChanged, required this.controller,}) : super(key: key);

  @override
  _MyOrderTabBarState createState() =>
      _MyOrderTabBarState();
}

class _MyOrderTabBarState
    extends ConsumerState<MyOrderTabBar> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    var style = textStyle.bodyBoldBlack;
    return DividerWidget(
      child: Container(
        color: colors.homeBg,
        child: SizedBox(
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
            controller: widget.controller,
            tabs: [
              buildTabItem('Ongoing'),
              buildTabItem('History'),
              buildTabItem("Top Rate"),
              buildTabItem('Cart'),
            ],
          ),
        ),
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