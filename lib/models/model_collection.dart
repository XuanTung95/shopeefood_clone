

import 'model_photo.dart';

class ModelCollectionResponse {
  Reply? reply;
  String? result;

  ModelCollectionResponse({this.reply, this.result});

  ModelCollectionResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? Reply.fromJson(json['reply']) : null;
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

class Reply {
  List<ModelCollection>? collections;

  Reply({this.collections});

  Reply.fromJson(Map<String, dynamic> json) {
    if (json['collections'] != null) {
      collections = <ModelCollection>[];
      json['collections'].forEach((v) {
        collections!.add(ModelCollection.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (collections != null) {
      data['collections'] = collections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelCollection {
  String? description;
  List<Photos>? photos;
  int? foodyServiceId;
  int? id;
  int? count;
  String? name;
  bool? isIndexable;
  String? url;
  String? canonicalUrl;
  int? itemType;
  String? urlRewriteName;

  ModelCollection(
      {this.description,
        this.photos,
        this.foodyServiceId,
        this.id,
        this.count,
        this.name,
        this.isIndexable,
        this.url,
        this.canonicalUrl,
        this.itemType,
        this.urlRewriteName});

  ModelCollection.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    foodyServiceId = json['foody_service_id'];
    id = json['id'];
    count = json['count'];
    name = json['name'];
    isIndexable = json['is_indexable'];
    url = json['url'];
    canonicalUrl = json['canonical_url'];
    itemType = json['item_type'];
    urlRewriteName = json['url_rewrite_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['foody_service_id'] = foodyServiceId;
    data['id'] = id;
    data['count'] = count;
    data['name'] = name;
    data['is_indexable'] = isIndexable;
    data['url'] = url;
    data['canonical_url'] = canonicalUrl;
    data['item_type'] = itemType;
    data['url_rewrite_name'] = urlRewriteName;
    return data;
  }
}