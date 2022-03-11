import 'model_photo.dart';

class NotificationResponse {
  ReplyNotification? reply;
  String? result;

  NotificationResponse({this.reply, this.result});

  NotificationResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyNotification.fromJson(json['reply']) : null;
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

class ReplyNotification {
  List<ModelNotification>? notificationInfos;

  ReplyNotification({this.notificationInfos});

  ReplyNotification.fromJson(Map<String, dynamic> json) {
    if (json['notification_infos'] != null) {
      notificationInfos = <ModelNotification>[];
      json['notification_infos'].forEach((v) {
        notificationInfos!.add(ModelNotification.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (notificationInfos != null) {
      data['notification_infos'] =
          notificationInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelNotification {
  String? titleColor;
  String? title;
  String? uri;
  int? id;
  List<Photos>? photos;
  String? actionUrl;
  String? createdTime;
  String? message;
  String? latestActivityTime;
  bool? isUnread;

  ModelNotification(
      {this.titleColor,
        this.title,
        this.uri,
        this.id,
        this.photos,
        this.actionUrl,
        this.createdTime,
        this.message,
        this.latestActivityTime,
        this.isUnread});

  ModelNotification.fromJson(Map<String, dynamic> json) {
    titleColor = json['title_color'];
    title = json['title'];
    uri = json['uri'];
    id = json['id'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    actionUrl = json['action_url'];
    createdTime = json['created_time'];
    message = json['message'];
    latestActivityTime = json['latest_activity_time'];
    isUnread = json['is_unread'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title_color'] = titleColor;
    data['title'] = title;
    data['uri'] = uri;
    data['id'] = id;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['action_url'] = actionUrl;
    data['created_time'] = createdTime;
    data['message'] = message;
    data['latest_activity_time'] = latestActivityTime;
    data['is_unread'] = isUnread;
    return data;
  }
}
