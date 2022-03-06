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
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.reply != null) {
      data['reply'] = this.reply!.toJson();
    }
    data['result'] = this.result;
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.itemInfos != null) {
      data['item_infos'] = this.itemInfos!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.dishInfo != null) {
      data['dish_info'] = this.dishInfo!.toJson();
    }
    if (this.flashSaleInfo != null) {
      data['flash_sale_info'] = this.flashSaleInfo!.toJson();
    }
    if (this.deliveryInfo != null) {
      data['delivery_info'] = this.deliveryInfo!.toJson();
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
    data['dish_id'] = this.dishId;
    data['name'] = this.name;
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['sold'] = this.sold;
    if (this.discountPrice != null) {
      data['discount_price'] = this.discountPrice!.toJson();
    }
    data['session_id'] = this.sessionId;
    data['stock'] = this.stock;
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['delivery_id'] = this.deliveryId;
    data['name'] = this.name;
    data['restaurant_id'] = this.restaurantId;
    data['prepare_time'] = this.prepareTime;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['rewrite_url'] = this.rewriteUrl;
    data['location_url'] = this.locationUrl;
    return data;
  }
}