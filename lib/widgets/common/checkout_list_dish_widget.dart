import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/common/see_all_row.dart';
import 'package:shopeefood_clone/widgets/common/see_more_arrow.dart';

import '../../models/model_cart.dart';
import '../../utils/common_import.dart';
import '../list/tile/view_checkout_dish.dart';

class CheckoutListDishWidget extends StatefulWidget {
  final List<OrderDishes> dish;

  const CheckoutListDishWidget({Key? key, required this.dish})
      : super(key: key);

  @override
  _CheckoutListDishWidgetState createState() => _CheckoutListDishWidgetState();
}

class _CheckoutListDishWidgetState extends State<CheckoutListDishWidget> {
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    if (widget.dish.isEmpty) return const SizedBox();
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    List<Widget> placeHolder = [];
    List<Widget> dishWidget = [];
    for (var dish in widget.dish) {
      final view = Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: ViewCheckoutDish(
            dish: dish,
          ));
      dishWidget.add(view);
      if (showAll) {
        placeHolder.add(view);
      } else {
        if (placeHolder.isEmpty) placeHolder.add(view);
      }
    }
    return Column(
      children: [
        Stack(
          children: [
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Opacity(
                opacity: 0,
                child: Column(
                  children: placeHolder,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: dishWidget,
              ),
            )
          ],
        ),
        if (widget.dish.length > 1)
          AppGestureDetector(
            onTap: () {
              setState(() {
                showAll = !showAll;
              });
            },
            child: Container(
              color: colors.homeDividerBg.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                children: [
                  const Expanded(child: Divider()),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    showAll ? 'view_less'.tr() : 'show_more'.tr(),
                    style: textStyle.bodySmallGrey,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    showAll
                        ? Assets.images.assetsImgCommonIconUp.path
                        : Assets.images.assetsImgCommonIconDown.path,
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
