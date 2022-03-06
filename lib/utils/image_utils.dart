import 'dart:typed_data';

import 'package:flutter/services.dart';

import '../models/model_photo.dart';
import 'dart:ui' as ui;

class ImageUtils {
  static String? getIconImage(List<Photos>? photos,
      {bool highQuality = false}) {
    if (photos == null || photos.isEmpty) return null;
    if (highQuality) {
      Photos? target;
      for (var photo in photos) {
        if (target == null) {
          target = photo;
        } else {
          if ((target.width ?? 0) * (target.height ?? 0) <=
              ((photo.width ?? 0) * (photo.height ?? 0))) {
            target = photo;
          }
        }
      }
      return target!.value;
    } else {
      return photos[0].value;
    }
  }

  static Future<Uint8List?> getBytesFromAsset(String path, int width,
      {ui.ImageByteFormat format = ui.ImageByteFormat.png}) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: format))?.buffer.asUint8List();
  }
}
