class Price {
  String? text;
  String? unit;
  double? value;

  Price({this.text, this.unit, this.value});

  Price.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    unit = json['unit'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = text;
    data['unit'] = unit;
    data['value'] = value;
    return data;
  }
}