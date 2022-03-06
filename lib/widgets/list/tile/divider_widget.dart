import 'package:shopeefood_clone/utils/common_import.dart';

class DividerWidget extends StatelessWidget {
  final Widget child;
  final bool bottom;
  final bool top;

  const DividerWidget({Key? key, required this.child, this.bottom = true, this.top = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: bottom ? BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ) : BorderSide.none,
          top: top ? BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ) : BorderSide.none,
        ),
      ),
      child: child,
    );
  }
}
