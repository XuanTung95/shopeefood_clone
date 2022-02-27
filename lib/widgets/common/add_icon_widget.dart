import 'package:shopeefood_clone/utils/common_import.dart';

class AddIconWidget extends StatelessWidget {
  final double size;

  const AddIconWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 8),
          color: colors.primaryColor),
      width: size,
      height: size,
      child: Icon(
        Icons.add,
        size: size * 0.75,
        color: Colors.white,
      ),
    );
  }
}
