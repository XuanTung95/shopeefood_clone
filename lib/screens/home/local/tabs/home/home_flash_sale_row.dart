import 'package:shopeefood_clone/vm/global/state_flash_sale.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../widgets/common/see_all_row.dart';
import '../../../../../widgets/flash_sale/flash_sale_countdown.dart';
import '../../../../../widgets/list/home_flash_sale_scroll.dart';

class HomeFlashSaleRow extends ConsumerStatefulWidget {
  const HomeFlashSaleRow({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeFlashSaleRow> createState() => _HomeFlashSaleRowState();
}

class _HomeFlashSaleRowState extends ConsumerState<HomeFlashSaleRow> {
  @override
  Widget build(BuildContext context) {
    var stateFlashSale = ref.watch(StateFlashSale.provider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SeeAllRow(
            showSeeAll: true,
            onClick: () {},
            titleWidget: Row(
              children: [
                Image.asset(
                  Assets.images.assetsImgFlashsaleFlashSale.path,
                  width: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                const FlashSaleCountdown(),
                const Spacer(
                  flex: 10,
                )
              ],
            ),
            title: '',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 190,
          child: HomeFlashSaleScroll(
            maxShowItem: 5,
            clickSeeAll: () {},
            datas: stateFlashSale.ongoing.data,
          ),
        ),
      ],
    );
  }
}
