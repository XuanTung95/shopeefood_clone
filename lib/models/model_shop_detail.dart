import 'model_delivery.dart';
import 'model_photo.dart';
import 'model_voucher.dart';

class ShopDetailResponse {
  ReplyShopDetail? reply;
  String? result;

  ShopDetailResponse({this.reply, this.result});

  ShopDetailResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyShopDetail.fromJson(json['reply']) : null;
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

class ReplyShopDetail {
  ModelShopDetail? deliveryDetail;

  ReplyShopDetail({this.deliveryDetail});

  ReplyShopDetail.fromJson(Map<String, dynamic> json) {
    deliveryDetail = json['delivery_detail'] != null ? ModelShopDetail.fromJson(json['delivery_detail']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (deliveryDetail != null) {
      data['delivery_detail'] = deliveryDetail!.toJson();
    }
    return data;
  }
}

class ModelShopDetail {
  int? totalOrder;
  Rating? rating;
  bool? isSubscribe;
  bool? isFavorite;
  int? cityId;
  List<String>? phones;
  int? restaurantId;
  bool? isNowDelivery;
  int? districtId;
  int? brandId;
  bool? asapIsAvailable;
  int? contractType;
  int? id;
  String? locationUrl;
  bool? isQualityMerchant;
  List<AvailableTimes>? availableTimes;
  bool? isCityAlert;
  List<String>? categories;
  List<String>? cuisines;
  String? urlRewriteName;
  int? serviceType;
  Brand? brand;
  int? limitDistance;
  List<int>? deliveryCategories;
  int? userFavoriteCount;
  Delivery? delivery;
  List<Photos>? photos;
  bool? isDisplayCutlery;
  String? address;
  String? nameEn;
  int? foodyServiceId;
  Title? minOrderValue;
  List<int>? rootCategoryIds;
  List<Promotions>? promotions;
  String? name;
  String? url;
  int? displayOrder;
  int? deliveryId;
  String? restaurantUrl;
  bool? isPickup;
  PriceRange? priceRange;
  int? parentCategoryId;
  Position? position;
  List<ResPhotos>? resPhotos;

  ModelShopDetail({this.totalOrder, this.rating, this.isSubscribe, this.isFavorite, this.cityId, this.phones, this.restaurantId, this.isNowDelivery, this.districtId, this.brandId, this.asapIsAvailable, this.contractType, this.id, this.locationUrl, this.isQualityMerchant, this.availableTimes, this.isCityAlert, this.categories, this.cuisines, this.urlRewriteName, this.serviceType, this.brand, this.limitDistance, this.deliveryCategories, this.userFavoriteCount, this.delivery, this.photos, this.isDisplayCutlery, this.address, this.nameEn, this.foodyServiceId, this.minOrderValue, this.rootCategoryIds, this.promotions, this.name, this.url, this.displayOrder, this.deliveryId, this.restaurantUrl, this.isPickup, this.priceRange, this.parentCategoryId, this.position, this.resPhotos});

  ModelShopDetail.fromJson(Map<String, dynamic> json) {
    totalOrder = json['total_order'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    isSubscribe = json['is_subscribe'];
    isFavorite = json['is_favorite'];
    cityId = json['city_id'];
    phones = json['phones'].cast<String>();
    restaurantId = json['restaurant_id'];
    isNowDelivery = json['is_now_delivery'];
    districtId = json['district_id'];
    brandId = json['brand_id'];
    asapIsAvailable = json['asap_is_available'];
    contractType = json['contract_type'];
    id = json['id'];
    locationUrl = json['location_url'];
    isQualityMerchant = json['is_quality_merchant'];
    if (json['available_times'] != null) {
      availableTimes = <AvailableTimes>[];
      json['available_times'].forEach((v) { availableTimes!.add(AvailableTimes.fromJson(v)); });
    }
    isCityAlert = json['is_city_alert'];
    categories = json['categories'].cast<String>();
    cuisines = json['cuisines'].cast<String>();
    urlRewriteName = json['url_rewrite_name'];
    serviceType = json['service_type'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    limitDistance = json['limit_distance'];
    deliveryCategories = json['delivery_categories'].cast<int>();
    userFavoriteCount = json['user_favorite_count'];
    delivery = json['delivery'] != null ? Delivery.fromJson(json['delivery']) : null;
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) { photos!.add(Photos.fromJson(v)); });
    }
    isDisplayCutlery = json['is_display_cutlery'];
    address = json['address'];
    nameEn = json['name_en'];
    foodyServiceId = json['foody_service_id'];
    minOrderValue = json['min_order_value'] != null ? Title.fromJson(json['min_order_value']) : null;
    rootCategoryIds = json['root_category_ids'].cast<int>();
    if (json['promotions'] != null) {
      promotions = <Promotions>[];
      json['promotions'].forEach((v) { promotions!.add(Promotions.fromJson(v)); });
    }
    name = json['name'];
    url = json['url'];
    displayOrder = json['display_order'];
    deliveryId = json['delivery_id'];
    restaurantUrl = json['restaurant_url'];
    isPickup = json['is_pickup'];
    priceRange = json['price_range'] != null ? PriceRange.fromJson(json['price_range']) : null;
    parentCategoryId = json['parent_category_id'];
    position = json['position'] != null ? Position.fromJson(json['position']) : null;
    if (json['res_photos'] != null) {
      resPhotos = <ResPhotos>[];
      json['res_photos'].forEach((v) { resPhotos!.add(ResPhotos.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_order'] = totalOrder;
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    data['is_subscribe'] = isSubscribe;
    data['is_favorite'] = isFavorite;
    data['city_id'] = cityId;
    data['phones'] = phones;
    data['restaurant_id'] = restaurantId;
    data['is_now_delivery'] = isNowDelivery;
    data['district_id'] = districtId;
    data['brand_id'] = brandId;
    data['asap_is_available'] = asapIsAvailable;
    data['contract_type'] = contractType;
    data['id'] = id;
    data['location_url'] = locationUrl;
    data['is_quality_merchant'] = isQualityMerchant;
    if (availableTimes != null) {
      data['available_times'] = availableTimes!.map((v) => v.toJson()).toList();
    }
    data['is_city_alert'] = isCityAlert;
    data['categories'] = categories;
    data['cuisines'] = cuisines;
    data['url_rewrite_name'] = urlRewriteName;
    data['service_type'] = serviceType;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    data['limit_distance'] = limitDistance;
    data['delivery_categories'] = deliveryCategories;
    data['user_favorite_count'] = userFavoriteCount;
    if (delivery != null) {
      data['delivery'] = delivery!.toJson();
    }
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['is_display_cutlery'] = isDisplayCutlery;
    data['address'] = address;
    data['name_en'] = nameEn;
    data['foody_service_id'] = foodyServiceId;
    if (minOrderValue != null) {
      data['min_order_value'] = minOrderValue!.toJson();
    }
    data['root_category_ids'] = rootCategoryIds;
    if (promotions != null) {
      data['promotions'] = promotions!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['url'] = url;
    data['display_order'] = displayOrder;
    data['delivery_id'] = deliveryId;
    data['restaurant_url'] = restaurantUrl;
    data['is_pickup'] = isPickup;
    if (priceRange != null) {
      data['price_range'] = priceRange!.toJson();
    }
    data['parent_category_id'] = parentCategoryId;
    if (position != null) {
      data['position'] = position!.toJson();
    }
    if (resPhotos != null) {
      data['res_photos'] = resPhotos!.map((v) => v.toJson()).toList();
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
    avg = json['avg'];
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

class AvailableTimes {
  String? date;
  List<String>? times;

  AvailableTimes({this.date, this.times});

  AvailableTimes.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    times = json['times'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['times'] = times;
    return data;
  }
}

class Brand {
  int? brandId;
  String? brandUrl;
  String? name;
  int? restaurantCount;

  Brand({this.brandId, this.brandUrl, this.name, this.restaurantCount});

  Brand.fromJson(Map<String, dynamic> json) {
    brandId = json['brand_id'];
    brandUrl = json['brand_url'];
    name = json['name'];
    restaurantCount = json['restaurant_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['brand_id'] = brandId;
    data['brand_url'] = brandUrl;
    data['name'] = name;
    data['restaurant_count'] = restaurantCount;
    return data;
  }
}

class Delivery {
  ModelTime? time;
  String? serviceBy;
  ServiceFee? serviceFee;
  int? merchantLimitDistance;
  List<int>? paymentMethods;
  bool? hasContract;
  int? settingLimitDistance;
  int? merchantTime;
  int? prepareDuration;
  AvgPrice? avgPrice;
  Title? minOrderValue;
  Operating? operating;
  bool? isOpen;
  ShippingFee? shippingFee;
  bool? isPeakMode;
  String? minCharge;
  bool? isFoodyDelivery;

  Delivery({this.time, this.serviceBy, this.serviceFee, this.merchantLimitDistance, this.paymentMethods, this.hasContract, this.settingLimitDistance, this.merchantTime, this.prepareDuration, this.avgPrice, this.minOrderValue, this.operating, this.isOpen, this.shippingFee, this.isPeakMode, this.minCharge, this.isFoodyDelivery});

  Delivery.fromJson(Map<String, dynamic> json) {
    time = json['time'] != null ? ModelTime.fromJson(json['time']) : null;
    serviceBy = json['service_by'];
    serviceFee = json['service_fee'] != null ? ServiceFee.fromJson(json['service_fee']) : null;
    merchantLimitDistance = json['merchant_limit_distance'];
    paymentMethods = json['payment_methods'].cast<int>();
    hasContract = json['has_contract'];
    settingLimitDistance = json['setting_limit_distance'];
    merchantTime = json['merchant_time'];
    prepareDuration = json['prepare_duration'];
    avgPrice = json['avg_price'] != null ? AvgPrice.fromJson(json['avg_price']) : null;
    minOrderValue = json['min_order_value'] != null ? Title.fromJson(json['min_order_value']) : null;
    operating = json['operating'] != null ? Operating.fromJson(json['operating']) : null;
    isOpen = json['is_open'];
    shippingFee = json['shipping_fee'] != null ? ShippingFee.fromJson(json['shipping_fee']) : null;
    isPeakMode = json['is_peak_mode'];
    minCharge = json['min_charge'];
    isFoodyDelivery = json['is_foody_delivery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (time != null) {
      data['time'] = time!.toJson();
    }
    data['service_by'] = serviceBy;
    if (serviceFee != null) {
      data['service_fee'] = serviceFee!.toJson();
    }
    data['merchant_limit_distance'] = merchantLimitDistance;
    data['payment_methods'] = paymentMethods;
    data['has_contract'] = hasContract;
    data['setting_limit_distance'] = settingLimitDistance;
    data['merchant_time'] = merchantTime;
    data['prepare_duration'] = prepareDuration;
    if (avgPrice != null) {
      data['avg_price'] = avgPrice!.toJson();
    }
    if (minOrderValue != null) {
      data['min_order_value'] = minOrderValue!.toJson();
    }
    if (operating != null) {
      data['operating'] = operating!.toJson();
    }
    data['is_open'] = isOpen;
    if (shippingFee != null) {
      data['shipping_fee'] = shippingFee!.toJson();
    }
    data['is_peak_mode'] = isPeakMode;
    data['min_charge'] = minCharge;
    data['is_foody_delivery'] = isFoodyDelivery;
    return data;
  }
}

class ModelTime {
  List<WeekDays>? weekDays;

  ModelTime({this.weekDays, });

  ModelTime.fromJson(Map<String, dynamic> json) {
    if (json['week_days'] != null) {
      weekDays = <WeekDays>[];
      json['week_days'].forEach((v) { weekDays!.add(WeekDays.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (weekDays != null) {
      data['week_days'] = weekDays!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WeekDays {
  String? startTime;
  int? weekDay;
  String? endTime;

  WeekDays({this.startTime, this.weekDay, this.endTime});

  WeekDays.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    weekDay = json['week_day'];
    endTime = json['end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start_time'] = startTime;
    data['week_day'] = weekDay;
    data['end_time'] = endTime;
    return data;
  }
}

class ServiceFee {
  String? text;
  double? value;

  ServiceFee({this.text, this.value});

  ServiceFee.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['value'] = value;
    return data;
  }
}

class AvgPrice {
  String? text;
  MinOrderValue? formatText;
  double? value;
  String? unit;

  AvgPrice({this.text, this.formatText, this.value, this.unit});

  AvgPrice.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    formatText = json['format_text'] != null ? MinOrderValue.fromJson(json['format_text']) : null;
    value = json['value'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (formatText != null) {
      data['format_text'] = formatText!.toJson();
    }
    data['value'] = value;
    data['unit'] = unit;
    return data;
  }
}


class Operating {
  int? status;
  String? color;
  String? closeTime;
  String? openTime;
  MinOrderValue? text;

  Operating({this.status, this.color, this.closeTime, this.openTime, this.text});

  Operating.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    color = json['color'];
    closeTime = json['close_time'];
    openTime = json['open_time'];
    text = json['text'] != null ? MinOrderValue.fromJson(json['text']) : null;
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

class ShippingFee {
  MinOrderValue? text;
  double? value;
  int? isIncreasing;
  double? rate;
  String? minimumFee;
  String? unit;

  ShippingFee({this.text, this.value, this.isIncreasing, this.rate, this.minimumFee, this.unit});

  ShippingFee.fromJson(Map<String, dynamic> json) {
    text = json['text'] != null ? MinOrderValue.fromJson(json['text']) : null;
    value = json['value'];
    isIncreasing = json['is_increasing'];
    rate = json['rate'];
    minimumFee = json['minimum_fee'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (text != null) {
      data['text'] = text!.toJson();
    }
    data['value'] = value;
    data['is_increasing'] = isIncreasing;
    data['rate'] = rate;
    data['minimum_fee'] = minimumFee;
    data['unit'] = unit;
    return data;
  }
}


class Promotions {
  int? minOrderAmount;
  int? maxDiscountAmount;
  String? code;
  List<int>? foodyServiceIds;
  //Title? title;
  Title? maxDiscountValue;
  int? discountValueType;
  int? discountOnType;
  int? displayOrder;
  List<int>? shippingMethods;
  int? discountType;
  int? merchantType;
  List<CustomCondition>? customCondition;
  int? displayType;
  Title? minOrderValue;
  String? discountValue;
  String? expired;
  int? id;
  String? icon;
  Title? formattedTitle;

  Promotions({this.minOrderAmount, this.maxDiscountAmount, this.code, this.foodyServiceIds, this.maxDiscountValue, this.discountValueType, this.discountOnType, this.displayOrder, this.shippingMethods, this.discountType, this.merchantType, this.customCondition, this.displayType, this.minOrderValue, this.discountValue, this.expired, this.id, this.icon, this.formattedTitle});

  Promotions.fromJson(Map<String, dynamic> json) {
    minOrderAmount = json['min_order_amount'];
    maxDiscountAmount = json['max_discount_amount'];
    code = json['code'];
    foodyServiceIds = json['foody_service_ids']?.cast<int>();
    // title = json['title'] != null ? Title.fromJson(json['title']) : null;
    maxDiscountValue = json['max_discount_value'] != null ? Title.fromJson(json['max_discount_value']) : null;
    discountValueType = json['discount_value_type'];
    discountOnType = json['discount_on_type'];
    displayOrder = json['display_order'];
    shippingMethods = json['shipping_methods'].cast<int>();
    discountType = json['discount_type'];
    merchantType = json['merchant_type'];
    if (json['custom_condition'] != null) {
      customCondition = <CustomCondition>[];
      json['custom_condition'].forEach((v) { customCondition!.add(CustomCondition.fromJson(v)); });
    }
    displayType = json['display_type'];
    minOrderValue = json['min_order_value'] != null ? Title.fromJson(json['min_order_value']) : null;
    discountValue = json['discount_value'];
    expired = json['expired'];
    id = json['id'];
    icon = json['icon'];
    formattedTitle = json['formatted_title'] != null ? Title.fromJson(json['formatted_title']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min_order_amount'] = minOrderAmount;
    data['max_discount_amount'] = maxDiscountAmount;
    data['code'] = code;
    data['foody_service_ids'] = foodyServiceIds;
    // if (title != null) {
    //   data['title'] = title!.toJson();
    // }
    if (maxDiscountValue != null) {
      data['max_discount_value'] = maxDiscountValue!.toJson();
    }
    data['discount_value_type'] = discountValueType;
    data['discount_on_type'] = discountOnType;
    data['display_order'] = displayOrder;
    data['shipping_methods'] = shippingMethods;
    data['discount_type'] = discountType;
    data['merchant_type'] = merchantType;
    if (customCondition != null) {
      data['custom_condition'] = customCondition!.map((v) => v.toJson()).toList();
    }
    data['display_type'] = displayType;
    if (minOrderValue != null) {
      data['min_order_value'] = minOrderValue!.toJson();
    }
    data['discount_value'] = discountValue;
    data['expired'] = expired;
    data['id'] = id;
    data['icon'] = icon;
    if (formattedTitle != null) {
      data['formatted_title'] = formattedTitle!.toJson();
    }
    return data;
  }
}

class Title {
  String? message;

  Title({this.message});

  Title.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    return data;
  }
}

class PriceRange {
  double? minPrice;
  double? maxPrice;

  PriceRange({this.minPrice, this.maxPrice});

  PriceRange.fromJson(Map<String, dynamic> json) {
    minPrice = json['min_price'];
    maxPrice = json['max_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min_price'] = minPrice;
    data['max_price'] = maxPrice;
    return data;
  }
}

class ResPhotos {
  List<Photos>? photos;

  ResPhotos({this.photos});

  ResPhotos.fromJson(Map<String, dynamic> json) {
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) { photos!.add(Photos.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}




