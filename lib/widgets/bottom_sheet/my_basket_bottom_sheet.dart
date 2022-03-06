import 'package:shopeefood_clone/models/model_shop_detail.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/vm/global/state_cart.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';

import '../list/tile/view_order_dish.dart';

class MyBasketBottomSheet extends ConsumerStatefulWidget {
  final ModelShopDetail shopDetail;

  const MyBasketBottomSheet({Key? key, required this.shopDetail})
      : super(key: key);

  @override
  ConsumerState<MyBasketBottomSheet> createState() =>
      MyBasketBottomSheetState();
}

class MyBasketBottomSheetState extends ConsumerState<MyBasketBottomSheet>
    with SingleTickerProviderStateMixin {
  bool _isOpen = false;
  late AnimationController animationController;

  set isOpen(bool value) {
    _isOpen = value;
    if (_isOpen) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    animationController.addListener(() {
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    final cart = ref.watch(StateCart.provider);
    final dishs = cart.orderDishes(widget.shopDetail.id ?? 0);
    ref.listen(StateCart.provider, (prev, StateCart next) {
      final dishs = next.orderDishes(widget.shopDetail.id ?? 0);
      if (dishs.isEmpty) {
        isOpen = false;
      }
    });
    return LayoutBuilder(builder: (context, size) {
      return Stack(
        fit: StackFit.expand,
        children: [
          if (_isOpen)
            GestureDetector(
              onTap: () {
                isOpen = false;
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          Positioned(
            bottom: -(size.maxHeight * 0.7 * (1-animationController.value)),
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: size.maxHeight * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                'rebranding.my_basket'.tr(),
                                style: textStyle.bodyBoldBlackBig,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 6),
                              child: GestureDetector(
                                onTap: () {
                                  isOpen = false;
                                },
                                child: Image.asset(
                                  Assets.images.assetsImgCommonIcclosedark
                                      .path,
                                  width: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: AppGestureDetector(
                              onTap: () {
                                cart.clearAll();
                              },
                              child: Text(
                                'clear_all'.tr(),
                                style: textStyle.bodyBoldBlack
                                    .copyWith(color: colors.primaryColor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 0,
                  ),
                  Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = dishs[index];
                      return ViewOrderDish(
                        orderDish: item,
                      );
                    },
                    itemCount: dishs.length,
                  )),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}