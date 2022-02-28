import 'package:shopeefood_clone/vm/global/state_likes_tab_filter.dart';

import '../../../../../../utils/common_import.dart';

class LikeFilterSelectItemView extends ConsumerStatefulWidget {
  const LikeFilterSelectItemView({Key? key}) : super(key: key);

  @override
  ConsumerState<LikeFilterSelectItemView> createState() =>
      LikeFilterSelectItemViewState();
}

class LikeFilterSelectItemViewState
    extends ConsumerState<LikeFilterSelectItemView> {
  bool isVisible = false;

  void toggleVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return SizedBox();
    final textStyle = AppTextStyle(context);
    final vm = ref.watch(StateLikesTabFilter.provider);
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
          constraints: BoxConstraints(maxHeight: 400),
          color: Colors.white,
          child: ListView.builder(
            controller: ScrollController(),
            key: const ValueKey("services"),
            itemBuilder: (context, index) {
              final currItem = vm.allServices[index];
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
                      Divider(),
                    ],
                  ),
                ),
              );
            },
            itemCount: vm.allServices.length,
          ),
        ),
      ],
    );
  }
}
