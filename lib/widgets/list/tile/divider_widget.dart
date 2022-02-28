import 'package:shopeefood_clone/utils/common_import.dart';

class DividerWidget extends StatelessWidget {
  final Widget child;

  const DividerWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ),
        ),
      ),
      child: child,
    );
  }
}
