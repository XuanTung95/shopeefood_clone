import '../../utils/common_import.dart';

class AppGestureDetector extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final BlurType blurType;

  const AppGestureDetector(
      {Key? key,
      required this.child,
      required this.onTap,
      this.blurType = BlurType.FOGROUND})
      : super(key: key);

  @override
  _AppGestureDetectorState createState() => _AppGestureDetectorState();
}

enum BlurType {
  OPACITY,
  FOGROUND,
}

class _AppGestureDetectorState extends State<AppGestureDetector> {
  bool _panDown = false;

  void onPanDown() {
    setState(() {
      _panDown = true;
    });
  }

  void onPanUp() {
    setState(() {
      _panDown = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onPanDown: (detail) => onPanDown(),
      onPanEnd: (detail) => onPanUp(),
      onPanCancel: () => onPanUp(),
      child: Container(
          foregroundDecoration: widget.blurType == BlurType.FOGROUND
              ? BoxDecoration(
                  color: _panDown
                      ? Colors.white.withOpacity(0.3)
                      : Colors.transparent,
                )
              : null,
          color: Colors.transparent,
          child: widget.blurType == BlurType.OPACITY
              ? Opacity(
                  opacity: _panDown ? 0.6 : 1.0,
                  child: widget.child,
                )
              : widget.child),
    );
  }
}
