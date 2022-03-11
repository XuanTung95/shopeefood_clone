

import '../models/model_user_profile.dart';

class PhoneUtils {
  static String getDisplayPhone(List<Phones>? phones, {bool hide = false}) {
    String ret = '';
    if (phones != null && phones.isNotEmpty) {
      for (var phone in phones) {
        ret = phone.number ?? '';
        if (ret.isNotEmpty) {
          break;
        }
      }
      if (hide && ret.length > 3) {
        ret = "*" * (ret.length - 3) + ret.substring(ret.length - 3);
      }
    }
    return ret;
  }
}