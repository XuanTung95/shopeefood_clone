import 'model_photo.dart';

class NotificationResponse {
  ReplyNotification? reply;
  String? result;

  NotificationResponse({this.reply, this.result});

  NotificationResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? new ReplyNotification.fromJson(json['reply']) : null;
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.reply != null) {
      data['reply'] = this.reply!.toJson();
    }
    data['result'] = this.result;
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
        notificationInfos!.add(new ModelNotification.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.notificationInfos != null) {
      data['notification_infos'] =
          this.notificationInfos!.map((v) => v.toJson()).toList();
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
        photos!.add(new Photos.fromJson(v));
      });
    }
    actionUrl = json['action_url'];
    createdTime = json['created_time'];
    message = json['message'];
    latestActivityTime = json['latest_activity_time'];
    isUnread = json['is_unread'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title_color'] = this.titleColor;
    data['title'] = this.title;
    data['uri'] = this.uri;
    data['id'] = this.id;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    data['action_url'] = this.actionUrl;
    data['created_time'] = this.createdTime;
    data['message'] = this.message;
    data['latest_activity_time'] = this.latestActivityTime;
    data['is_unread'] = this.isUnread;
    return data;
  }
}
