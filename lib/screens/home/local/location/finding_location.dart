import 'package:easy_localization/easy_localization.dart';
import 'package:shopeefood_clone/gen/assets.gen.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/widgets/common/extended_box_constraint.dart';

import '../../../../widgets/bubble/notify_bubble.dart';

class FindingLocation extends StatelessWidget {
  const FindingLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    return Stack(
      children: [
        Container(
          color: colors.homeBg,
          child: LayoutBuilder(builder: (context, size) {
            var cal = const BoxConstraintCalculator(
              maxWidth: 250,
              widthFactor: 0.45,
            );
            final width = cal.getWidth(size);
            final height = width;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                const Spacer(flex: 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'finding_your_location'.tr(),
                      style: AppTextStyle(context).bodyMedium,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image.asset(Assets.images.deliveryaddressImgmap.path,
                              width: width, height: height),
                          PinLoadingIcon(
                            size: (width ?? 100) / 5,
                            duration: const Duration(milliseconds: 1000),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(flex: 4),
              ],
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: NotifyBubble.badWeather(context),
        ),
      ],
    );
  }
}

class PinLoadingIcon extends StatefulWidget {
  final double size;
  final Duration duration;

  const PinLoadingIcon({Key? key, required this.size, required this.duration})
      : super(key: key);

  @override
  _PinLoadingIconState createState() => _PinLoadingIconState();
}

class _PinLoadingIconState extends State<PinLoadingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> positionAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: widget.duration);
    controller.addListener(_animationCallback);
    CurvedAnimation curveAnimation =
        CurvedAnimation(parent: controller, curve: Curves.easeIn);
    positionAnimation = curveAnimation.drive(Tween(begin: 0.0, end: -20));
    scaleAnimation = curveAnimation.drive(Tween(begin: 1.0, end: 0.5));
    controller.repeat(reverse: true);
  }

  void _animationCallback() {
    setState(() {});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform(
            transform: Matrix4.identity()
              ..translate(0.0, positionAnimation.value),
            child: Image.asset(
              Assets.images.deliveryaddressIcloadingpin.path,
              width: widget.size,
            )),
        const SizedBox(
          height: 10,
        ),
        Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..scale(
                scaleAnimation.value,
              ),
            child: Image.asset(
              Assets.images.deliveryaddressIcloadingpinshadow.path,
              width: widget.size / 2,
            )),
      ],
    );
  }
}