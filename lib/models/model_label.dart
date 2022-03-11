import 'model_photo.dart';

class Label {
  List<Photos>? photos;
  int? labelPosition;

  Label({this.photos, this.labelPosition});

  Label.fromJson(Map<String, dynamic> json) {
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    labelPosition = json['label_position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['label_position'] = labelPosition;
    return data;
  }
}