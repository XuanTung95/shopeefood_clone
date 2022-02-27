
import '../mixin/photo_mixin.dart';
import 'model_label.dart';
import 'model_photo.dart';
import 'model_position.dart';
import 'model_price.dart';

class DishResponse {
  DishReply? reply;
  String? result;

  DishResponse({this.reply, this.result});

  DishResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? new DishReply.fromJson(json['reply']) : null;
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (reply != null) {
      data['reply'] = reply!.toJson();
    }
    data['result'] = result;
    return data;
  }
}

class DishReply {
  List<ModelDish>? dishInfos;

  DishReply({this.dishInfos});

  DishReply.fromJson(Map<String, dynamic> json) {
    if (json['dish_infos'] != null) {
      dishInfos = <ModelDish>[];
      json['dish_infos'].forEach((v) {
        dishInfos!.add(new ModelDish.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (dishInfos != null) {
      data['dish_infos'] = dishInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelDish with PhotoMixin {
  int? totalOrder;
  //List<Null>? campaigns;
  String? name;
  String? displayTotalOrder;
  Price? price;
  int? discountRemainingQuantity;
  Price? discountPrice;
  int? totalLike;
  String? displayTotalLike;
  Delivery? delivery;
  List<Photos>? photos;
  bool? isValid;
  int? limitType;
  String? nameEn;
  int? id;

  ModelDish(
      {this.totalOrder,
        //this.campaigns,
        this.name,
        this.displayTotalOrder,
        this.price,
        this.discountRemainingQuantity,
        this.discountPrice,
        this.totalLike,
        this.displayTotalLike,
        this.delivery,
        this.photos,
        this.isValid,
        this.limitType,
        this.nameEn,
        this.id});

  ModelDish.fromJson(Map<String, dynamic> json) {
    totalOrder = json['total_order'];
    // if (json['campaigns'] != null) {
    //   campaigns = <Null>[];
    //   json['campaigns'].forEach((v) {
    //     campaigns!.add(new Null.fromJson(v));
    //   });
    // }
    name = json['name'];
    displayTotalOrder = json['display_total_order'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    discountRemainingQuantity = json['discount_remaining_quantity'];
    discountPrice = json['discount_price'] != null
        ? new Price.fromJson(json['discount_price'])
        : null;
    totalLike = json['total_like'];
    displayTotalLike = json['display_total_like'];
    delivery = json['delivery'] != null
        ? new Delivery.fromJson(json['delivery'])
        : null;
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
    isValid = json['is_valid'];
    limitType = json['limit_type'];
    nameEn = json['name_en'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_order'] = totalOrder;
    // if (this.campaigns != null) {
    //   data['campaigns'] = this.campaigns!.map((v) => v.toJson()).toList();
    // }
    data['name'] = name;
    data['display_total_order'] = displayTotalOrder;
    if (price != null) {
      data['price'] = price!.toJson();
    }
    data['discount_remaining_quantity'] = discountRemainingQuantity;
    if (discountPrice != null) {
      data['discount_price'] = discountPrice!.toJson();
    }
    data['total_like'] = totalLike;
    data['display_total_like'] = displayTotalLike;
    if (delivery != null) {
      data['delivery'] = delivery!.toJson();
    }
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['is_valid'] = isValid;
    data['limit_type'] = limitType;
    data['name_en'] = nameEn;
    data['id'] = id;
    return data;
  }
}

class Delivery {
  String? name;
  int? cityId;
  int? restaurantId;
  int? prepareTime;
  Label? label;
  List<Photos>? photos;
  Position? position;
  String? nameEn;
  int? id;

  Delivery(
      {this.name,
        this.cityId,
        this.restaurantId,
        this.prepareTime,
        this.label,
        this.photos,
        this.position,
        this.nameEn,
        this.id});

  Delivery.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    cityId = json['city_id'];
    restaurantId = json['restaurant_id'];
    prepareTime = json['prepare_time'];
    label = json['label'] != null ? new Label.fromJson(json['label']) : null;
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
    position = json['position'] != null
        ? new Position.fromJson(json['position'])
        : null;
    nameEn = json['name_en'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['city_id'] = cityId;
    data['restaurant_id'] = restaurantId;
    data['prepare_time'] = prepareTime;
    if (label != null) {
      data['label'] = label!.toJson();
    }
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    if (position != null) {
      data['position'] = position!.toJson();
    }
    data['name_en'] = nameEn;
    data['id'] = id;
    return data;
  }
}




