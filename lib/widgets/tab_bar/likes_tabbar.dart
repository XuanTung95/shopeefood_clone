

import 'package:shopeefood_clone/utils/common_import.dart';

class LikesTabBar extends StatefulWidget {

  const LikesTabBar({Key? key}) : super(key: key);

  @override
  State<LikesTabBar> createState() => _LikesTabBarState();
}

class _LikesTabBarState extends State<LikesTabBar> with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
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
              onTap: (value) {
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
                buildTabItem('latest'.tr()),
                buildTabItem('search.nearby'.tr()),
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