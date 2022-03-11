

import 'model_photo.dart';

class ModelUserProfileResponse {
  ModelUserProfile? reply;
  String? result;

  ModelUserProfileResponse({this.reply, this.result});

  ModelUserProfileResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ModelUserProfile.fromJson(json['reply']) : null;
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

class ModelUserProfile {
  String? username;
  String? lastName;
  int? occupationId;
  int? uid;
  List<Phones>? phones;
  bool? isMerchant;
  int? totalUserPromotions;
  List<Photos>? photos;
  bool? isCompletedProfile;
  int? totalDeliveredOrder;
  String? firstName;
  String? name;
  ShopeeAccountBinding? shopeeAccountBinding;
  int? foodyUid;
  bool? noPassword;
  int? gender;
  int? fastflowDelay;
  bool? isHasVerifiedPhone;
  Reminder? reminder;
  bool? isVerified;
  String? email;
  bool? isEnableCoinReward;
  String? birthday;

  ModelUserProfile(
      {this.username,
        this.lastName,
        this.uid,
        this.phones,
        this.isMerchant,
        this.totalUserPromotions,
        this.photos,
        this.isCompletedProfile,
        this.totalDeliveredOrder,
        this.firstName,
        this.name,
        this.shopeeAccountBinding,
        this.foodyUid,
        this.noPassword,
        this.gender,
        this.fastflowDelay,
        this.isHasVerifiedPhone,
        this.reminder,
        this.isVerified,
        this.email,
        this.occupationId,
        this.birthday,
        this.isEnableCoinReward});

  ModelUserProfile.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    lastName = json['last_name'];
    occupationId = json['occupationId'];
    birthday = json['birthday'];
    uid = json['uid'];
    if (json['phones'] != null) {
      phones = <Phones>[];
      json['phones'].forEach((v) {
        phones!.add(Phones.fromJson(v));
      });
    }
    isMerchant = json['is_merchant'];
    totalUserPromotions = json['total_user_promotions'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    isCompletedProfile = json['is_completed_profile'];
    totalDeliveredOrder = json['total_delivered_order'];
    firstName = json['first_name'];
    name = json['name'];
    shopeeAccountBinding = json['shopee_account_binding'] != null
        ? ShopeeAccountBinding.fromJson(json['shopee_account_binding'])
        : null;
    foodyUid = json['foody_uid'];
    noPassword = json['no_password'];
    gender = json['gender'];
    fastflowDelay = json['fastflow_delay'];
    isHasVerifiedPhone = json['is_has_verified_phone'];
    reminder = json['reminder'] != null
        ? Reminder.fromJson(json['reminder'])
        : null;
    isVerified = json['is_verified'];
    email = json['email'];
    isEnableCoinReward = json['is_enable_coin_reward'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['last_name'] = lastName;
    data['uid'] = uid;
    data['birthday'] = birthday;
    data['occupation_id'] = occupationId;
    if (phones != null) {
      data['phones'] = phones!.map((v) => v.toJson()).toList();
    }
    data['is_merchant'] = isMerchant;
    data['total_user_promotions'] = totalUserPromotions;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['is_completed_profile'] = isCompletedProfile;
    data['total_delivered_order'] = totalDeliveredOrder;
    data['first_name'] = firstName;
    data['name'] = name;
    if (shopeeAccountBinding != null) {
      data['shopee_account_binding'] = shopeeAccountBinding!.toJson();
    }
    data['foody_uid'] = foodyUid;
    data['no_password'] = noPassword;
    data['gender'] = gender;
    data['fastflow_delay'] = fastflowDelay;
    data['is_has_verified_phone'] = isHasVerifiedPhone;
    if (reminder != null) {
      data['reminder'] = reminder!.toJson();
    }
    data['is_verified'] = isVerified;
    data['email'] = email;
    data['is_enable_coin_reward'] = isEnableCoinReward;
    return data;
  }
}

class Phones {
  int? id;
  bool? isVerified;
  String? number;
  bool? primary;

  Phones({this.id, this.isVerified, this.number, this.primary});

  Phones.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isVerified = json['is_verified'];
    number = json['number'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['is_verified'] = isVerified;
    data['number'] = number;
    data['primary'] = primary;
    return data;
  }
}

class ShopeeAccountBinding {
  bool? isLinkAccount;
  int? rewardCoinAmount;

  ShopeeAccountBinding({this.isLinkAccount, this.rewardCoinAmount});

  ShopeeAccountBinding.fromJson(Map<String, dynamic> json) {
    isLinkAccount = json['is_link_account'];
    rewardCoinAmount = json['reward_coin_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_link_account'] = isLinkAccount;
    data['reward_coin_amount'] = rewardCoinAmount;
    return data;
  }
}

class Reminder {
  Notification? notification;

  Reminder({this.notification});

  Reminder.fromJson(Map<String, dynamic> json) {
    notification = json['notification'] != null
        ? Notification.fromJson(json['notification'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (notification != null) {
      data['notification'] = notification!.toJson();
    }
    return data;
  }
}

class Notification {
  String? actionText;
  String? description;

  Notification({this.actionText, this.description});

  Notification.fromJson(Map<String, dynamic> json) {
    actionText = json['action_text'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['action_text'] = actionText;
    data['description'] = description;
    return data;
  }
}
