import 'model_photo.dart';

class AdsBannerResponse {
  ReplyBanners? reply;
  String? result;

  AdsBannerResponse({this.reply, this.result});

  AdsBannerResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyBanners.fromJson(json['reply']) : null;
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

class ReplyBanners {
  List<ModelBanner>? bannerInfos;

  ReplyBanners({this.bannerInfos});

  ReplyBanners.fromJson(Map<String, dynamic> json) {
    if (json['banner_infos'] != null) {
      bannerInfos = <ModelBanner>[];
      json['banner_infos'].forEach((v) {
        bannerInfos!.add(ModelBanner.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bannerInfos != null) {
      data['banner_infos'] = bannerInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelBanner {
  int? updateTime;
  String? name;
  String? title;
  int? cityId;
  int? createBy;
  int? startTime;
  String? isActive;
  int? period;
  int? id;
  List<Photos>? photos;
  String? actionUrl;
  int? createTime;
  String? imageUrl;
  String? imageUrlEn;
  String? action;
  ExtraData? extraData;
  int? displayOrder;
  int? endTime;

  ModelBanner(
      {this.updateTime,
      this.name,
      this.title,
      this.cityId,
      this.createBy,
      this.startTime,
      this.isActive,
      this.period,
      this.id,
      this.photos,
      this.actionUrl,
      this.createTime,
      this.imageUrl,
      this.imageUrlEn,
      this.action,
      this.extraData,
      this.displayOrder,
      this.endTime});

  ModelBanner.fromJson(Map<String, dynamic> json) {
    updateTime = json['update_time'];
    name = json['name'];
    title = json['title'];
    cityId = json['city_id'];
    createBy = json['create_by'];
    startTime = json['start_time'];
    isActive = json['is_active'];
    period = json['period'];
    id = json['id'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    actionUrl = json['action_url'];
    createTime = json['create_time'];
    imageUrl = json['image_url'];
    imageUrlEn = json['image_url_en'];
    action = json['action'];
    extraData = json['extra_data'] != null
        ? ExtraData.fromJson(json['extra_data'])
        : null;
    displayOrder = json['display_order'];
    endTime = json['end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['update_time'] = updateTime;
    data['name'] = name;
    data['title'] = title;
    data['city_id'] = cityId;
    data['create_by'] = createBy;
    data['start_time'] = startTime;
    data['is_active'] = isActive;
    data['period'] = period;
    data['id'] = id;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['action_url'] = actionUrl;
    data['create_time'] = createTime;
    data['image_url'] = imageUrl;
    data['image_url_en'] = imageUrlEn;
    data['action'] = action;
    if (extraData != null) {
      data['extra_data'] = extraData!.toJson();
    }
    data['display_order'] = displayOrder;
    data['end_time'] = endTime;
    return data;
  }
}

class ExtraData {
  List<int>? foodyServiceIds;
  String? shopeeActionUrl;
  Image? image;
  int? videoId;
  bool? isPinned;
  List<int>? showPositions;
  String? actionUrl;
  List<int>? cityIds;
  int? targetUserType;
  List<FoodyAppTypes>? foodyAppTypes;

  ExtraData({
    this.foodyServiceIds,
    this.shopeeActionUrl,
    this.image,
    this.videoId,
    this.isPinned,
    this.showPositions,
    this.actionUrl,
    this.cityIds,
    this.targetUserType,
    this.foodyAppTypes,
  });

  ExtraData.fromJson(Map<String, dynamic> json) {
    foodyServiceIds = json['foody_service_ids'].cast<int>();
    shopeeActionUrl = json['shopee_action_url'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    videoId = json['video_id'];
    isPinned = json['is_pinned'];
    showPositions = json['show_positions'].cast<int>();
    actionUrl = json['action_url'];
    cityIds = json['city_ids'].cast<int>();
    targetUserType = json['target_user_type'];
    if (json['foody_app_types'] != null) {
      foodyAppTypes = <FoodyAppTypes>[];
      json['foody_app_types'].forEach((v) {
        foodyAppTypes!.add(FoodyAppTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['foody_service_ids'] = foodyServiceIds;
    data['shopee_action_url'] = shopeeActionUrl;
    if (image != null) {
      data['image'] = image!.toJson();
    }
    data['video_id'] = videoId;
    data['is_pinned'] = isPinned;
    data['show_positions'] = showPositions;
    data['action_url'] = actionUrl;
    data['city_ids'] = cityIds;
    data['target_user_type'] = targetUserType;
    if (foodyAppTypes != null) {
      data['foody_app_types'] = foodyAppTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Image {
  String? imageName;
  String? folderId;

  Image({this.imageName, this.folderId});

  Image.fromJson(Map<String, dynamic> json) {
    imageName = json['image_name'];
    folderId = json['folder_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_name'] = imageName;
    data['folder_id'] = folderId;
    return data;
  }
}

class FoodyAppTypes {
  int? foodyAppType;
  int? clientType;
  int? appType;

  FoodyAppTypes({this.foodyAppType, this.clientType, this.appType});

  FoodyAppTypes.fromJson(Map<String, dynamic> json) {
    foodyAppType = json['foody_app_type'];
    clientType = json['client_type'];
    appType = json['app_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['foody_app_type'] = foodyAppType;
    data['client_type'] = clientType;
    data['app_type'] = appType;
    return data;
  }
}
