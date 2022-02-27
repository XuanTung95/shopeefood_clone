

import '../models/model_photo.dart';

class ImageUtils {
  static String? getIconImage(List<Photos>? photos) {
    if (photos == null || photos.isEmpty) return null;
    return photos[0].value;
  }
}