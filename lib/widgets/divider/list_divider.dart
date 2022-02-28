
import '../../utils/common_import.dart';

class ListDivider extends StatelessWidget {
  const ListDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    return Container(
      color: colors.homeDividerBg,
      width: double.infinity,
      height: 10,
    );
  }
}