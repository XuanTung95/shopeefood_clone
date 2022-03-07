import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/screens/home/local/tabs/order/search_filter_row.dart';
import 'package:shopeefood_clone/vm/global/state_darft_cart.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';
import 'package:shopeefood_clone/widgets/list/tile/view_draft_cart.dart';
import 'package:shopeefood_clone/widgets/loading/loading_indicator.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../vm/global/state_services_info.dart';
import '../../../../../widgets/button/app_gesture_detector.dart';
import '../../../../../widgets/empty/empty_cart_widget.dart';
import '../like/local/like_filter_select_item_view.dart';
import 'cart_filter_select_item_widget.dart';

class ViewCartWidget extends ConsumerStatefulWidget {
  const ViewCartWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ViewCartWidget> createState() => _ViewCartWidgetState();
}

class _ViewCartWidgetState extends ConsumerState<ViewCartWidget> {
  final filterKey = GlobalKey<CartFilterSelectItemViewState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      final draftCart = ref.read(StateDraftCart.provider);
      draftCart.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final draftCart = ref.watch(StateDraftCart.provider);
    final colors = AppColor(context);
    if (draftCart.draftCart.isLoading) {
      return Center(
        child: DefaultLoadingIndicator(
          color: colors.primaryColor,
        ),
      );
    } else if (draftCart.draftCart.data.isEmpty) {
      return const EmptyCartWidget();
    } else {
      return Column(
        children: [
          buildSearchFilterRow(context),
          Expanded(
            child: Stack(
              children: [
                RefreshIndicator(
                  onRefresh: () async {
                    await Future.delayed(const Duration(seconds: 1));
                  },
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final item = draftCart.draftCart.data[index];
                      return Column(
                        children: [
                          if (index == 0) const ListDivider(),
                          AppGestureDetector(
                            onTap: () {
                              AppRouting.goToShopDetailScreen(context);
                            },
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                child: ViewDraftCart(draftCart: item)),
                          ),
                          const ListDivider(),
                        ],
                      );
                    },
                    itemCount: draftCart.draftCart.data.length,
                  ),
                ),
                CartFilterSelectItemView(
                  key: filterKey,
                ),
              ],
            ),
          ),
        ],
      );
    }
  }

  buildSearchFilterRow(BuildContext context) {
    final colors = AppColor(context);
    final vm = ref.watch(StateDraftCart.provider);
    final servicesInfo = ref.watch(StateServiceInfo.provider);
    return Container(
      child: SearchFilterRow(
        text1: vm.selectedService,
        text2: '',
        text3: '',
        onClickIndex: (int index) {
          filterKey.currentState?.toggleVisible();
        },
      ),
    );
  }
}