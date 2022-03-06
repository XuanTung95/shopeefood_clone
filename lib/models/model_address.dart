import 'model_delivery.dart';

class AddressResponse {
  ReplyAddress? reply;
  String? result;

  AddressResponse({this.reply, this.result});

  AddressResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyAddress.fromJson(json['reply']) : null;
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (reply != null) {
      data['reply'] = reply!.toJson();
    }
    data['result'] = result;
    return data;
  }
}

class ReplyAddress {
  List<ModelAddresses>? addresses;

  ReplyAddress({this.addresses});

  ReplyAddress.fromJson(Map<String, dynamic> json) {
    if (json['addresses'] != null) {
      addresses = <ModelAddresses>[];
      json['addresses'].forEach((v) {
        addresses!.add(ModelAddresses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (addresses != null) {
      data['addresses'] = addresses!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelAddresses {
  String? building;
  bool? isFavourite;
  int? parkingFee;
  int? deliveryOption;
  int? cityId;
  int? districtId;
  String? email;
  String? note;
  Phone? phone;
  bool? isFarAway;
  String? workAddress;
  String? address;
  Position? position;
  String? contactName;
  String? label;
  int? type;
  int? id;
  String? gate;

  ModelAddresses(
      {this.building,
        this.isFavourite,
        this.parkingFee,
        this.deliveryOption,
        this.cityId,
        this.districtId,
        this.email,
        this.note,
        this.phone,
        this.isFarAway,
        this.workAddress,
        this.address,
        this.position,
        this.contactName,
        this.label,
        this.type,
        this.id,
        this.gate});

  ModelAddresses.fromJson(Map<String, dynamic> json) {
    building = json['building'];
    isFavourite = json['is_favourite'];
    parkingFee = json['parking_fee'];
    deliveryOption = json['delivery_option'];
    cityId = json['city_id'];
    districtId = json['district_id'];
    email = json['email'];
    note = json['note'];
    phone = json['phone'] != null ? Phone.fromJson(json['phone']) : null;
    isFarAway = json['is_far_away'];
    workAddress = json['work_address'];
    address = json['address'];
    position = json['position'] != null
        ? Position.fromJson(json['position'])
        : null;
    contactName = json['contact_name'];
    label = json['label'];
    type = json['type'];
    id = json['id'];
    gate = json['gate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['building'] = building;
    data['is_favourite'] = isFavourite;
    data['parking_fee'] = parkingFee;
    data['delivery_option'] = deliveryOption;
    data['city_id'] = cityId;
    data['district_id'] = districtId;

    data['email'] = email;
    data['note'] = note;
    if (phone != null) {
      data['phone'] = phone!.toJson();
    }
    data['is_far_away'] = isFarAway;
    data['work_address'] = workAddress;
    data['address'] = address;
    if (position != null) {
      data['position'] = position!.toJson();
    }
    data['contact_name'] = contactName;
    data['label'] = label;
    data['type'] = type;
    data['id'] = id;
    data['gate'] = gate;
    return data;
  }
}

class Phone {
  bool? status;
  String? text;

  Phone({this.status, this.text});

  Phone.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['text'] = text;
    return data;
  }
}
