import 'package:shopeefood_clone/vm/global/state_home_collections.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../widgets/common/see_all_row.dart';
import '../../../../../widgets/list/home_collections_scroll.dart';

class HomeCollectionsRow extends ConsumerWidget {
  const HomeCollectionsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var stateCollection = ref.watch(StateHomeCollection.provider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SeeAllRow(
            showSeeAll: stateCollection.collections.length > 9,
            onClick: () {},
            title: 'collections'.tr(),
          ),
        ),
        SizedBox(
          height: 170,
          child: HomeCollectionsScroll(
            maxShowItem: 9,
            clickSeeAll: () {},
            collections: stateCollection.collections,
          ),
        ),
      ],
    );
  }
}