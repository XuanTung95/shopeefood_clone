

import 'package:shopeefood_clone/mixin/photo_mixin.dart';

import 'model_photo.dart';

class HomeSquareResponse {
  HomeSquareReply? reply;
  String? result;

  HomeSquareResponse({this.reply, this.result});

  HomeSquareResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? new HomeSquareReply.fromJson(json['reply']) : null;
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

class HomeSquareReply {
  List<ModelHomeSquare>? homeSquareInfo;

  HomeSquareReply({this.homeSquareInfo});

  HomeSquareReply.fromJson(Map<String, dynamic> json) {
    if (json['home_square_info'] != null) {
      homeSquareInfo = <ModelHomeSquare>[];
      json['home_square_info'].forEach((v) {
        homeSquareInfo!.add(new ModelHomeSquare.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.homeSquareInfo != null) {
      data['home_square_info'] =
          this.homeSquareInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelHomeSquare with PhotoMixin {
  String? title;
  String? url;
  int? displayOrder;
  List<Photos>? photos;
  int? id;
  int? pinnedPosition;

  ModelHomeSquare(
      {this.title,
        this.url,
        this.displayOrder,
        this.photos,
        this.id,
        this.pinnedPosition});

  ModelHomeSquare.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    displayOrder = json['display_order'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
    id = json['id'];
    pinnedPosition = json['pinned_position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['display_order'] = this.displayOrder;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['pinned_position'] = this.pinnedPosition;
    return data;
  }
}