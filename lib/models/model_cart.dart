import 'model_feedback_response.dart';
import 'model_order.dart';
import 'model_photo.dart';
import 'model_price.dart';
import 'model_shop_detail.dart';

class ModelCartResponse {
  ReplyCart? reply;
  String? result;

  ModelCartResponse({this.reply, this.result});

  ModelCartResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyCart.fromJson(json['reply']) : null;
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

class ReplyCart {
  Delivery? delivery;
  ModelHost? host;
  int? orderType;
  String? orderTime;
  int? id;
  List<OrderItems>? orderItems;
  ModelPrice? orderValue;

  ReplyCart(
      {this.delivery,
        this.host,
        this.orderType,
        this.orderTime,
        this.id,
        this.orderItems,
        this.orderValue});

  ReplyCart.fromJson(Map<String, dynamic> json) {
    delivery = json['delivery'] != null
        ? Delivery.fromJson(json['delivery'])
        : null;
    host = json['host'] != null ? ModelHost.fromJson(json['host']) : null;
    orderType = json['order_type'];
    orderTime = json['order_time'];
    id = json['id'];
    if (json['order_items'] != null) {
      orderItems = <OrderItems>[];
      json['order_items'].forEach((v) {
        orderItems!.add(OrderItems.fromJson(v));
      });
    }
    orderValue = json['order_value'] != null
        ? ModelPrice.fromJson(json['order_value'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (delivery != null) {
      data['delivery'] = delivery!.toJson();
    }
    if (host != null) {
      data['host'] = host!.toJson();
    }
    data['order_type'] = orderType;
    data['order_time'] = orderTime;
    data['id'] = id;
    if (orderItems != null) {
      data['order_items'] = orderItems!.map((v) => v.toJson()).toList();
    }
    if (orderValue != null) {
      data['order_value'] = orderValue!.toJson();
    }
    return data;
  }
}

class Delivery {
  int? restaurantId;
  int? foodyServiceId;
  String? urlRewriteName;
  int? id;
  String? name;

  Delivery(
      {this.restaurantId,
        this.foodyServiceId,
        this.urlRewriteName,
        this.id,
        this.name});

  Delivery.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurant_id'];
    foodyServiceId = json['foody_service_id'];
    urlRewriteName = json['url_rewrite_name'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['restaurant_id'] = restaurantId;
    data['foody_service_id'] = foodyServiceId;
    data['url_rewrite_name'] = urlRewriteName;
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class OrderItems {
  Orders? orders;
  ModelShopDetail? restaurant;

  OrderItems({this.orders, this.restaurant});

  OrderItems.fromJson(Map<String, dynamic> json) {
    orders =
    json['orders'] != null ? Orders.fromJson(json['orders']) : null;
    restaurant = json['restaurant'] != null
        ? ModelShopDetail.fromJson(json['restaurant'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (orders != null) {
      data['orders'] = orders!.toJson();
    }
    if (restaurant != null) {
      data['restaurant'] = restaurant!.toJson();
    }
    return data;
  }
}

class Orders {
  int? totalCount;
  int? totalItem;
  List<UserOrder>? userOrder;

  Orders({this.totalCount, this.totalItem, this.userOrder});

  Orders.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'];
    totalItem = json['total_item'];
    if (json['user_order'] != null) {
      userOrder = <UserOrder>[];
      json['user_order'].forEach((v) {
        userOrder!.add(UserOrder.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_count'] = totalCount;
    data['total_item'] = totalItem;
    if (userOrder != null) {
      data['user_order'] = userOrder!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserOrder {
  int? status;
  int? subtotalPerUser;
  int? totalCount;
  List<OrderDishes>? orderDishes;
  User? user;
  int? realSubtotalPerUser;
  ModelPrice? mustPayAmount;

  UserOrder(
      {this.status,
        this.subtotalPerUser,
        this.totalCount,
        this.orderDishes,
        this.user,
        this.realSubtotalPerUser,
        this.mustPayAmount});

  UserOrder.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    subtotalPerUser = json['subtotal_per_user'];
    totalCount = json['total_count'];
    if (json['order_dishes'] != null) {
      orderDishes = <OrderDishes>[];
      json['order_dishes'].forEach((v) {
        orderDishes!.add(OrderDishes.fromJson(v));
      });
    }
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    realSubtotalPerUser = json['real_subtotal_per_user'];
    mustPayAmount = json['must_pay_amount'] != null
        ? ModelPrice.fromJson(json['must_pay_amount'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['subtotal_per_user'] = subtotalPerUser;
    data['total_count'] = totalCount;
    if (orderDishes != null) {
      data['order_dishes'] = orderDishes!.map((v) => v.toJson()).toList();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['real_subtotal_per_user'] = realSubtotalPerUser;
    if (mustPayAmount != null) {
      data['must_pay_amount'] = mustPayAmount!.toJson();
    }
    return data;
  }
}

class OrderDishes {
  String? note;
  ModelPrice? originalPrice;
  bool? isFreeItem;
  Dish? dish;
  bool? isEditable;
  ModelPrice? price;
  int? quantity;
  int? id;

  OrderDishes(
      {this.note,
        this.originalPrice,
        this.isFreeItem,
        this.dish,
        this.isEditable,
        this.price,
        this.quantity,
        this.id,});

  OrderDishes.fromJson(Map<String, dynamic> json) {
    note = json['note'];
    originalPrice = json['original_price'] != null
        ? ModelPrice.fromJson(json['original_price'])
        : null;
    isFreeItem = json['is_free_item'];
    dish = json['dish'] != null ? Dish.fromJson(json['dish']) : null;
    isEditable = json['is_editable'];
    price = json['price'] != null
        ? ModelPrice.fromJson(json['price'])
        : null;
    quantity = json['quantity'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['note'] = note;
    if (originalPrice != null) {
      data['original_price'] = originalPrice!.toJson();
    }
    data['is_free_item'] = isFreeItem;
    if (dish != null) {
      data['dish'] = dish!.toJson();
    }
    data['is_editable'] = isEditable;
    if (price != null) {
      data['price'] = price!.toJson();
    }
    data['quantity'] = quantity;
    data['id'] = id;
    return data;
  }
}


class Dish {
  ModelPrice? originalPrice;
  ModelPrice? price;
  int? id;
  List<Photos>? photos;
  String? name;

  Dish({this.originalPrice, this.price, this.id, this.photos, this.name});

  Dish.fromJson(Map<String, dynamic> json) {
    originalPrice = json['original_price'] != null
        ? ModelPrice.fromJson(json['original_price'])
        : null;
    price = json['price'] != null
        ? ModelPrice.fromJson(json['price'])
        : null;
    id = json['id'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (originalPrice != null) {
      data['original_price'] = originalPrice!.toJson();
    }
    if (price != null) {
      data['price'] = price!.toJson();
    }
    data['id'] = id;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    return data;
  }
}
