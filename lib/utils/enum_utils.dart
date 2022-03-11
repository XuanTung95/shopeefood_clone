

import 'package:shopeefood_clone/utils/common_import.dart';

class EnumUtils {
  static const int GENDER_NONE = 0;
  static const int GENDER_MALE = 1;
  static const int GENDER_FEMALE = 2;
  //
  static const int ADS_POSITION_TOP_BANNER = 21;
  static const int ADS_POSITION_DRAG = 1;
  static const int ADS_POSITION_FULL_SCREEN_POPUP = 46;
  static const int ADS_POSITION_BELOW_TOP = 47;
  static const int ADS_POSITION_MIDDLE = 12;
  //
  static String getGender(int? gender) {
    switch (gender) {
      case GENDER_NONE:
        return '';
      case GENDER_MALE:
        return 'gender_male'.tr();
      case GENDER_FEMALE:
        return 'gender_female'.tr();
    }
    return '';
  }
}
