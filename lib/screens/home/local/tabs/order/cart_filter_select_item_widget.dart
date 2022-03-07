import 'package:shopeefood_clone/vm/global/state_darft_cart.dart';
import 'package:shopeefood_clone/vm/global/state_likes_tab_filter.dart';

import '../../../../../../utils/common_import.dart';
import '../../../../../../vm/global/state_services_info.dart';

class CartFilterSelectItemView extends ConsumerStatefulWidget {
  const CartFilterSelectItemView({Key? key}) : super(key: key);

  @override
  ConsumerState<CartFilterSelectItemView> createState() =>
      CartFilterSelectItemViewState();
}

class CartFilterSelectItemViewState
    extends ConsumerState<CartFilterSelectItemView> {
  bool isVisible = false;

  void toggleVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return const SizedBox();
    final textStyle = AppTextStyle(context);
    final vm = ref.watch(StateDraftCart.provider);
    final servicesInfo = ref.watch(StateServiceInfo.provider);
    return Stack(
      children: [
        GestureDetector(
            onTap: () {
              toggleVisible();
            },
            child: ColoredBox(
                color: Colors.transparent,
                child: IgnorePointer(
                    child:
                    ModalBarrier(color: Colors.black.withOpacity(0.4))))),
        Container(
          constraints: const BoxConstraints(maxHeight: 400),
          color: Colors.white,
          child: ListView.builder(
            controller: ScrollController(),
            key: const ValueKey("services"),
            itemBuilder: (context, index) {
              final currItem = servicesInfo.allServices[index];
              final selected = currItem == vm.selectedService;
              return GestureDetector(
                onTap: () {
                  vm.selectedService = currItem;
                  toggleVisible();
                },
                child: ColoredBox(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                currItem,
                                style: selected
                                    ? textStyle.bodyBoldBlackBig
                                    : textStyle.bodyRegular,
                              ),
                            ),
                            if (selected)
                              Image.asset(
                                Assets
                                    .images
                                    .nodeModulesShopeernCommonimagesAssetsCommoniconCheckorangeicon
                                    .path,
                                width: 30,
                              ),
                          ],
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              );
            },
            itemCount: servicesInfo.allServices.length,
          ),
        ),
      ],
    );
  }
}