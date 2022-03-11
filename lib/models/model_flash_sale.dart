import 'model_photo.dart';
import 'model_price.dart';

class FlashSaleResponse {
  ReplyFlashSale? reply;
  String? result;

  FlashSaleResponse({this.reply, this.result});

  FlashSaleResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyFlashSale.fromJson(json['reply']) : null;
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

class ReplyFlashSale {
  List<ModelFlashSale>? itemInfos;

  ReplyFlashSale({this.itemInfos});

  ReplyFlashSale.fromJson(Map<String, dynamic> json) {
    if (json['item_infos'] != null) {
      itemInfos = <ModelFlashSale>[];
      json['item_infos'].forEach((v) {
        itemInfos!.add(ModelFlashSale.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (itemInfos != null) {
      data['item_infos'] = itemInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelFlashSale {
  DishInfo? dishInfo;
  FlashSaleInfo? flashSaleInfo;
  DeliveryInfo? deliveryInfo;

  ModelFlashSale({this.dishInfo, this.flashSaleInfo, this.deliveryInfo});

  ModelFlashSale.fromJson(Map<String, dynamic> json) {
    dishInfo = json['dish_info'] != null
        ? DishInfo.fromJson(json['dish_info'])
        : null;
    flashSaleInfo = json['flash_sale_info'] != null
        ? FlashSaleInfo.fromJson(json['flash_sale_info'])
        : null;
    deliveryInfo = json['delivery_info'] != null
        ? DeliveryInfo.fromJson(json['delivery_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dishInfo != null) {
      data['dish_info'] = dishInfo!.toJson();
    }
    if (flashSaleInfo != null) {
      data['flash_sale_info'] = flashSaleInfo!.toJson();
    }
    if (deliveryInfo != null) {
      data['delivery_info'] = deliveryInfo!.toJson();
    }
    return data;
  }
}

class DishInfo {
  List<Photos>? photos;
  ModelPrice? price;
  int? dishId;
  String? name;

  DishInfo({this.photos, this.price, this.dishId, this.name});

  DishInfo.fromJson(Map<String, dynamic> json) {
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    price = json['price'] != null ? ModelPrice.fromJson(json['price']) : null;
    dishId = json['dish_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    if (price != null) {
      data['price'] = price!.toJson();
    }
    data['dish_id'] = dishId;
    data['name'] = name;
    return data;
  }
}

class FlashSaleInfo {
  int? sold;
  ModelPrice? discountPrice;
  int? sessionId;
  int? stock;

  FlashSaleInfo({this.sold, this.discountPrice, this.sessionId, this.stock});

  FlashSaleInfo.fromJson(Map<String, dynamic> json) {
    sold = json['sold'];
    discountPrice = json['discount_price'] != null
        ? ModelPrice.fromJson(json['discount_price'])
        : null;
    sessionId = json['session_id'];
    stock = json['stock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sold'] = sold;
    if (discountPrice != null) {
      data['discount_price'] = discountPrice!.toJson();
    }
    data['session_id'] = sessionId;
    data['stock'] = stock;
    return data;
  }
}

class DeliveryInfo {
  int? deliveryId;
  String? name;
  int? restaurantId;
  int? prepareTime;
  double? longitude;
  double? latitude;
  String? rewriteUrl;
  String? locationUrl;

  DeliveryInfo(
      {this.deliveryId,
        this.name,
        this.restaurantId,
        this.prepareTime,
        this.longitude,
        this.latitude,
        this.rewriteUrl,
        this.locationUrl});

  DeliveryInfo.fromJson(Map<String, dynamic> json) {
    deliveryId = json['delivery_id'];
    name = json['name'];
    restaurantId = json['restaurant_id'];
    prepareTime = json['prepare_time'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    rewriteUrl = json['rewrite_url'];
    locationUrl = json['location_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['delivery_id'] = deliveryId;
    data['name'] = name;
    data['restaurant_id'] = restaurantId;
    data['prepare_time'] = prepareTime;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['rewrite_url'] = rewriteUrl;
    data['location_url'] = locationUrl;
    return data;
  }
}