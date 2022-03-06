import 'package:shopeefood_clone/utils/common_import.dart';

class AddIconWidget extends StatelessWidget {
  final double size;
  final bool isAdd;

  const AddIconWidget({Key? key, required this.size, this.isAdd = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: isAdd ? Colors.transparent : colors.primaryColor),
          borderRadius: BorderRadius.circular(size / 8),
          color: isAdd ? colors.primaryColor : Colors.transparent),
      width: size,
      height: size,
      child: Icon(
        isAdd ? Icons.add : Icons.remove,
        size: size * 0.75,
        color: isAdd ? Colors.white : colors.primaryColor,
      ),
    );
  }
}
