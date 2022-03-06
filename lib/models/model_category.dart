


import 'model_photo.dart';

class HomeSquareResponse {
  HomeSquareReply? reply;
  String? result;

  HomeSquareResponse({this.reply, this.result});

  HomeSquareResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? HomeSquareReply.fromJson(json['reply']) : null;
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

class HomeSquareReply {
  List<ModelHomeSquare>? homeSquareInfo;

  HomeSquareReply({this.homeSquareInfo});

  HomeSquareReply.fromJson(Map<String, dynamic> json) {
    if (json['home_square_info'] != null) {
      homeSquareInfo = <ModelHomeSquare>[];
      json['home_square_info'].forEach((v) {
        homeSquareInfo!.add(ModelHomeSquare.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (homeSquareInfo != null) {
      data['home_square_info'] =
          homeSquareInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelHomeSquare {
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
        photos!.add(Photos.fromJson(v));
      });
    }
    id = json['id'];
    pinnedPosition = json['pinned_position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['url'] = url;
    data['display_order'] = displayOrder;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    data['pinned_position'] = pinnedPosition;
    return data;
  }
}