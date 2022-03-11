import 'package:shopeefood_clone/utils/common_import.dart';

class AppTextStyle {
  final ThemeData _themeData;
  final String fontFamily = 'sfuitext';

  AppTextStyle(BuildContext context) : _themeData = Theme.of(context);

  Color get textColorGrey => const Color(0xFF595959);
  Color get textColorGrey2 => const Color(0xFFb6b6b6);
  Color get textColorGrey3 => const Color(0xFF757575);
  Color get textColorBlack => const Color(0xFF222222);

  TextStyle get bubble => TextStyle(
      color: Colors.white,
      fontFamily: fontFamily,
      fontSize: 11.5,
      fontWeight: FontWeight.normal);

  TextStyle get bubbleBold => TextStyle(
      color: Colors.white,
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600);

  TextStyle get userName => TextStyle(
      color: Colors.white,
      fontFamily: fontFamily,
      fontSize: 17,
      fontWeight: FontWeight.w600);

  TextStyle get bodyBoldBlackBig => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w600);

  TextStyle get bodyBoldBlack => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w600);

  TextStyle get bodyBoldSmallWhite => TextStyle(
      color: Colors.white,
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600);

  TextStyle get bodySmall => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w400);

  TextStyle get bodyMedium => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400);

  TextStyle get bodyRegular => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 14.5,
      fontWeight: FontWeight.w400);

  TextStyle get appBarText => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 17,
      fontWeight: FontWeight.w500);

  TextStyle get bodyMediumGrey => TextStyle(
      color: textColorGrey3,
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400);

  TextStyle get bodySmallGrey => TextStyle(
      color: textColorGrey3,
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w400);

  TextStyle get bodySmall2Grey => TextStyle(
      color: textColorGrey3,
      fontFamily: fontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400);

  TextStyle get homeNavItemActive => TextStyle(
      color: _themeData.primaryColor,
      fontFamily: fontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400);

  TextStyle get homeNavItemInactive => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400);

  TextStyle get homeDeliverTo => TextStyle(
      color: textColorGrey,
      fontFamily: fontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400);

  TextStyle get homeDeliverToContent => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 12.5,
      fontWeight: FontWeight.w400);

  TextStyle get homeSearchBarText => TextStyle(
      color: textColorGrey2,
      fontFamily: fontFamily,
      fontSize: 13.5,
      fontWeight: FontWeight.w400);

  TextStyle get homeCategoryText => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 12.5,
      fontWeight: FontWeight.w400);

  TextStyle get seeAllRowTitle => TextStyle(
      color: _themeData.primaryColor,
      fontFamily: fontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w500);

  TextStyle get seeAllItem => TextStyle(
      color: _themeData.primaryColor,
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w300);

  TextStyle get dialogButton => TextStyle(
      color: textColorBlack,
      fontFamily: fontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w400);

  TextStyle get cupertinoAction => TextStyle(
      color: Colors.blue,
      fontFamily: fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w400);
}
