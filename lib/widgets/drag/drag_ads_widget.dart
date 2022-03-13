import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/utils/app_labels.dart';
import 'package:shopeefood_clone/vm/global/state_drag_ads.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../utils/common_import.dart';

class DragAdsWidget extends ConsumerStatefulWidget {
  final Size size;
  final EdgeInsets padding;

  const DragAdsWidget({
    Key? key,
    required this.size,
    this.padding = const EdgeInsets.only(
      left: 10,
      right: 10,
      top: 80,
      bottom: 0,
    ),
  }) : super(key: key);

  @override
  _DragAdsWidgetState createState() => _DragAdsWidgetState();
}

class _DragAdsWidgetState extends ConsumerState<DragAdsWidget>
    with SingleTickerProviderStateMixin {
  StateDragAds? _state;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _state = ref.read(StateDragAds.provider);
      _state?.initSpring(this);
      _state?.setSpringSize(
        widget.size,
        widget.padding,
      );
    });
  }

  @override
  void didUpdateWidget(covariant DragAdsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _state?.setSpringSize(widget.size, widget.padding);
    });
  }

  @override
  void dispose() {
    _state?.disposeSpring();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateDragAds.provider);
    return state.ready
        ? Positioned(
            left: state.left,
            top: state.top,
            child: GestureDetector(
              onPanStart: (details) => state.onPanStart(details),
              onPanUpdate: (details) => state.onPanUpdate(details),
              onPanEnd: (details) => state.onPanEnd(details),
              onPanDown: (details) {
                state.onPanDown(details);
              },
              child: SizedBox(
                width: state.widgetSize.width,
                height: state.widgetSize.height,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                      onTap: () {
                        AppRouting.goToShopDetailScreen(context);
                      },
                      child: AppImageNetworkWidget(
                        url: ImageUtils.getIconImage(state.dragAds?.photos,
                            highQuality: true),
                      ),
                    ),
                    Positioned(
                      top: -5,
                      right: -5,
                      child: GestureDetector(
                        onTap: () {
                          state.clearDragAds();
                        },
                        child: Semantics(
                          label: AppLabels.CLOSE_DRAG_ADS_BUTTON,
                          child: Image.asset(
                            Assets.images.assetsImgCheckoutIcclosepopup.path,
                            width: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
