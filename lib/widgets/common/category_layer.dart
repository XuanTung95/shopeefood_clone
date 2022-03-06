import 'package:shopeefood_clone/models/model_menu_response.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/curves/custom_curves.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';
import 'checkout_row.dart';

class SelectCategoryLayer extends StatefulWidget {
  final List<MenuInfos> menus;
  final void Function(MenuInfos)? onChooseMenu;

  const SelectCategoryLayer({Key? key, required this.menus, this.onChooseMenu})
      : super(key: key);

  @override
  SelectCategoryLayerState createState() =>
      SelectCategoryLayerState();
}

class SelectCategoryLayerState extends State<SelectCategoryLayer>
    with SingleTickerProviderStateMixin {
  late AnimationController _aniController;
  late Animation<Offset> _slideAnimation;
  bool _isOpen = false;

  void runAnimation() {
    if (!_aniController.isAnimating) {
      _aniController.forward(from: 0);
    }
  }

  @override
  void initState() {
    super.initState();
    _aniController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _slideAnimation = _aniController
        .drive(CustomCurves.menuSlideAnimation())
        .drive(Tween<Offset>(
          begin: const Offset(0, 0),
          end: const Offset(-0.8, 0),
        ));
  }

  @override
  void dispose() {
    _aniController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return LayoutBuilder(builder: (context, size) {
      final width = size.maxWidth;
      final height = size.maxHeight;

      return Stack(
        fit: StackFit.expand,
        children: [
          if (_isOpen)
            SizedBox.expand(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isOpen = false;
                  });
                },
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
          AnimatedPositioned(
            bottom: -0,
            left: 0,
            right: 0,
            duration: const Duration(milliseconds: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedScale(
                  scale: _isOpen ? 1 : 0,
                  alignment: Alignment.bottomLeft,
                  duration: const Duration(milliseconds: 200),
                  child: Container(
                    color: _isOpen ? Colors.white : Colors.white.withOpacity(0.5),
                    width: width * 0.8,
                    height: height * 0.5,
                    margin: const EdgeInsets.only(left: 5, bottom: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: _isOpen ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DividerWidget(
                          child: Container(
                            width: double.infinity,
                            padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              'categories'.tr(),
                              style: textStyle.bodySmall,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              final item = widget.menus[index];
                              return buildMenuRowItem(
                                  item, textStyle, colors);
                            },
                            itemCount: widget.menus.length,
                          ),
                        ),
                      ],
                    ) : const SizedBox(),
                  ),
                ),
                SlideTransition(
                  position: _slideAnimation,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isOpen = !_isOpen;
                      });
                    },
                    child: Image.asset(
                      Assets.images.assetsImgMerchantIcMenuSideFood.path,
                      width: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      );
    });
  }

  Widget buildMenuRowItem(
      MenuInfos item, AppTextStyle textStyle, AppColor colors) {
    return AppGestureDetector(
      onTap: () {
        widget.onChooseMenu?.call(item);
        setState(() {
          _isOpen = false;
        });
      },
      child: DividerWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            '${item.dishTypeName ?? ''} (${item.dishes?.length ?? 0})',
            style: textStyle.bodyRegular,
          ),
        ),
      ),
    );
  }
}