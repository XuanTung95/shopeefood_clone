import 'package:shopeefood_clone/utils/common_import.dart';

class AppColor {
  final ThemeData _themeData;

  AppColor(BuildContext context) : _themeData = Theme.of(context);

  Color get primaryColor => _themeData.primaryColor;

  Color get bottomBarBg => Colors.white;

  Color get homeBg => Colors.white;

  Color get homeDividerBg => const Color(0xfff4f6f8);

  Color get homeSearchBarBg => const Color(0xFFF5F5F5);

  Color get homeCollectionItemBg => const Color(0xfffafafa);
  Color get homeItemBorder => const Color(0xffe3e3e3);

  Color get homeGridScrollbarThumb => const Color(0xFFee4d2d);
}
