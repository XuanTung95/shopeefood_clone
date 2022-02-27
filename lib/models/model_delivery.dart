import 'model_photo.dart';

class DeliveryResponse {
  DeliveryReply? reply;
  String? result;

  DeliveryResponse({this.reply, this.result});

  DeliveryResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? DeliveryReply.fromJson(json['reply']) : null;
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

class DeliveryReply {
  List<ModelDelivery>? deliveryInfos;

  DeliveryReply({this.deliveryInfos});

  DeliveryReply.fromJson(Map<String, dynamic> json) {
    if (json['delivery_infos'] != null) {
      deliveryInfos = <ModelDelivery>[];
      json['delivery_infos'].forEach((v) { deliveryInfos!.add(ModelDelivery.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (deliveryInfos != null) {
      data['delivery_infos'] = deliveryInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelDelivery {
  int? totalOrder;
  Rating? rating;
  int? cityId;
  List<String>? phones;
  int? restaurantId;
  String? restaurantUrl;
  int? brandId;
  bool? isOpen;
  int? contractType;
  int? id;
  String? locationUrl;
  bool? hasContract;
  bool? isQualityMerchant;
  int? merchantTime;
  List<String>? categories;
  List<String>? cuisines;
  int? serviceType;
  String? urlRewriteName;
  bool? isFoodyDelivery;
  List<Null>? rushHour;
  Brand? brand;
  int? limitDistance;
  String? imageName;
  int? restaurantStatus;
  List<Null>? campaigns;
  List<Photos>? photos;
  Position? confirmMethods;
  String? address;
  String? nameEn;
  int? foodyServiceId;
  Position? minOrderValue;
  Operating? operating;
  String? name;
  List<PromotionGroups>? promotionGroups;
  String? url;
  int? displayOrder;
  int? deliveryId;
  int? districtId;
  bool? isPickup;
  MinOrderValue? priceRange;
  Position? position;
  List<int>? shippingMethods;
  Label? label;

  ModelDelivery({this.totalOrder, this.rating, this.cityId, this.phones, this.restaurantId, this.restaurantUrl, this.brandId, this.isOpen, this.contractType, this.id, this.locationUrl, this.hasContract, this.isQualityMerchant, this.merchantTime, this.categories, this.cuisines, this.serviceType, this.urlRewriteName, this.isFoodyDelivery, this.rushHour, this.brand, this.limitDistance, this.imageName, this.restaurantStatus, this.campaigns, this.photos, this.confirmMethods, this.address, this.nameEn, this.foodyServiceId, this.minOrderValue, this.operating, this.name, this.promotionGroups, this.url, this.displayOrder, this.deliveryId, this.districtId, this.isPickup, this.priceRange, this.position, this.shippingMethods, this.label});

  ModelDelivery.fromJson(Map<String, dynamic> json) {
    totalOrder = json['total_order'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    cityId = json['city_id'];
    phones = json['phones']?.cast<String>();
    restaurantId = json['restaurant_id'];
    restaurantUrl = json['restaurant_url'];
    brandId = json['brand_id'];
    isOpen = json['is_open'];
    contractType = json['contract_type'];
    id = json['id'];
    locationUrl = json['location_url'];
    hasContract = json['has_contract'];
    isQualityMerchant = json['is_quality_merchant'];
    merchantTime = json['merchant_time'];
    categories = json['categories']?.cast<String>();
    cuisines = json['cuisines']?.cast<String>();
    serviceType = json['service_type'];
    urlRewriteName = json['url_rewrite_name'];
    isFoodyDelivery = json['is_foody_delivery'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    limitDistance = json['limit_distance'];
    imageName = json['image_name'];
    restaurantStatus = json['restaurant_status'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) { photos!.add(Photos.fromJson(v)); });
    }
    confirmMethods = json['confirm_methods'] != null ? Position.fromJson(json['confirm_methods']) : null;
    address = json['address'];
    nameEn = json['name_en'];
    foodyServiceId = json['foody_service_id'];
    minOrderValue = json['min_order_value'] != null ? Position.fromJson(json['min_order_value']) : null;
    operating = json['operating'] != null ? Operating.fromJson(json['operating']) : null;
    name = json['name'];
    if (json['promotion_groups'] != null) {
      promotionGroups = <PromotionGroups>[];
      json['promotion_groups'].forEach((v) { promotionGroups!.add(PromotionGroups.fromJson(v)); });
    }
    url = json['url'];
    displayOrder = json['display_order'];
    deliveryId = json['delivery_id'];
    districtId = json['district_id'];
    isPickup = json['is_pickup'];
    priceRange = json['price_range'] != null ? MinOrderValue.fromJson(json['price_range']) : null;
    position = json['position'] != null ? Position.fromJson(json['position']) : null;
    shippingMethods = json['shipping_methods']?.cast<int>();
    label = json['label'] != null ? Label.fromJson(json['label']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_order'] = totalOrder;
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    data['city_id'] = cityId;
    data['phones'] = phones;
    data['restaurant_id'] = restaurantId;
    data['restaurant_url'] = restaurantUrl;
    data['brand_id'] = brandId;
    data['is_open'] = isOpen;
    data['contract_type'] = contractType;
    data['id'] = id;
    data['location_url'] = locationUrl;
    data['has_contract'] = hasContract;
    data['is_quality_merchant'] = isQualityMerchant;
    data['merchant_time'] = merchantTime;
    data['categories'] = categories;
    data['cuisines'] = cuisines;
    data['service_type'] = serviceType;
    data['url_rewrite_name'] = urlRewriteName;
    data['is_foody_delivery'] = isFoodyDelivery;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    data['limit_distance'] = limitDistance;
    data['image_name'] = imageName;
    data['restaurant_status'] = restaurantStatus;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    if (confirmMethods != null) {
      data['confirm_methods'] = confirmMethods!.toJson();
    }
    data['address'] = address;
    data['name_en'] = nameEn;
    data['foody_service_id'] = foodyServiceId;
    if (minOrderValue != null) {
      data['min_order_value'] = minOrderValue!.toJson();
    }
    if (operating != null) {
      data['operating'] = operating!.toJson();
    }
    data['name'] = name;
    if (promotionGroups != null) {
      data['promotion_groups'] = promotionGroups!.map((v) => v.toJson()).toList();
    }
    data['url'] = url;
    data['display_order'] = displayOrder;
    data['delivery_id'] = deliveryId;
    data['district_id'] = districtId;
    data['is_pickup'] = isPickup;
    if (priceRange != null) {
      data['price_range'] = priceRange!.toJson();
    }
    if (position != null) {
      data['position'] = position!.toJson();
    }
    data['shipping_methods'] = shippingMethods;
    if (label != null) {
      data['label'] = label!.toJson();
    }
    return data;
  }
}

class Rating {
  int? totalReview;
  double? avg;
  String? displayTotalReview;
  String? appLink;

  Rating({this.totalReview, this.avg, this.displayTotalReview, this.appLink});

  Rating.fromJson(Map<String, dynamic> json) {
    totalReview = json['total_review'];
    avg = (json['avg'] != null) ? (json['avg'] as num).toDouble() : null;
    displayTotalReview = json['display_total_review'];
    appLink = json['app_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_review'] = totalReview;
    data['avg'] = avg;
    data['display_total_review'] = displayTotalReview;
    data['app_link'] = appLink;
    return data;
  }
}

class Brand {
  String? promotionTitle;
  String? name;
  int? brandId;
  Operating? operating;
  Position? position;
  Position? minOrderValue;
  String? urlRewriteName;
  MinOrderValue? priceRange;
  int? restaurantCount;

  Brand({this.promotionTitle, this.name, this.brandId, this.operating, this.position, this.minOrderValue, this.urlRewriteName, this.priceRange, this.restaurantCount});

  Brand.fromJson(Map<String, dynamic> json) {
    promotionTitle = json['promotion_title'];
    name = json['name'];
    brandId = json['brand_id'];
    operating = json['operating'] != null ? Operating.fromJson(json['operating']) : null;
    position = json['position'] != null ? Position.fromJson(json['position']) : null;
    minOrderValue = json['min_order_value'] != null ? Position.fromJson(json['min_order_value']) : null;
    urlRewriteName = json['url_rewrite_name'];
    priceRange = json['price_range'] != null ? MinOrderValue.fromJson(json['price_range']) : null;
    restaurantCount = json['restaurant_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['promotion_title'] = promotionTitle;
    data['name'] = name;
    data['brand_id'] = brandId;
    if (operating != null) {
      data['operating'] = operating!.toJson();
    }
    if (position != null) {
      data['position'] = position!.toJson();
    }
    if (minOrderValue != null) {
      data['min_order_value'] = minOrderValue!.toJson();
    }
    data['url_rewrite_name'] = urlRewriteName;
    if (priceRange != null) {
      data['price_range'] = priceRange!.toJson();
    }
    data['restaurant_count'] = restaurantCount;
    return data;
  }
}

class Operating {
  int? status;
  String? color;
  String? closeTime;
  String? openTime;
  ModelText? text;

  Operating({this.status, this.color, this.closeTime, this.openTime, this.text});

  Operating.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    color = json['color'];
    closeTime = json['close_time'];
    openTime = json['open_time'];
    text = json['text'] != null ? ModelText.fromJson(json['text']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['color'] = color;
    data['close_time'] = closeTime;
    data['open_time'] = openTime;
    if (text != null) {
      data['text'] = text!.toJson();
    }
    return data;
  }
}

class ModelText {
  String? resourceName;

  ModelText({this.resourceName});

  ModelText.fromJson(Map<String, dynamic> json) {
    resourceName = json['resource_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resource_name'] = resourceName;
    return data;
  }
}

class MinOrderValue {
  String? resourceName;
  List<String>? resourceArgs;

  MinOrderValue({this.resourceName, this.resourceArgs});

  MinOrderValue.fromJson(Map<String, dynamic> json) {
    resourceName = json['resource_name'];
    resourceArgs = json['resource_args']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resource_name'] = resourceName;
    data['resource_args'] = resourceArgs;
    return data;
  }
}

class PromotionGroups {
  int? group;
  String? text;
  String? browsingIcon;
  int? discountType;
  int? id;
  String? icon;

  PromotionGroups({this.group, this.text, this.browsingIcon, this.discountType, this.id, this.icon});

  PromotionGroups.fromJson(Map<String, dynamic> json) {
    group = json['group'];
    text = json['text'];
    browsingIcon = json['browsing_icon'];
    discountType = json['discount_type'];
    id = json['id'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['group'] = group;
    data['text'] = text;
    data['browsing_icon'] = browsingIcon;
    data['discount_type'] = discountType;
    data['id'] = id;
    data['icon'] = icon;
    return data;
  }
}

class Position {
  double? latitude;
  bool? isVerified;
  double? longitude;

  Position({this.latitude, this.isVerified, this.longitude});

  Position.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    isVerified = json['is_verified'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = latitude;
    data['is_verified'] = isVerified;
    data['longitude'] = longitude;
    return data;
  }
}

class Label {
  List<Photos>? photos;
  int? labelPosition;

  Label({this.photos, this.labelPosition});

  Label.fromJson(Map<String, dynamic> json) {
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) { photos!.add(Photos.fromJson(v)); });
    }
    labelPosition = json['label_position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['label_position'] = labelPosition;
    return data;
  }
}

