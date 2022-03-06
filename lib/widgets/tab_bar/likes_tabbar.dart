import 'package:shopeefood_clone/utils/common_import.dart';

import 'app_tabbar.dart';

class LikesTabBar extends StatelessWidget {
  const LikesTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTabBar(
      onTap: (int value) {},
      tabTitle: ['latest'.tr(), 'search.nearby'.tr()],
    );
  }
}