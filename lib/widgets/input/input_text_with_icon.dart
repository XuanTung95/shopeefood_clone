import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';

import '../../utils/common_import.dart';

class InputTextWithIcon extends StatefulWidget {
  final String? asset;
  final String hint;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  final double iconSize;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;

  const InputTextWithIcon(
      {Key? key,
      this.asset,
      this.hint = '',
      this.iconSize = 25,
      this.textStyle,
      this.hintStyle,
      required this.controller, this.keyboardType})
      : super(key: key);

  @override
  _InputTextWithIconState createState() => _InputTextWithIconState();
}

class _InputTextWithIconState extends State<InputTextWithIcon> {
  bool showClear = false;

  @override
  void initState() {
    super.initState();
    showClear = widget.controller.text.isNotEmpty;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.asset != null)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              widget.asset!,
              width: widget.iconSize,
            ),
          ),
        Expanded(
          child: TextField(
            keyboardType: widget.keyboardType,
            onChanged: (value) {
              setState(() {
                showClear = value.isNotEmpty;
              });
            },
            controller: widget.controller,
            style: widget.textStyle,
            decoration: InputDecoration.collapsed(
              hintText: widget.hint,
              hintStyle: widget.hintStyle,
            ),
          ),
        ),
        Opacity(
          opacity: showClear ? 1 : 0,
          child: AppGestureDetector(
            onTap: () {
              widget.controller.text = "";
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                Assets.images.assetsImgCommonIcclosedark.path,
                width: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}