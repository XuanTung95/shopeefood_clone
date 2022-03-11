import 'package:easy_debounce/easy_debounce.dart';

import '../../utils/common_import.dart';

class ToastWidget extends StatefulWidget {
  final Duration fadeDuration;
  final Duration showingDuration;

  const ToastWidget(
      {Key? key,
      this.fadeDuration = const Duration(milliseconds: 500),
      this.showingDuration = const Duration(milliseconds: 2000)})
      : super(key: key);

  @override
  ToastWidgetState createState() => ToastWidgetState();
}

class ToastWidgetState extends State<ToastWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  String message = '';
  final String hideToastId = 'hide_toast';

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: widget.fadeDuration);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void showToast(String message) {
    setState(() {
      this.message = message;
    });
    EasyDebounce.cancel(hideToastId);
    controller.forward().then(
      (value) async {
        EasyDebounce.debounce(
            hideToastId, widget.showingDuration, () => controller.reverse());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.bottomCenter,
      child: buildToast(context),
    );
  }

  buildToast(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        if (controller.value == 0) {
          return const SizedBox();
        }
        return Opacity(
          opacity: controller.value,
          child: child,
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(100)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: textStyle.bodyMedium,
        ),
      ),
    );
  }
}
