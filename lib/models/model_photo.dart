

class Photos {
  int? width;
  String? value;
  int? height;

  Photos({this.width, this.value, this.height});

  Photos.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    value = json['value'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['width'] = width;
    data['value'] = value;
    data['height'] = height;
    return data;
  }
}