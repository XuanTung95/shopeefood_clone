import 'model_photo.dart';

class MetaResponse {
  ModelMetaData? reply;
  String? result;

  MetaResponse({this.reply, this.result});

  MetaResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ModelMetaData.fromJson(json['reply']) : null;
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

class ModelMetaData {
  String? confirmation;
  String? lastUpdated;
  String? languageResource;
  Country? country;
  bool? chat;
  Services? services;

  ModelMetaData(
      {this.confirmation,
        this.lastUpdated,
        this.languageResource,
        this.country,
        this.chat,
        this.services});

  ModelMetaData.fromJson(Map<String, dynamic> json) {
    confirmation = json['confirmation'];
    lastUpdated = json['last_updated'];
    languageResource = json['language_resource'];
    country =
    json['country'] != null ? Country.fromJson(json['country']) : null;
    chat = json['chat'];
    services = json['services'] != null
        ? Services.fromJson(json['services'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['confirmation'] = confirmation;
    data['last_updated'] = lastUpdated;
    data['language_resource'] = languageResource;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    data['chat'] = chat;
    if (services != null) {
      data['services'] = services!.toJson();
    }
    return data;
  }
}

class Country {
  List<RestaurantSortType>? restaurantSortType;
  List<UserOccupations>? userOccupations;
  Currency? currency;
  String? countryCode;
  String? languageCode;
  int? id;
  bool? isAppFullSupport;
  HelpCenter? helpCenter;
  SettingKeys? settingKeys;
  String? paymentLink;
  String? apiLink;
  String? confirmMethod;
  List<RestaurantFilterType>? restaurantFilterType;
  String? predefinedChatText;
  HomeBackground? homeBackground;
  List<BookingServices>? bookingServices;
  Payment? payment;
  List<Categories>? categories;
  List<FeedbackReason>? feedbackReason;
  String? name;
  bool? paymentNowpayEnable;
  List<AvgPriceRangeFilter>? avgPriceRangeFilter;
  OrderExtraFees? orderExtraFees;
  List<Cities>? cities;
  List<DisplayGroupInfos>? displayGroupInfos;
  String? timeZone;
  bool? isAppDefault;
  String? paymentNowpayLink;
  List<CancelOptions>? cancelOptions;
  String? push;
  List<DeliverySortOptions>? deliverySortOptions;
  List<NowServices>? nowServices;
  String? mediaLink;

  Country(
      {this.restaurantSortType,
        this.userOccupations,
        this.currency,
        this.countryCode,
        this.languageCode,
        this.id,
        this.isAppFullSupport,
        this.helpCenter,
        this.settingKeys,
        this.paymentLink,
        this.apiLink,
        this.confirmMethod,
        this.restaurantFilterType,
        this.predefinedChatText,
        this.homeBackground,
        this.bookingServices,
        this.payment,
        this.categories,
        this.feedbackReason,
        this.name,
        this.paymentNowpayEnable,
        this.avgPriceRangeFilter,
        this.orderExtraFees,
        this.cities,
        this.displayGroupInfos,
        this.timeZone,
        this.isAppDefault,
        this.paymentNowpayLink,
        this.cancelOptions,
        this.push,
        this.deliverySortOptions,
        this.nowServices,
        this.mediaLink});

  Country.fromJson(Map<String, dynamic> json) {
    if (json['restaurant_sort_type'] != null) {
      restaurantSortType = <RestaurantSortType>[];
      json['restaurant_sort_type'].forEach((v) {
        restaurantSortType!.add(RestaurantSortType.fromJson(v));
      });
    }
    if (json['user_occupations'] != null) {
      userOccupations = <UserOccupations>[];
      json['user_occupations'].forEach((v) {
        userOccupations!.add(UserOccupations.fromJson(v));
      });
    }
    currency = json['currency'] != null
        ? Currency.fromJson(json['currency'])
        : null;
    countryCode = json['country_code'];
    languageCode = json['language_code'];
    id = json['id'];
    isAppFullSupport = json['is_app_full_support'];
    helpCenter = json['help_center'] != null
        ? HelpCenter.fromJson(json['help_center'])
        : null;
    settingKeys = json['setting_keys'] != null
        ? SettingKeys.fromJson(json['setting_keys'])
        : null;
    paymentLink = json['payment_link'];
    apiLink = json['api_link'];
    confirmMethod = json['confirm_method'];
    if (json['restaurant_filter_type'] != null) {
      restaurantFilterType = <RestaurantFilterType>[];
      json['restaurant_filter_type'].forEach((v) {
        restaurantFilterType!.add(RestaurantFilterType.fromJson(v));
      });
    }

    predefinedChatText = json['predefined_chat_text'];
    homeBackground = json['home_background'] != null
        ? HomeBackground.fromJson(json['home_background'])
        : null;
    if (json['booking_services'] != null) {
      bookingServices = <BookingServices>[];
      json['booking_services'].forEach((v) {
        bookingServices!.add(BookingServices.fromJson(v));
      });
    }
    payment =
    json['payment'] != null ? Payment.fromJson(json['payment']) : null;
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    if (json['feedback_reason'] != null) {
      feedbackReason = <FeedbackReason>[];
      json['feedback_reason'].forEach((v) {
        feedbackReason!.add(FeedbackReason.fromJson(v));
      });
    }
    name = json['name'];
    paymentNowpayEnable = json['payment_nowpay_enable'];
    if (json['avg_price_range_filter'] != null) {
      avgPriceRangeFilter = <AvgPriceRangeFilter>[];
      json['avg_price_range_filter'].forEach((v) {
        avgPriceRangeFilter!.add(AvgPriceRangeFilter.fromJson(v));
      });
    }
    orderExtraFees = json['order_extra_fees'] != null
        ? OrderExtraFees.fromJson(json['order_extra_fees'])
        : null;
    if (json['cities'] != null) {
      cities = <Cities>[];
      json['cities'].forEach((v) {
        cities!.add(Cities.fromJson(v));
      });
    }
    if (json['display_group_infos'] != null) {
      displayGroupInfos = <DisplayGroupInfos>[];
      json['display_group_infos'].forEach((v) {
        displayGroupInfos!.add(DisplayGroupInfos.fromJson(v));
      });
    }
    timeZone = json['time_zone'];
    isAppDefault = json['is_app_default'];

    paymentNowpayLink = json['payment_nowpay_link'];
    if (json['cancel_options'] != null) {
      cancelOptions = <CancelOptions>[];
      json['cancel_options'].forEach((v) {
        cancelOptions!.add(CancelOptions.fromJson(v));
      });
    }
    push = json['push'];
    if (json['delivery_sort_options'] != null) {
      deliverySortOptions = <DeliverySortOptions>[];
      json['delivery_sort_options'].forEach((v) {
        deliverySortOptions!.add(DeliverySortOptions.fromJson(v));
      });
    }
    if (json['now_services'] != null) {
      nowServices = <NowServices>[];
      json['now_services'].forEach((v) {
        nowServices!.add(NowServices.fromJson(v));
      });
    }
    mediaLink = json['media_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (restaurantSortType != null) {
      data['restaurant_sort_type'] =
          restaurantSortType!.map((v) => v.toJson()).toList();
    }
    if (userOccupations != null) {
      data['user_occupations'] =
          userOccupations!.map((v) => v.toJson()).toList();
    }

    if (currency != null) {
      data['currency'] = currency!.toJson();
    }
    data['country_code'] = countryCode;
    data['language_code'] = languageCode;
    data['id'] = id;
    data['is_app_full_support'] = isAppFullSupport;
    if (helpCenter != null) {
      data['help_center'] = helpCenter!.toJson();
    }
    if (settingKeys != null) {
      data['setting_keys'] = settingKeys!.toJson();
    }
    data['payment_link'] = paymentLink;
    data['api_link'] = apiLink;
    data['confirm_method'] = confirmMethod;
    if (restaurantFilterType != null) {
      data['restaurant_filter_type'] =
          restaurantFilterType!.map((v) => v.toJson()).toList();
    }

    data['predefined_chat_text'] = predefinedChatText;
    if (homeBackground != null) {
      data['home_background'] = homeBackground!.toJson();
    }
    if (bookingServices != null) {
      data['booking_services'] =
          bookingServices!.map((v) => v.toJson()).toList();
    }
    if (payment != null) {
      data['payment'] = payment!.toJson();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (feedbackReason != null) {
      data['feedback_reason'] =
          feedbackReason!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['payment_nowpay_enable'] = paymentNowpayEnable;
    if (avgPriceRangeFilter != null) {
      data['avg_price_range_filter'] =
          avgPriceRangeFilter!.map((v) => v.toJson()).toList();
    }
    if (orderExtraFees != null) {
      data['order_extra_fees'] = orderExtraFees!.toJson();
    }
    if (cities != null) {
      data['cities'] = cities!.map((v) => v.toJson()).toList();
    }
    if (displayGroupInfos != null) {
      data['display_group_infos'] =
          displayGroupInfos!.map((v) => v.toJson()).toList();
    }
    data['time_zone'] = timeZone;
    data['is_app_default'] = isAppDefault;
    data['payment_nowpay_link'] = paymentNowpayLink;
    if (cancelOptions != null) {
      data['cancel_options'] =
          cancelOptions!.map((v) => v.toJson()).toList();
    }
    data['push'] = push;
    if (deliverySortOptions != null) {
      data['delivery_sort_options'] =
          deliverySortOptions!.map((v) => v.toJson()).toList();
    }
    if (nowServices != null) {
      data['now_services'] = nowServices!.map((v) => v.toJson()).toList();
    }
    data['media_link'] = mediaLink;
    return data;
  }
}

class RestaurantSortType {
  String? code;
  String? name;
  String? unselectedIconUrl;
  int? displayOrder;
  String? trackingLabel;
  String? selectedIconUrl;
  int? id;

  RestaurantSortType(
      {this.code,
        this.name,
        this.unselectedIconUrl,
        this.displayOrder,
        this.trackingLabel,
        this.selectedIconUrl,
        this.id});

  RestaurantSortType.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    unselectedIconUrl = json['unselected_icon_url'];
    displayOrder = json['display_order'];
    trackingLabel = json['tracking_label'];
    selectedIconUrl = json['selected_icon_url'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['unselected_icon_url'] = unselectedIconUrl;
    data['display_order'] = displayOrder;
    data['tracking_label'] = trackingLabel;
    data['selected_icon_url'] = selectedIconUrl;
    data['id'] = id;
    return data;
  }
}

class UserOccupations {
  int? displayOrder;
  int? id;
  String? name;

  UserOccupations({this.displayOrder, this.id, this.name});

  UserOccupations.fromJson(Map<String, dynamic> json) {
    displayOrder = json['display_order'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['display_order'] = displayOrder;
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Currency {
  String? suffix;

  Currency({this.suffix});

  Currency.fromJson(Map<String, dynamic> json) {
    suffix = json['suffix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['suffix'] = suffix;
    return data;
  }
}

class HelpCenter {
  User? user;

  HelpCenter({this.user});

  HelpCenter.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  String? cancelArticleLink;

  User({this.cancelArticleLink});

  User.fromJson(Map<String, dynamic> json) {
    cancelArticleLink = json['cancel_article_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cancel_article_link'] = cancelArticleLink;
    return data;
  }
}

class SettingKeys {
  int? allowAutoplayVideoWith3gPopupRemindTime;

  SettingKeys({this.allowAutoplayVideoWith3gPopupRemindTime});

  SettingKeys.fromJson(Map<String, dynamic> json) {
    allowAutoplayVideoWith3gPopupRemindTime =
    json['allow_autoplay_video_with_3g_popup_remind_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['allow_autoplay_video_with_3g_popup_remind_time'] =
        allowAutoplayVideoWith3gPopupRemindTime;
    return data;
  }
}

class RestaurantFilterType {
  String? code;
  String? name;
  String? unselectedIconUrl;
  int? displayOrder;
  String? selectedIconUrl;
  int? id;

  RestaurantFilterType(
      {this.code,
        this.name,
        this.unselectedIconUrl,
        this.displayOrder,
        this.selectedIconUrl,
        this.id});

  RestaurantFilterType.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    unselectedIconUrl = json['unselected_icon_url'];
    displayOrder = json['display_order'];
    selectedIconUrl = json['selected_icon_url'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['unselected_icon_url'] = unselectedIconUrl;
    data['display_order'] = displayOrder;
    data['selected_icon_url'] = selectedIconUrl;
    data['id'] = id;
    return data;
  }
}

class HomeBackground {
  Color? color;
  List<Photo>? photo;

  HomeBackground({this.color, this.photo});

  HomeBackground.fromJson(Map<String, dynamic> json) {
    color = json['color'] != null ? Color.fromJson(json['color']) : null;
    if (json['photo'] != null) {
      photo = <Photo>[];
      json['photo'].forEach((v) {
        photo!.add(Photo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (color != null) {
      data['color'] = color!.toJson();
    }
    if (photo != null) {
      data['photo'] = photo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Color {
  String? start;
  String? end;

  Color({this.start, this.end});

  Color.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class Photo {
  int? width;
  String? value;
  int? height;

  Photo({this.width, this.value, this.height});

  Photo.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    value = json['value'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['width'] = width;
    data['value'] = value;
    data['height'] = height;
    return data;
  }
}

class Avatar {
  int? width;
  String? value;
  int? height;

  Avatar({this.width, this.value, this.height});

  Avatar.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    value = json['value'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['width'] = width;
    data['value'] = value;
    data['height'] = height;
    return data;
  }
}

class BookingServices {
  String? code;
  String? unselectedIconUrl;
  String? callCenter;
  String? searchPlaceHolder;
  String? selectedIconUrl;
  int? id;
  List<Categories>? categories;
  int? groupServiceType;
  List<QuickFilters>? quickFilters;
  String? name;
  int? displayGroupId;
  String? url;
  int? displayOrder;
  List<Avatar>? avatar;

  BookingServices(
      {this.code,
        this.unselectedIconUrl,
        this.callCenter,
        this.searchPlaceHolder,
        this.selectedIconUrl,
        this.id,
        this.categories,
        this.groupServiceType,
        this.quickFilters,
        this.name,
        this.displayGroupId,
        this.url,
        this.displayOrder,
        this.avatar,});

  BookingServices.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    unselectedIconUrl = json['unselected_icon_url'];
    callCenter = json['call_center'];
    searchPlaceHolder = json['search_place_holder'];
    selectedIconUrl = json['selected_icon_url'];
    id = json['id'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    groupServiceType = json['group_service_type'];
    if (json['quick_filters'] != null) {
      quickFilters = <QuickFilters>[];
      json['quick_filters'].forEach((v) {
        quickFilters!.add(QuickFilters.fromJson(v));
      });
    }
    name = json['name'];
    displayGroupId = json['display_group_id'];
    url = json['url'];
    displayOrder = json['display_order'];
    if (json['avatar'] != null) {
      avatar = <Avatar>[];
      json['avatar'].forEach((v) {
        avatar!.add(Avatar.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['unselected_icon_url'] = unselectedIconUrl;
    data['call_center'] = callCenter;
    data['search_place_holder'] = searchPlaceHolder;
    data['selected_icon_url'] = selectedIconUrl;
    data['id'] = id;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    data['group_service_type'] = groupServiceType;
    if (quickFilters != null) {
      data['quick_filters'] =
          quickFilters!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['display_group_id'] = displayGroupId;
    data['url'] = url;
    data['display_order'] = displayOrder;
    if (avatar != null) {
      data['avatar'] = avatar!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class QuickFilters {
  int? displayOrder;
  int? idMap;

  QuickFilters({this.displayOrder, this.idMap});

  QuickFilters.fromJson(Map<String, dynamic> json) {
    displayOrder = json['display_order'];
    idMap = json['id_map'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['display_order'] = displayOrder;
    data['id_map'] = idMap;
    return data;
  }
}

class Payment {
  String? airpayEnforceKycUrl;

  Payment({this.airpayEnforceKycUrl});

  Payment.fromJson(Map<String, dynamic> json) {
    airpayEnforceKycUrl = json['airpay_enforce_kyc_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['airpay_enforce_kyc_url'] = airpayEnforceKycUrl;
    return data;
  }
}

class Categories {
  String? code;
  String? name;
  int? displayOrder;
  List<Photos>? tabIcon;
  String? urlRewriteName;
  int? parentCategoryId;
  int? id;
  List<Categories>? categories;
  List<Photos>? icon;

  Categories(
      {this.code,
        this.name,
        this.displayOrder,
        this.tabIcon,
        this.urlRewriteName,
        this.parentCategoryId,
        this.id,
        this.categories,
        this.icon});

  Categories.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    displayOrder = json['display_order'];
    if (json['tab_icon'] != null) {
      tabIcon = <Photos>[];
      json['tab_icon'].forEach((v) {
        tabIcon!.add(Photos.fromJson(v));
      });
    }
    urlRewriteName = json['url_rewrite_name'];
    parentCategoryId = json['parent_category_id'];
    id = json['id'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    if (json['icon'] != null) {
      icon = <Photos>[];
      json['icon'].forEach((v) {
        icon!.add(Photos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['display_order'] = displayOrder;
    if (tabIcon != null) {
      data['tab_icon'] = tabIcon!.map((v) => v.toJson()).toList();
    }
    data['url_rewrite_name'] = urlRewriteName;
    data['parent_category_id'] = parentCategoryId;
    data['id'] = id;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (icon != null) {
      data['icon'] = icon!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeedbackReason {
  String? content;
  int? rate;
  int? displayOrder;
  int? type;
  int? id;

  FeedbackReason(
      {this.content, this.rate, this.displayOrder, this.type, this.id});

  FeedbackReason.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    rate = json['rate'];
    displayOrder = json['display_order'];
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['rate'] = rate;
    data['display_order'] = displayOrder;
    data['type'] = type;
    data['id'] = id;
    return data;
  }
}

class AvgPriceRangeFilter {
  String? text;
  int? displayOrder;
  PriceRange? priceRange;

  AvgPriceRangeFilter({this.text, this.displayOrder, this.priceRange});

  AvgPriceRangeFilter.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    displayOrder = json['display_order'];
    priceRange = json['price_range'] != null
        ? PriceRange.fromJson(json['price_range'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['display_order'] = displayOrder;
    if (priceRange != null) {
      data['price_range'] = priceRange!.toJson();
    }
    return data;
  }
}

class PriceRange {
  int? max;
  int? min;

  PriceRange({this.max, this.min});

  PriceRange.fromJson(Map<String, dynamic> json) {
    max = json['max'];
    min = json['min'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['max'] = max;
    data['min'] = min;
    return data;
  }
}

class OrderExtraFees {
  List<int>? customerParkingFeeOptions;
  List<int>? shipperTipOptions;

  OrderExtraFees({this.customerParkingFeeOptions, this.shipperTipOptions});

  OrderExtraFees.fromJson(Map<String, dynamic> json) {
    customerParkingFeeOptions =
        json['customer_parking_fee_options']?.cast<int>();
    shipperTipOptions = json['shipper_tip_options']?.cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customer_parking_fee_options'] = customerParkingFeeOptions;
    data['shipper_tip_options'] = shipperTipOptions;
    return data;
  }
}

class Cities {
  String? confirmation;
  String? masterRoot;
  Services? services;
  int? id;
  bool? isAppDefault;
  String? name;
  double? longitude;
  List<Districts>? districts;
  List<int>? featureDeliveryTypes;
  List<SearchPlaceHolderTimeRanges>? searchPlaceHolderTimeRanges;
  String? urlRewriteName;
  double? latitude;

  Cities(
      {this.confirmation,
        this.masterRoot,
        this.services,
        this.id,
        this.isAppDefault,
        this.name,
        this.longitude,
        this.districts,
        this.featureDeliveryTypes,
        this.searchPlaceHolderTimeRanges,
        this.urlRewriteName,
        this.latitude});

  Cities.fromJson(Map<String, dynamic> json) {
    confirmation = json['confirmation'];
    masterRoot = json['master_root'];
    services = json['services'] != null
        ? Services.fromJson(json['services'])
        : null;
    id = json['id'];
    isAppDefault = json['is_app_default'];
    name = json['name'];
    longitude = json['longitude'];
    if (json['districts'] != null) {
      districts = <Districts>[];
      json['districts'].forEach((v) {
        districts!.add(Districts.fromJson(v));
      });
    }
    featureDeliveryTypes = json['feature_delivery_types']?.cast<int>();
    if (json['search_place_holder_time_ranges'] != null) {
      searchPlaceHolderTimeRanges = <SearchPlaceHolderTimeRanges>[];
      json['search_place_holder_time_ranges'].forEach((v) {
        searchPlaceHolderTimeRanges!
            .add(SearchPlaceHolderTimeRanges.fromJson(v));
      });
    }
    urlRewriteName = json['url_rewrite_name'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['confirmation'] = confirmation;
    data['master_root'] = masterRoot;
    if (services != null) {
      data['services'] = services!.toJson();
    }
    data['id'] = id;
    data['is_app_default'] = isAppDefault;
    data['name'] = name;
    data['longitude'] = longitude;
    if (districts != null) {
      data['districts'] = districts!.map((v) => v.toJson()).toList();
    }
    data['feature_delivery_types'] = featureDeliveryTypes;
    if (searchPlaceHolderTimeRanges != null) {
      data['search_place_holder_time_ranges'] =
          searchPlaceHolderTimeRanges!.map((v) => v.toJson()).toList();
    }
    data['url_rewrite_name'] = urlRewriteName;
    data['latitude'] = latitude;
    return data;
  }
}

class Services {
  HandDelivered? handDelivered;
  DeliveryService? deliveryService;

  Services({this.handDelivered, this.deliveryService});

  Services.fromJson(Map<String, dynamic> json) {
    handDelivered = json['hand_delivered'] != null
        ? HandDelivered.fromJson(json['hand_delivered'])
        : null;
    deliveryService = json['delivery_service'] != null
        ? DeliveryService.fromJson(json['delivery_service'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (handDelivered != null) {
      data['hand_delivered'] = handDelivered!.toJson();
    }
    if (deliveryService != null) {
      data['delivery_service'] = deliveryService!.toJson();
    }
    return data;
  }
}

class HandDelivered {
  String? note;
  String? name;
  Value? value;

  HandDelivered({this.note, this.name, this.value});

  HandDelivered.fromJson(Map<String, dynamic> json) {
    note = json['note'];
    name = json['name'];
    value = json['value'] != null ? Value.fromJson(json['value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['note'] = note;
    data['name'] = name;
    if (value != null) {
      data['value'] = value!.toJson();
    }
    return data;
  }
}

class Value {
  String? color;
  String? text;
  int? value;

  Value({this.color, this.text, this.value});

  Value.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    text = json['text'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['text'] = text;
    data['value'] = value;
    return data;
  }
}

class DeliveryService {
  String? serviceEndTime;
  int? maxDeliverTime;
  DeliverEstimateTime? deliverEstimateTime;
  int? closeTimeWarning;
  int? averageTimePer1km;
  String? foodyDeliveryServiceTime;
  String? uri;
  String? serviceStartTime;
  String? callCenter;
  int? minDeliverTime;
  int? lastAddressFillRange;
  int? rushHourTimePlus;
  int? minVatOrder;
  int? processSteps;
  int? distanceLimit;
  Routing? routing;
  int? maxOrderDistance;

  DeliveryService(
      {this.serviceEndTime,
        this.maxDeliverTime,
        this.deliverEstimateTime,
        this.closeTimeWarning,
        this.averageTimePer1km,
        this.foodyDeliveryServiceTime,
        this.uri,
        this.serviceStartTime,
        this.callCenter,
        this.minDeliverTime,
        this.lastAddressFillRange,
        this.rushHourTimePlus,
        this.minVatOrder,
        this.processSteps,
        this.distanceLimit,
        this.routing,
        this.maxOrderDistance});

  DeliveryService.fromJson(Map<String, dynamic> json) {
    serviceEndTime = json['service_end_time'];
    maxDeliverTime = json['max_deliver_time'];
    deliverEstimateTime = json['deliver_estimate_time'] != null
        ? DeliverEstimateTime.fromJson(json['deliver_estimate_time'])
        : null;
    closeTimeWarning = json['close_time_warning'];
    averageTimePer1km = json['average_time_per_1km'];
    foodyDeliveryServiceTime = json['foody_delivery_service_time'];
    uri = json['uri'];
    serviceStartTime = json['service_start_time'];
    callCenter = json['call_center'];
    minDeliverTime = json['min_deliver_time'];
    lastAddressFillRange = json['last_address_fill_range'];
    rushHourTimePlus = json['rush_hour_time_plus'];
    minVatOrder = json['min_vat_order'];
    processSteps = json['process_steps'];
    distanceLimit = json['distance_limit'];
    routing =
    json['routing'] != null ? Routing.fromJson(json['routing']) : null;
    maxOrderDistance = json['max_order_distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['service_end_time'] = serviceEndTime;
    data['max_deliver_time'] = maxDeliverTime;
    if (deliverEstimateTime != null) {
      data['deliver_estimate_time'] = deliverEstimateTime!.toJson();
    }
    data['close_time_warning'] = closeTimeWarning;
    data['average_time_per_1km'] = averageTimePer1km;
    data['foody_delivery_service_time'] = foodyDeliveryServiceTime;
    data['uri'] = uri;
    data['service_start_time'] = serviceStartTime;
    data['call_center'] = callCenter;
    data['min_deliver_time'] = minDeliverTime;
    data['last_address_fill_range'] = lastAddressFillRange;
    data['rush_hour_time_plus'] = rushHourTimePlus;
    data['min_vat_order'] = minVatOrder;
    data['process_steps'] = processSteps;
    data['distance_limit'] = distanceLimit;
    if (routing != null) {
      data['routing'] = routing!.toJson();
    }
    data['max_order_distance'] = maxOrderDistance;
    return data;
  }
}

class DeliverEstimateTime {
  int? merchantTime;
  int? stepTime;
  ShippingTime? shippingTime;

  DeliverEstimateTime({this.merchantTime, this.stepTime, this.shippingTime});

  DeliverEstimateTime.fromJson(Map<String, dynamic> json) {
    merchantTime = json['merchant_time'];
    stepTime = json['step_time'];
    shippingTime = json['shipping_time'] != null
        ? ShippingTime.fromJson(json['shipping_time'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['merchant_time'] = merchantTime;
    data['step_time'] = stepTime;
    if (shippingTime != null) {
      data['shipping_time'] = shippingTime!.toJson();
    }
    return data;
  }
}

class ShippingTime {
  List<Milestone>? milestone;

  ShippingTime({this.milestone});

  ShippingTime.fromJson(Map<String, dynamic> json) {
    if (json['milestone'] != null) {
      milestone = <Milestone>[];
      json['milestone'].forEach((v) {
        milestone!.add(Milestone.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (milestone != null) {
      data['milestone'] = milestone!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Milestone {
  int? to;
  int? from;
  int? value;

  Milestone({this.to, this.from, this.value});

  Milestone.fromJson(Map<String, dynamic> json) {
    to = json['to'];
    from = json['from'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['to'] = to;
    data['from'] = from;
    data['value'] = value;
    return data;
  }
}

class Routing {
  String? avoid;
  double? distanceCoefficient;
  String? mode;

  Routing({this.avoid, this.distanceCoefficient, this.mode});

  Routing.fromJson(Map<String, dynamic> json) {
    avoid = json['avoid'];
    distanceCoefficient = json['distance_coefficient'];
    mode = json['mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['avoid'] = avoid;
    data['distance_coefficient'] = distanceCoefficient;
    data['mode'] = mode;
    return data;
  }
}

class Districts {
  int? sort;
  bool? isHasDelivery;
  String? name;
  int? displayOrder;
  String? imageName;
  double? longitude;
  int? districtId;
  String? urlRewriteName;
  bool? published;
  double? latitude;
  int? provinceId;

  Districts(
      {this.sort,
        this.isHasDelivery,
        this.name,
        this.displayOrder,
        this.imageName,
        this.longitude,
        this.districtId,
        this.urlRewriteName,
        this.published,
        this.latitude,
        this.provinceId});

  Districts.fromJson(Map<String, dynamic> json) {
    sort = json['sort'];
    isHasDelivery = json['is_has_delivery'];
    name = json['name'];
    displayOrder = json['display_order'];
    imageName = json['image_name'];
    longitude = json['longitude'];
    districtId = json['district_id'];
    urlRewriteName = json['url_rewrite_name'];
    published = json['published'];
    latitude = json['latitude'];
    provinceId = json['province_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sort'] = sort;
    data['is_has_delivery'] = isHasDelivery;
    data['name'] = name;
    data['display_order'] = displayOrder;
    data['image_name'] = imageName;
    data['longitude'] = longitude;
    data['district_id'] = districtId;
    data['url_rewrite_name'] = urlRewriteName;
    data['published'] = published;
    data['latitude'] = latitude;
    data['province_id'] = provinceId;
    return data;
  }
}

class SearchPlaceHolderTimeRanges {
  int? foodyServiceId;
  List<Null>? holderTimeRanges;

  SearchPlaceHolderTimeRanges({this.foodyServiceId, this.holderTimeRanges});

  SearchPlaceHolderTimeRanges.fromJson(Map<String, dynamic> json) {
    foodyServiceId = json['foody_service_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['foody_service_id'] = foodyServiceId;
    return data;
  }
}

class DisplayGroupInfos {
  List<Photos>? iconUrl;
  int? displayOrder;
  int? id;
  String? name;

  DisplayGroupInfos({this.iconUrl, this.displayOrder, this.id, this.name});

  DisplayGroupInfos.fromJson(Map<String, dynamic> json) {
    if (json['icon_url'] != null) {
      iconUrl = <Photos>[];
      json['icon_url'].forEach((v) {
        iconUrl!.add(Photos.fromJson(v));
      });
    }
    displayOrder = json['display_order'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iconUrl != null) {
      data['icon_url'] = iconUrl!.map((v) => v.toJson()).toList();
    }
    data['display_order'] = displayOrder;
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class CancelOptions {
  int? id;
  String? name;

  CancelOptions({this.id, this.name});

  CancelOptions.fromJson(Map<String, dynamic> json) {
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

class DeliverySortOptions {
  String? code;
  String? name;
  String? iconUrl;
  int? displayOrder;
  bool? isActive;
  String? pos;
  String? alert;
  bool? isPos;
  int? actionType;
  int? type;
  int? id;

  DeliverySortOptions(
      {this.code,
        this.name,
        this.iconUrl,
        this.displayOrder,
        this.isActive,
        this.pos,
        this.alert,
        this.isPos,
        this.actionType,
        this.type,
        this.id});

  DeliverySortOptions.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    iconUrl = json['icon_url'];
    displayOrder = json['display_order'];
    isActive = json['is_active'];
    pos = json['pos'];
    alert = json['alert'];
    isPos = json['is_pos'];
    actionType = json['action_type'];
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['icon_url'] = iconUrl;
    data['display_order'] = displayOrder;
    data['is_active'] = isActive;
    data['pos'] = pos;
    data['alert'] = alert;
    data['is_pos'] = isPos;
    data['action_type'] = actionType;
    data['type'] = type;
    data['id'] = id;
    return data;
  }
}

class NowServices {
  String? code;
  String? unselectedIconUrl;
  String? callCenter;
  String? searchPlaceHolder;
  String? selectedIconUrl;
  int? id;
  List<Categories>? categories;
  int? groupServiceType;
  List<QuickFilters>? quickFilters;
  String? name;
  String? url;
  int? displayOrder;
  List<Avatar>? avatar;
  List<DeliverySortOptions>? deliverySortOptions;
  int? displayGroupId;

  NowServices(
      {this.code,
        this.unselectedIconUrl,
        this.callCenter,
        this.searchPlaceHolder,
        this.selectedIconUrl,
        this.id,
        this.categories,
        this.groupServiceType,
        this.quickFilters,
        this.name,
        this.url,
        this.displayOrder,
        this.avatar,
        this.deliverySortOptions,
        this.displayGroupId});

  NowServices.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    unselectedIconUrl = json['unselected_icon_url'];
    callCenter = json['call_center'];
    searchPlaceHolder = json['search_place_holder'];
    selectedIconUrl = json['selected_icon_url'];
    id = json['id'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    groupServiceType = json['group_service_type'];
    if (json['quick_filters'] != null) {
      quickFilters = <QuickFilters>[];
      json['quick_filters'].forEach((v) {
        quickFilters!.add(QuickFilters.fromJson(v));
      });
    }
    name = json['name'];
    url = json['url'];
    displayOrder = json['display_order'];
    if (json['avatar'] != null) {
      avatar = <Avatar>[];
      json['avatar'].forEach((v) {
        avatar!.add(Avatar.fromJson(v));
      });
    }
    if (json['delivery_sort_options'] != null) {
      deliverySortOptions = <DeliverySortOptions>[];
      json['delivery_sort_options'].forEach((v) {
        deliverySortOptions!.add(DeliverySortOptions.fromJson(v));
      });
    }
    displayGroupId = json['display_group_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['unselected_icon_url'] = unselectedIconUrl;
    data['call_center'] = callCenter;
    data['search_place_holder'] = searchPlaceHolder;
    data['selected_icon_url'] = selectedIconUrl;
    data['id'] = id;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    data['group_service_type'] = groupServiceType;
    if (quickFilters != null) {
      data['quick_filters'] =
          quickFilters!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['url'] = url;
    data['display_order'] = displayOrder;
    if (avatar != null) {
      data['avatar'] = avatar!.map((v) => v.toJson()).toList();
    }
    if (deliverySortOptions != null) {
      data['delivery_sort_options'] =
          deliverySortOptions!.map((v) => v.toJson()).toList();
    }
    data['display_group_id'] = displayGroupId;
    return data;
  }
}

class Paynow {
  String? name;
  int? displayOrder;
  bool? applyForApp;
  int? id;
  bool? applyForWeb;
  Null? paymentNote;
  int? maxTopup;
  String? notifyNumber;
  List<int>? topupMethod;
  bool? topup;
  String? url;
  bool? offlineTransfer;
  int? topupEntrance;

  Paynow(
      {this.name,
        this.displayOrder,
        this.applyForApp,
        this.id,
        this.applyForWeb,
        this.paymentNote,
        this.maxTopup,
        this.notifyNumber,
        this.topupMethod,
        this.topup,
        this.url,
        this.offlineTransfer,
        this.topupEntrance});

  Paynow.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    displayOrder = json['display_order'];
    applyForApp = json['apply_for_app'];
    id = json['id'];
    applyForWeb = json['apply_for_web'];
    paymentNote = json['payment_note'];
    maxTopup = json['max_topup'];
    notifyNumber = json['notify_number'];
    topupMethod = json['topup_method']?.cast<int>();
    topup = json['topup'];
    url = json['url'];
    offlineTransfer = json['offline_transfer'];
    topupEntrance = json['topup_entrance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['display_order'] = displayOrder;
    data['apply_for_app'] = applyForApp;
    data['id'] = id;
    data['apply_for_web'] = applyForWeb;
    data['payment_note'] = paymentNote;
    data['max_topup'] = maxTopup;
    data['notify_number'] = notifyNumber;
    data['topup_method'] = topupMethod;
    data['topup'] = topup;
    data['url'] = url;
    data['offline_transfer'] = offlineTransfer;
    data['topup_entrance'] = topupEntrance;
    return data;
  }
}
