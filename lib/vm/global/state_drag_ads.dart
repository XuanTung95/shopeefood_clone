
import 'package:rebound_dart/rebound_dart.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_ads_banner.dart';
import '../base_change_notifier.dart';

class StateDragAds extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateDragAds());
  ModelBanner? _dragAds;

  ModelBanner? get dragAds => _dragAds;

  SpringSystem? springSystem;
  late Spring springX;
  late Spring springY;
  final SpringChainData _springData = SpringChainData();

  double get left => _springData.x;

  double get top => _springData.y;

  Size get widgetSize => _springData.widgetSize;

  bool get ready => _springData.ready && _dragAds != null;

  void initSpring(TickerProvider ticker) {
    springSystem?.dispose();
    springSystem = SpringSystem.create(ticker);
    springX = springSystem!.createSpring();
    springY = springSystem!.createSpring();
    springX.setSpringConfig(SpringConfigs.NOT_DRAGGING);
    springY.setSpringConfig(SpringConfigs.NOT_DRAGGING);
    springX.addListener(SimpleSpringListener(
      updateCallback: (spring) {
        _springData.x = spring.getCurrentValue();
        notifyListeners();
      },
      atRestCallback: (spring) {},
    ));
    springY.addListener(
      SimpleSpringListener(
        updateCallback: (spring) {
          _springData.y = spring.getCurrentValue();
          notifyListeners();
        },
      ),
    );
    _springData.setSprings(springX, springY);
  }

  void setSpringSize(Size outSize, EdgeInsets padding, {Offset? initPos}) {
    initPos ??= Offset(
        outSize.width - _springData.widgetSize.width - padding.right,
        outSize.height - _springData.widgetSize.height - padding.bottom - 50,
      );
    _springData.setSize(outSize, padding, initPos: initPos);
  }

  void disposeSpring() {
    springSystem?.dispose();
    springSystem = null;
  }

  void clearDragAds() {
    _dragAds = null;
    notifyListeners();
  }

  void addDragAds(ModelBanner banner) {
    _dragAds = banner;
    notifyListeners();
  }

  void onPanDown(DragDownDetails details) => _springData.onPanDown(details);

  void onPanStart(DragStartDetails details) => _springData.onPanStart(details);

  void onPanUpdate(DragUpdateDetails details) =>
      _springData.onPanUpdate(details);

  void onPanEnd(DragEndDetails details) => _springData.onPanEnd(details);
}

class SpringChainData {
  double x = 100.0; // Position Left of widget
  double y = 100.0; // Position Top of widget
  double savedX = 0.0; // saved x
  double savedY = 0.0; // saved y
  double savedGlobalX = 0.0;
  double savedGlobalY = 0.0;
  double scaleX = 1;
  double scaleY = 1;
  Size widgetSize = const Size(80, 80);

  Size outSize = Size.zero;
  Rect inRect = Rect.zero;
  EdgeInsets padding = EdgeInsets.zero;
  Spring? springX;
  Spring? springY;
  bool touching = false;

  SpringChainData();

  bool get ready {
    return outSize != Size.zero && springX != null && springY != null;
  }

  void setSprings(Spring springX, Spring springY) {
    this.springX = springX;
    this.springY = springY;
    this.springX!.setCurrentValue(x);
    this.springY!.setCurrentValue(y);
  }

  void setSize(Size outSize, EdgeInsets padding, {Offset? initPos}) {
    if (this.outSize == outSize && this.padding == padding) return;
    this.outSize = outSize;
    this.padding = padding;
    //
    inRect = Rect.fromLTRB(
        padding.left,
        padding.top,
        outSize.width - padding.right - widgetSize.width,
        outSize.height - padding.bottom - widgetSize.height);
    if (initPos != null) {
      x = initPos.dx;
      y = initPos.dy;
      springX?.setCurrentValue(x);
      springY?.setCurrentValue(y);
    }
  }

  void onPanStart(DragStartDetails details) {}

  void onPanDown(DragDownDetails details) {
    touching = true;
    savedX = x;
    savedY = y;
    savedGlobalX = details.globalPosition.dx;
    savedGlobalY = details.globalPosition.dy;
    scaleX = 0.9;
    scaleY = 0.9;
  }

  void onPanEnd(DragEndDetails details) {
    var endX = x;
    var endY = y;
    var vx = details.velocity.pixelsPerSecond.dx;
    var vy = details.velocity.pixelsPerSecond.dy / 8;
    //vy = 0;
    // The final position must be the left or right edge
    double t = 0;
    if (vx > 0) {
      endX = inRect.right;
      t = ((inRect.right - x) / vx).abs();
    } else if (vx < 0) {
      endX = inRect.left;
      t = (x / vx).abs();
    } else {
      t = 0.1;
      if (x < (inRect.left + inRect.right) / 2) {
        endX = inRect.left;
      } else {
        endX = inRect.right;
      }
    }
    if (t < 0.1) t += 0.15;
    endY += vy * t;
    if (endX < inRect.left) {
      endX = inRect.left;
    }
    if (endX > inRect.right) {
      endX = inRect.right;
    }
    if (endY < inRect.top) {
      endY = inRect.top;
    }
    if (endY > inRect.bottom) {
      endY = inRect.bottom;
    }
    springX?.setVelocity(vx / 2);
    springY?.setVelocity(vy / 2);
    springX?.setEndValue(endX);
    springY?.setEndValue(endY);
    scaleX = 1;
    scaleY = 1;
    touching = false;
  }

  void onPanUpdate(DragUpdateDetails details) {
    // move with finger
    springX?.setCurrentValue(savedX + details.globalPosition.dx - savedGlobalX);
    springY?.setCurrentValue(savedY + details.globalPosition.dy - savedGlobalY);
  }
}

class SpringConfigs {
  static SpringConfig NOT_DRAGGING =
      SpringConfig.fromOrigamiTensionAndFriction(40.0, 4.5); // (60.0, 7.5)
  static SpringConfig CAPTURING =
      SpringConfig.fromBouncinessAndSpeed(8.0, 40.0);
  static SpringConfig CLOSE_SCALE =
      SpringConfig.fromBouncinessAndSpeed(7.0, 25.0);
  static SpringConfig CLOSE_Y = SpringConfig.fromBouncinessAndSpeed(3.0, 3.0);
  static SpringConfig DRAGGING =
      SpringConfig.fromOrigamiTensionAndFriction(0.0, 5.0);
  static SpringConfig CONTENT_SCALE =
      SpringConfig.fromBouncinessAndSpeed(5.0, 40.0);
}
