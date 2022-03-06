import 'package:shopeefood_clone/vm/global/state_home_collections.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../vm/global/state_home_dish.dart';
import '../../../../../widgets/common/see_all_row.dart';
import '../../../../../widgets/list/home_collections_scroll.dart';
import '../../../../../widgets/list/home_dish_scroll.dart';

class HomeDishRow extends ConsumerWidget {
  const HomeDishRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var stateDish = ref.watch(StateHomeDish.provider);
    var textStyle = AppTextStyle(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8),
          child: SeeAllRow(
            showSeeAll: stateDish.dish.data.length > 9,
            onClick: () {},
            title: 'Thứ 2 hứng khởi mời deal 1Đ',
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 2),
            child: Text(
              'Món 1Đ ngại gì không đặt',
              style: textStyle.bodySmallGrey,
            ),
          ),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 190,
          child: HomeDishScroll(
            maxShowItem: 9,
            clickSeeAll: () {},
            dishs: stateDish.dish.data,
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}