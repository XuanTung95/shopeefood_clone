import 'model_label.dart';
import 'model_photo.dart';

class ModelFeedbackResponse {
  ReplyFeedback? reply;
  String? result;

  ModelFeedbackResponse({this.reply, this.result});

  ModelFeedbackResponse.fromJson(Map<String, dynamic> json) {
    reply =
        json['reply'] != null ? ReplyFeedback.fromJson(json['reply']) : null;
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

class ReplyFeedback {
  List<ModelUserFeedbacks>? userFeedbacks;

  ReplyFeedback({this.userFeedbacks});

  ReplyFeedback.fromJson(Map<String, dynamic> json) {
    if (json['user_feedbacks'] != null) {
      userFeedbacks = <ModelUserFeedbacks>[];
      json['user_feedbacks'].forEach((v) {
        userFeedbacks!.add(ModelUserFeedbacks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (userFeedbacks != null) {
      data['user_feedbacks'] = userFeedbacks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelUserFeedbacks {
  bool? isFeatured;
  bool? isAnonymous;
  Label? label;
  int? merchantRate;
  List<List<Photos>>? photos;
  String? createTime;
  List<int>? reasonIds;
  List<Photos>? merchantImages;
  List<LikedDishes>? likeDishes;
  bool? isPr;
  String? message;
  int? merchantId;
  int? id;
  List<LikedDishes>? likedDishes;
  User? user;

  ModelUserFeedbacks(
      {this.isFeatured,
      this.isAnonymous,
      this.label,
      this.merchantRate,
      this.photos,
      this.createTime,
      this.reasonIds,
      this.merchantImages,
      this.likeDishes,
      this.isPr,
      this.message,
      this.merchantId,
      this.id,
      this.likedDishes,
      this.user});

  ModelUserFeedbacks.fromJson(Map<String, dynamic> json) {
    isFeatured = json['is_featured'];
    isAnonymous = json['is_anonymous'];
    label = json['label'] != null ? Label.fromJson(json['label']) : null;
    merchantRate = json['merchant_rate'];
    if (json['photos'] != null) {
      photos = <List<Photos>>[];
      json['photos'].forEach((v) {
        final List<Photos> lstPhoto = [];
        if (v is List) {
          v.forEach((element) {
            lstPhoto.add(Photos.fromJson(element));
          });
          photos!.add(lstPhoto);
        }

      });
    }
    createTime = json['create_time'];
    reasonIds = json['reason_ids'].cast<int>();
    if (json['merchant_images'] != null) {
      merchantImages = <Photos>[];
      json['merchant_images'].forEach((v) {
        merchantImages!.add(Photos.fromJson(v));
      });
    }
    if (json['like_dishes'] != null) {
      likeDishes = <LikedDishes>[];
      json['like_dishes'].forEach((v) {
        likeDishes!.add(LikedDishes.fromJson(v));
      });
    }
    isPr = json['is_pr'];
    message = json['message'];
    merchantId = json['merchant_id'];
    id = json['id'];
    if (json['liked_dishes'] != null) {
      likedDishes = <LikedDishes>[];
      json['liked_dishes'].forEach((v) {
        likedDishes!.add(LikedDishes.fromJson(v));
      });
    }
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_featured'] = isFeatured;
    data['is_anonymous'] = isAnonymous;
    if (label != null) {
      data['label'] = label!.toJson();
    }
    data['merchant_rate'] = merchantRate;
    data['create_time'] = createTime;
    data['reason_ids'] = reasonIds;
    if (merchantImages != null) {
      data['merchant_images'] = merchantImages!.map((v) => v.toJson()).toList();
    }
    if (likeDishes != null) {
      data['like_dishes'] = likeDishes!.map((v) => v.toJson()).toList();
    }
    data['is_pr'] = isPr;
    data['message'] = message;
    data['merchant_id'] = merchantId;
    data['id'] = id;
    if (likedDishes != null) {
      data['liked_dishes'] = likedDishes!.map((v) => v.toJson()).toList();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class LikedDishes {
  String? nameEn;
  int? id;
  String? name;

  LikedDishes({this.nameEn, this.id, this.name});

  LikedDishes.fromJson(Map<String, dynamic> json) {
    nameEn = json['name_en'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name_en'] = nameEn;
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class User {
  List<Photos>? photos;
  String? firstName;
  String? name;
  int? id;

  User({this.photos, this.firstName, this.name, this.id});

  User.fromJson(Map<String, dynamic> json) {
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    firstName = json['first_name'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['first_name'] = firstName;
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}
