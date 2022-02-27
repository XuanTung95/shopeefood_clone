

import '../models/model_photo.dart';

mixin PhotoMixin {
  List<Photos>? photos;

  String? get getPhotoUrl {
    if (photos?.isNotEmpty ?? false) {
      return photos![0].value;
    }
    return null;
  }
}