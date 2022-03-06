import 'package:shopeefood_clone/utils/common_import.dart';

class AppTabBar extends StatefulWidget {
  final List<String> tabTitle;
  final ValueChanged<int> onTap;
  final TabController? controller;

  const AppTabBar(
      {Key? key, required this.tabTitle, required this.onTap, this.controller})
      : assert(controller == null || controller.length == tabTitle.length),
        super(key: key);

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ??
        TabController(length: widget.tabTitle.length, vsync: this);
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
    return Container(
      color: colors.homeBg,
      child: Column(
        children: [
          SizedBox(
            height: 45,
            child: TabBar(
              onTap: widget.onTap,
              padding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: const EdgeInsets.symmetric(horizontal: 1),
              indicatorColor: colors.primaryColor,
              labelColor: colors.primaryColor,
              labelStyle: style,
              unselectedLabelStyle: style.copyWith(fontWeight: FontWeight.w400),
              unselectedLabelColor: textStyle.textColorBlack,
              controller: controller,
              tabs: widget.tabTitle.map((e) => buildTabItem(e)).toList(),
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

  Widget buildTabItem(String text) {
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
