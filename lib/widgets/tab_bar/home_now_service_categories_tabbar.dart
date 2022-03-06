import 'package:shopeefood_clone/vm/global/state_home_now_service_categories.dart';

import '../../utils/common_import.dart';
import 'app_tabbar.dart';

class HomeNowServiceCategoriesTabBar extends ConsumerWidget {
  final VoidCallback? onChanged;

  const HomeNowServiceCategoriesTabBar({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTabBar(
      onTap: (int value) {
        var state = ref.read(StateHomeNowServiceCategories.provider);
        state.setSelectedFilter(value);
        onChanged?.call();
      },
      tabTitle: const ['Nearby', 'Top Sales', 'Best Rated', 'Fast'],
    );
  }
}
