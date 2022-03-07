
import 'package:shopeefood_clone/models/model_price.dart';

import 'model_cart.dart';
import 'model_delivery.dart';
import 'model_order.dart';

class DraftOrderResponse {
  ReplyDraftOrder? reply;
  String? result;

  DraftOrderResponse({this.reply, this.result});

  DraftOrderResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyDraftOrder.fromJson(json['reply']) : null;
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

class ReplyDraftOrder {
  List<ModelDraftCarts>? draftCarts;

  ReplyDraftOrder({this.draftCarts});

  ReplyDraftOrder.fromJson(Map<String, dynamic> json) {
    if (json['draft_carts'] != null) {
      draftCarts = <ModelDraftCarts>[];
      json['draft_carts'].forEach((v) {
        draftCarts!.add(ModelDraftCarts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (draftCarts != null) {
      data['draft_carts'] = draftCarts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class ModelDraftCarts {
  ModelPrice? orderValue;
  String? orderTime;
  OrderItemInfo? orderItems;
  ModelDelivery? delivery;
  ModelHost? host;
  int? id;
  int? orderType;

  ModelDraftCarts(
      {this.orderValue,
        this.orderTime,
        this.orderItems,
        this.delivery,
        this.host,
        this.id,
        this.orderType});

  ModelDraftCarts.fromJson(Map<String, dynamic> json) {
    orderValue = json['order_value'] != null
        ? ModelPrice.fromJson(json['order_value'])
        : null;
    orderTime = json['order_time'];
    orderItems = json['order_items'] != null
        ? OrderItemInfo.fromJson(json['order_items'])
        : null;
    delivery = json['delivery'] != null
        ? ModelDelivery.fromJson(json['delivery'])
        : null;
    host = json['host'] != null ? ModelHost.fromJson(json['host']) : null;
    id = json['id'];
    orderType = json['order_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (orderValue != null) {
      data['order_value'] = orderValue!.toJson();
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
    data['id'] = id;
    data['order_type'] = orderType;
    return data;
  }
}
