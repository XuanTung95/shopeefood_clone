import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/utils/app_labels.dart';
import 'package:shopeefood_clone/vm/global/state_home_popup.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../utils/common_import.dart';

class HomePopupWidget extends ConsumerStatefulWidget {
  const HomePopupWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePopupWidget> createState() => _HomePopupWidgetState();
}

class _HomePopupWidgetState extends ConsumerState<HomePopupWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late StateHomePopup _statePopup;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350));
    _statePopup = ref.read(StateHomePopup.provider);
    if (_statePopup.popupAds != null) {
      _controller.forward(from: 0);
    }
    _statePopup.eventShowPopup.addListener(_onEventShowPopup);
  }

  _onEventShowPopup() {
    _controller.forward(from: 0);
  }

  @override
  void dispose() {
    _statePopup.eventShowPopup.removeListener(_onEventShowPopup);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final statePopup = ref.watch(StateHomePopup.provider);
    return LayoutBuilder(builder: (context, size) {
      List<Widget> children = [];
      if (statePopup.popupAds != null) {
        double finalTop = size.maxHeight * 0.25;
        double initTop = size.maxHeight - finalTop;
        children.add(GestureDetector(
          onTap: () {
            statePopup.clearPopupAds();
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(
              0.3,
            ),
          ),
        ));
        children.add(
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final currTop =
                  initTop + (finalTop - initTop) * _controller.value;
              return Positioned(
                top: currTop,
                left: 10,
                right: 10,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        statePopup.clearPopupAds();
                        AppRouting.goToShopDetailScreen(context);
                      },
                      child: AppImageNetworkWidget(
                        url: ImageUtils.getIconImage(
                          statePopup.popupAds?.photos,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 10,
                        child: GestureDetector(
                          onTap: () {
                            statePopup.clearPopupAds();
                          },
                          child: Semantics(
                            label: AppLabels.CLOSE_POPUP_BUTTON,
                            child: Image.asset(
                              Assets.images.assetsImgCheckoutIcclosepopup.path,
                              width: 40,
                            ),
                          ),
                        ))
                  ],
                ),
              );
            },
          ),
        );
      }
      return Stack(
        fit: StackFit.expand,
        children: children,
      );
    });
  }
}
