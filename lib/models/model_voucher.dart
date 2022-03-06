
import 'model_photo.dart';
import 'model_price.dart';

class ModelVoucherResponse {
  ReplyVoucher? reply;
  String? result;

  ModelVoucherResponse({this.reply, this.result});

  ModelVoucherResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyVoucher.fromJson(json['reply']) : null;
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

class ReplyVoucher {
  List<ModelVoucher>? promotionInfos;

  ReplyVoucher({this.promotionInfos});

  ReplyVoucher.fromJson(Map<String, dynamic> json) {
    if (json['promotion_infos'] != null) {
      promotionInfos = <ModelVoucher>[];
      json['promotion_infos'].forEach((v) {
        promotionInfos!.add(ModelVoucher.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (promotionInfos != null) {
      data['promotion_infos'] =
          promotionInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelVoucher {
  String? code;
  int? voucherSource;
  int? userUsageLimit;
  String? inapplicableReason;
  bool? isApplicable;
  List<Platforms>? platforms;
  String? customTitle;
  List<CustomCondition>? customCondition;
  List<TagInfos>? tagInfos;
  String? useLink;
  int? id;
  String? title;
  ModelPrice? maxDiscountValue;
  String? iconUrl;
  int? discountOnType;
  String? conditionText;
  int? status;
  List<int>? foodyServiceIds;
  List<int>? paymentOption;
  String? startTime;
  List<LimitPerUser>? limitPerUser;
  int? remainingQuantity;
  Icon? icon;
  ModelPrice? minOrderAmount;
  int? merchantType;
  String? endTime;
  DiscountValue? discountValue;
  List<int>? shippingMethods;

  ModelVoucher(
      {this.code,
        this.voucherSource,
        this.userUsageLimit,
        this.inapplicableReason,
        this.isApplicable,
        this.platforms,
        this.customTitle,
        this.customCondition,
        this.tagInfos,
        this.useLink,
        this.id,
        this.title,
        this.maxDiscountValue,
        this.iconUrl,
        this.discountOnType,
        this.conditionText,
        this.status,
        this.foodyServiceIds,
        this.paymentOption,
        this.startTime,
        this.limitPerUser,
        this.remainingQuantity,
        this.icon,
        this.minOrderAmount,
        this.merchantType,
        this.endTime,
        this.discountValue,
        this.shippingMethods});

  ModelVoucher.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    voucherSource = json['voucher_source'];
    userUsageLimit = json['user_usage_limit'];
    inapplicableReason = json['inapplicable_reason'];
    isApplicable = json['is_applicable'];
    if (json['platforms'] != null) {
      platforms = <Platforms>[];
      json['platforms'].forEach((v) {
        platforms!.add(Platforms.fromJson(v));
      });
    }
    customTitle = json['custom_title'];
    if (json['custom_condition'] != null) {
      customCondition = <CustomCondition>[];
      json['custom_condition'].forEach((v) {
        customCondition!.add(CustomCondition.fromJson(v));
      });
    }
    if (json['tag_infos'] != null) {
      tagInfos = <TagInfos>[];
      json['tag_infos'].forEach((v) {
        tagInfos!.add(TagInfos.fromJson(v));
      });
    }
    useLink = json['use_link'];
    id = json['id'];
    title = json['title'];
    maxDiscountValue = json['max_discount_value'] != null
        ? ModelPrice.fromJson(json['max_discount_value'])
        : null;
    iconUrl = json['icon_url'];
    discountOnType = json['discount_on_type'];
    conditionText = json['condition_text'];
    status = json['status'];
    foodyServiceIds = json['foody_service_ids'].cast<int>();
    paymentOption = json['payment_option'].cast<int>();
    startTime = json['start_time'];
    if (json['limit_per_user'] != null) {
      limitPerUser = <LimitPerUser>[];
      json['limit_per_user'].forEach((v) {
        limitPerUser!.add(LimitPerUser.fromJson(v));
      });
    }
    remainingQuantity = json['remaining_quantity'];
    icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
    minOrderAmount = json['min_order_amount'] != null
        ? ModelPrice.fromJson(json['min_order_amount'])
        : null;
    merchantType = json['merchant_type'];
    endTime = json['end_time'];
    discountValue = json['discount_value'] != null
        ? DiscountValue.fromJson(json['discount_value'])
        : null;
    shippingMethods = json['shipping_methods'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['voucher_source'] = voucherSource;
    data['user_usage_limit'] = userUsageLimit;
    data['inapplicable_reason'] = inapplicableReason;
    data['is_applicable'] = isApplicable;
    if (platforms != null) {
      data['platforms'] = platforms!.map((v) => v.toJson()).toList();
    }
    data['custom_title'] = customTitle;
    if (customCondition != null) {
      data['custom_condition'] =
          customCondition!.map((v) => v.toJson()).toList();
    }
    if (tagInfos != null) {
      data['tag_infos'] = tagInfos!.map((v) => v.toJson()).toList();
    }
    data['use_link'] = useLink;
    data['id'] = id;
    data['title'] = title;
    if (maxDiscountValue != null) {
      data['max_discount_value'] = maxDiscountValue!.toJson();
    }
    data['icon_url'] = iconUrl;
    data['discount_on_type'] = discountOnType;
    data['condition_text'] = conditionText;
    data['status'] = status;
    data['foody_service_ids'] = foodyServiceIds;
    data['payment_option'] = paymentOption;
    data['start_time'] = startTime;
    if (limitPerUser != null) {
      data['limit_per_user'] =
          limitPerUser!.map((v) => v.toJson()).toList();
    }
    data['remaining_quantity'] = remainingQuantity;
    if (icon != null) {
      data['icon'] = icon!.toJson();
    }
    if (minOrderAmount != null) {
      data['min_order_amount'] = minOrderAmount!.toJson();
    }
    data['merchant_type'] = merchantType;
    data['end_time'] = endTime;
    if (discountValue != null) {
      data['discount_value'] = discountValue!.toJson();
    }
    data['shipping_methods'] = shippingMethods;
    return data;
  }
}

class Platforms {
  int? clientType;
  int? appType;

  Platforms({this.clientType, this.appType});

  Platforms.fromJson(Map<String, dynamic> json) {
    clientType = json['client_type'];
    appType = json['app_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['client_type'] = clientType;
    data['app_type'] = appType;
    return data;
  }
}

class CustomCondition {
  String? content;
  String? label;

  CustomCondition({this.content, this.label});

  CustomCondition.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['label'] = label;
    return data;
  }
}

class TagInfos {
  String? color;
  int? displayOrder;
  String? name;

  TagInfos({this.color, this.displayOrder, this.name});

  TagInfos.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    displayOrder = json['display_order'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['display_order'] = displayOrder;
    data['name'] = name;
    return data;
  }
}


class LimitPerUser {
  int? maxUsageTime;
  int? period;

  LimitPerUser({this.maxUsageTime, this.period});

  LimitPerUser.fromJson(Map<String, dynamic> json) {
    maxUsageTime = json['max_usage_time'];
    period = json['period'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['max_usage_time'] = maxUsageTime;
    data['period'] = period;
    return data;
  }
}

class Icon {
  String? text;
  Photos? background;
  Photos? logo;

  Icon({this.text, this.background, this.logo});

  Icon.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    background = json['background'] != null
        ? Photos.fromJson(json['background'])
        : null;
    logo = json['logo'] != null ? Photos.fromJson(json['logo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (background != null) {
      data['background'] = background!.toJson();
    }
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    return data;
  }
}

class DiscountValue {
  int? discountType;
  int? value;
  String? text;

  DiscountValue({this.discountType, this.value, this.text});

  DiscountValue.fromJson(Map<String, dynamic> json) {
    discountType = json['discount_type'];
    value = json['value'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['discount_type'] = discountType;
    data['value'] = value;
    data['text'] = text;
    return data;
  }
}
