import 'package:share_plus/share_plus.dart';

class ShareUtils {
  static Future<void> shareText(String text) {
    return Share.share(text);
  }
}