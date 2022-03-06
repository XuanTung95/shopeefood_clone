class ModelPrice {
  String? text;
  String? unit;
  double? value;

  ModelPrice({this.text, this.unit, this.value});

  ModelPrice.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    unit = json['unit'];
    value = (json['value'] as num?)?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = text;
    data['unit'] = unit;
    data['value'] = value;
    return data;
  }
}