import 'package:shopeefood_clone/models/model_price.dart';

import 'model_delivery.dart';
import 'model_dish.dart';
import 'model_photo.dart';

class OrderResponse {
  ReplyOrder? reply;
  String? result;

  OrderResponse({this.reply, this.result});

  OrderResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyOrder.fromJson(json['reply']) : null;
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

class ReplyOrder {
  List<ModelOrders>? orders;

  ReplyOrder({this.orders});

  ReplyOrder.fromJson(Map<String, dynamic> json) {
    if (json['orders'] != null) {
      orders = <ModelOrders>[];
      json['orders'].forEach((v) {
        orders!.add(ModelOrders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (orders != null) {
      data['orders'] = orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelOrders {
  Status? status;
  int? submitAppType;
  Feedback? feedback;
  String? orderTime;
  OrderItems? orderItems;
  ModelDelivery? delivery;
  Host? host;
  String? orderCode;
  String? sharingToken;
  PaidStatus? paidStatus;
  int? id;
  MinOrderValue? finalValue;
  int? orderType;
  int? sourceSubmit;
  PaidOption? paidOption;
  String? orderNote;
  MinOrderValue? orderValue;
  ShippingInfo? shippingInfo;

  ModelOrders(
      {this.status,
        this.submitAppType,
        this.feedback,
        this.orderTime,
        this.orderItems,
        this.delivery,
        this.host,
        this.orderCode,
        this.sharingToken,
        this.paidStatus,
        this.id,
        this.finalValue,
        this.orderType,
        this.sourceSubmit,
        this.paidOption,
        this.orderNote,
        this.orderValue,
        this.shippingInfo});

  ModelOrders.fromJson(Map<String, dynamic> json) {
    status =
    json['status'] != null ? Status.fromJson(json['status']) : null;
    submitAppType = json['submit_app_type'];
    feedback = json['feedback'] != null
        ? Feedback.fromJson(json['feedback'])
        : null;
    orderTime = json['order_time'];
    orderItems = json['order_items'] != null
        ? OrderItems.fromJson(json['order_items'])
        : null;
    delivery = json['delivery'] != null
        ? ModelDelivery.fromJson(json['delivery'])
        : null;
    host = json['host'] != null ? Host.fromJson(json['host']) : null;
    orderCode = json['order_code'];
    sharingToken = json['sharing_token'];
    paidStatus = json['paid_status'] != null
        ? PaidStatus.fromJson(json['paid_status'])
        : null;
    id = json['id'];
    finalValue = json['final_value'] != null
        ? MinOrderValue.fromJson(json['final_value'])
        : null;
    orderType = json['order_type'];
    sourceSubmit = json['source_submit'];
    paidOption = json['paid_option'] != null
        ? PaidOption.fromJson(json['paid_option'])
        : null;
    orderNote = json['order_note'];
    orderValue = json['order_value'] != null
        ? MinOrderValue.fromJson(json['order_value'])
        : null;
    shippingInfo = json['shipping_info'] != null
        ? ShippingInfo.fromJson(json['shipping_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status!.toJson();
    }
    data['submit_app_type'] = submitAppType;
    if (feedback != null) {
      data['feedback'] = feedback!.toJson();
    }
    data['order_time'] = orderTime;
    if (orderItems != null) {
      data['order_items'] = orderItems!.toJson();
    }
    if (delivery != null) {
      data['delivery'] = delivery!.toJson();
    }
    if (host != null) {
      data['host'] = host!.toJson();
    }
    data['order_code'] = orderCode;
    data['sharing_token'] = sharingToken;
    if (paidStatus != null) {
      data['paid_status'] = paidStatus!.toJson();
    }
    data['id'] = id;
    if (finalValue != null) {
      data['final_value'] = finalValue!.toJson();
    }
    data['order_type'] = orderType;
    data['source_submit'] = sourceSubmit;
    if (paidOption != null) {
      data['paid_option'] = paidOption!.toJson();
    }
    data['order_note'] = orderNote;
    if (orderValue != null) {
      data['order_value'] = orderValue!.toJson();
    }
    if (shippingInfo != null) {
      data['shipping_info'] = shippingInfo!.toJson();
    }
    return data;
  }
}

class Status {
  int? status;
  ModelText? text;
  String? updateTime;
  bool? isPendingPayment;

  Status({this.status, this.text, this.updateTime, this.isPendingPayment});

  Status.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    text = json['text'] != null ? ModelText.fromJson(json['text']) : null;
    updateTime = json['update_time'];
    isPendingPayment = json['is_pending_payment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (text != null) {
      data['text'] = text!.toJson();
    }
    data['update_time'] = updateTime;
    data['is_pending_payment'] = isPendingPayment;
    return data;
  }
}

class Feedback {
  Shipper? shipper;
  Shipper? restaurant;

  Feedback({this.shipper, this.restaurant});

  Feedback.fromJson(Map<String, dynamic> json) {
    shipper =
    json['shipper'] != null ? Shipper.fromJson(json['shipper']) : null;
    restaurant = json['restaurant'] != null
        ? Shipper.fromJson(json['restaurant'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (shipper != null) {
      data['shipper'] = shipper!.toJson();
    }
    if (restaurant != null) {
      data['restaurant'] = restaurant!.toJson();
    }
    return data;
  }
}

class Shipper {
  int? rate;
  bool? isIncognito;

  Shipper({this.rate, this.isIncognito});

  Shipper.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];

    isIncognito = json['is_incognito'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rate'] = rate;
    data['is_incognito'] = isIncognito;
    return data;
  }
}

class OrderItems {
  int? totalItem;
  int? totalUser;

  OrderItems({this.totalItem, this.totalUser});

  OrderItems.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalUser = json['total_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_item'] = totalItem;
    data['total_user'] = totalUser;
    return data;
  }
}

class Host {
  List<Photos>? photos;
  List<int>? allowedPaymentMethods;
  int? uid;
  String? name;
  int? foodyUid;

  Host(
      {this.photos,
        this.allowedPaymentMethods,
        this.uid,
        this.name,
        this.foodyUid});

  Host.fromJson(Map<String, dynamic> json) {
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    allowedPaymentMethods = json['allowed_payment_methods'].cast<int>();
    uid = json['uid'];
    name = json['name'];
    foodyUid = json['foody_uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['allowed_payment_methods'] = allowedPaymentMethods;
    data['uid'] = uid;
    data['name'] = name;
    data['foody_uid'] = foodyUid;
    return data;
  }
}

class PaidStatus {
  bool? isSuccess;
  ModelPrice? fee;
  ModelPrice? amount;

  PaidStatus({this.isSuccess, this.fee, this.amount});

  PaidStatus.fromJson(Map<String, dynamic> json) {
    isSuccess = json['is_success'];
    fee = json['fee'] != null ? ModelPrice.fromJson(json['fee']) : null;
    amount = json['amount'] != null
        ? ModelPrice.fromJson(json['amount'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_success'] = isSuccess;
    if (fee != null) {
      data['fee'] = fee!.toJson();
    }
    if (amount != null) {
      data['amount'] = amount!.toJson();
    }
    return data;
  }
}

class PaidOption {
  int? paymentMethod;
  String? cardType;
  AirpaySource? airpaySource;
  String? cardNumber;

  PaidOption(
      {this.paymentMethod, this.cardType, this.airpaySource, this.cardNumber});

  PaidOption.fromJson(Map<String, dynamic> json) {
    paymentMethod = json['payment_method'];
    cardType = json['card_type'];
    airpaySource = json['airpay_source'] != null
        ? AirpaySource.fromJson(json['airpay_source'])
        : null;
    cardNumber = json['card_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['payment_method'] = paymentMethod;
    data['card_type'] = cardType;
    if (airpaySource != null) {
      data['airpay_source'] = airpaySource!.toJson();
    }
    data['card_number'] = cardNumber;
    return data;
  }
}

class AirpaySource {
  int? sourceId;
  int? channelId;
  String? sourceText;
  String? accountId;

  AirpaySource(
      {this.sourceId, this.channelId, this.sourceText, this.accountId});

  AirpaySource.fromJson(Map<String, dynamic> json) {
    sourceId = json['source_id'];
    channelId = json['channel_id'];
    sourceText = json['source_text'];
    accountId = json['account_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['source_id'] = sourceId;
    data['channel_id'] = channelId;
    data['source_text'] = sourceText;
    data['account_id'] = accountId;
    return data;
  }
}

class ShippingInfo {
  ShippingType? shippingType;
  DeliveryAddress? deliveryAddress;

  ShippingInfo({this.shippingType, this.deliveryAddress});

  ShippingInfo.fromJson(Map<String, dynamic> json) {
    shippingType = json['shipping_type'] != null
        ? ShippingType.fromJson(json['shipping_type'])
        : null;
    deliveryAddress = json['delivery_address'] != null
        ? DeliveryAddress.fromJson(json['delivery_address'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (shippingType != null) {
      data['shipping_type'] = shippingType!.toJson();
    }
    if (deliveryAddress != null) {
      data['delivery_address'] = deliveryAddress!.toJson();
    }
    return data;
  }
}

class ShippingType {
  int? id;
  String? name;

  ShippingType({this.id, this.name});

  ShippingType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class DeliveryAddress {
  String? gate;
  int? parkingFee;
  int? deliveryOption;
  String? phone;
  String? address;
  String? contactName;
  int? id;
  String? building;
  String? label;
  String? note;
  String? workAddress;
  Position? position;

  DeliveryAddress(
      {this.gate,
        this.parkingFee,
        this.deliveryOption,
        this.phone,
        this.address,
        this.contactName,
        this.id,
        this.building,
        this.label,
        this.note,
        this.workAddress,
        this.position});

  DeliveryAddress.fromJson(Map<String, dynamic> json) {
    gate = json['gate'];
    parkingFee = json['parking_fee'];
    deliveryOption = json['delivery_option'];
    phone = json['phone'];
    address = json['address'];
    contactName = json['contact_name'];
    id = json['id'];
    building = json['building'];
    label = json['label'];
    note = json['note'];
    workAddress = json['work_address'];
    position = json['position'] != null
        ? Position.fromJson(json['position'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gate'] = gate;
    data['parking_fee'] = parkingFee;
    data['delivery_option'] = deliveryOption;
    data['phone'] = phone;
    data['address'] = address;
    data['contact_name'] = contactName;
    data['id'] = id;
    data['building'] = building;
    data['label'] = label;
    data['note'] = note;
    data['work_address'] = workAddress;
    if (position != null) {
      data['position'] = position!.toJson();
    }
    return data;
  }
}

