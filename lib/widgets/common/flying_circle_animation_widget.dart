import '../../utils/common_import.dart';
import '../curves/custom_curves.dart';

class FlyingCircleData {
  final double startLeft;
  final double startBot;
  final double endLeft;
  final double endBot;

  double left(double t) {
    return startLeft + t * (endLeft - startLeft);
  }

  double bot(double t) {
    return startBot + t * (endBot - startBot);
  }

  FlyingCircleData(
      {required this.startLeft,
      required this.startBot,
      required this.endLeft,
      required this.endBot});
}

class FlyingCircleAnimationWidget extends StatefulWidget {
  const FlyingCircleAnimationWidget({Key? key}) : super(key: key);

  @override
  FlyingCircleAnimationWidgetState createState() =>
      FlyingCircleAnimationWidgetState();
}

class FlyingCircleAnimationWidgetState
    extends State<FlyingCircleAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _aniController;
  final curve = CustomCurves.flyingAnimation();
  FlyingCircleData? _data;

  @override
  void initState() {
    super.initState();
    _aniController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
  }

  void startAnimation(FlyingCircleData data) {
    if (!_aniController.isAnimating) {
      _data = data;
      _aniController.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _aniController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedBuilder(
            animation: _aniController,
            builder: (context, child) {
              if (_data == null || _aniController.isCompleted) return const SizedBox();
              final _bot = _data!.endBot +
                  curve.transform(_aniController.value) *
                      (_data!.startBot - _data!.endBot);
              return Positioned(
                  left: _data!.left(_aniController.value),
                  bottom: _bot,
                  child: child!);
            },
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange,
              ),
              width: 15,
              height: 15,
            ),
          )
        ],
      ),
    );
  }
}