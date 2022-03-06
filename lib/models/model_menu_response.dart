import 'model_photo.dart';
import 'model_price.dart';
import 'model_shop_detail.dart';

class ModelMenuResponse {
  ReplyMenu? reply;
  String? result;

  ModelMenuResponse({this.reply, this.result});

  ModelMenuResponse.fromJson(Map<String, dynamic> json) {
    reply = json['reply'] != null ? ReplyMenu.fromJson(json['reply']) : null;
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

class ReplyMenu {
  List<MenuInfos>? menuInfos;

  ReplyMenu({this.menuInfos});

  ReplyMenu.fromJson(Map<String, dynamic> json) {
    if (json['menu_infos'] != null) {
      menuInfos = <MenuInfos>[];
      json['menu_infos'].forEach((v) {
        menuInfos!.add(MenuInfos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (menuInfos != null) {
      data['menu_infos'] = menuInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MenuInfos {
  int? dishTypeId;
  int? displayOrder;
  String? dishTypeName;
  List<ModelMenu>? dishes;
  bool? isGroupDiscount;

  MenuInfos(
      {this.dishTypeId,
        this.displayOrder,
        this.dishTypeName,
        this.dishes,
        this.isGroupDiscount});

  MenuInfos.fromJson(Map<String, dynamic> json) {
    dishTypeId = json['dish_type_id'];
    displayOrder = json['display_order'];
    dishTypeName = json['dish_type_name'];
    if (json['dishes'] != null) {
      dishes = <ModelMenu>[];
      json['dishes'].forEach((v) {
        dishes!.add(ModelMenu.fromJson(v));
      });
    }
    isGroupDiscount = json['is_group_discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dish_type_id'] = dishTypeId;
    data['display_order'] = displayOrder;
    data['dish_type_name'] = dishTypeName;
    if (dishes != null) {
      data['dishes'] = dishes!.map((v) => v.toJson()).toList();
    }
    data['is_group_discount'] = isGroupDiscount;
    return data;
  }
}

class ModelMenu {
  int? totalOrder;
  bool? isDeleted;
  String? description;
  String? name;
  String? displayTotalOrder;
  ModelPrice? price;
  bool? isActive;
  ModelPrice? discountPrice;
  String? totalLike;
  List<Photos>? photos;
  List<ModelOptions>? options;
  bool? isAvailable;
  bool? isSearchable;
  ModelTime? time;
  int? id;
  int? displayOrder;
  bool? isGroupDiscountItem;
  int? quantity;
  String? availableTime;

  ModelMenu(
      {this.totalOrder,
        this.isDeleted,
        this.description,
        this.name,
        this.displayTotalOrder,
        this.price,
        this.isActive,
        this.discountPrice,
        this.totalLike,
        this.photos,
        this.options,
        this.isAvailable,
        this.isSearchable,
        this.time,
        this.id,
        this.displayOrder,
        this.isGroupDiscountItem,
        this.quantity,
        this.availableTime});

  ModelMenu.fromJson(Map<String, dynamic> json) {
    totalOrder = json['total_order'];
    isDeleted = json['is_deleted'];
    description = json['description'];
    name = json['name'];
    displayTotalOrder = json['display_total_order'];
    price = json['price'] != null ? ModelPrice.fromJson(json['price']) : null;
    isActive = json['is_active'];
    discountPrice = json['discount_price'] != null
        ? ModelPrice.fromJson(json['discount_price'])
        : null;
    totalLike = json['total_like'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    if (json['options'] != null) {
      options = <ModelOptions>[];
      json['options'].forEach((v) {
        options!.add(ModelOptions.fromJson(v));
      });
    }
    isAvailable = json['is_available'];
    isSearchable = json['is_searchable'];
    time = json['time'] != null ? ModelTime.fromJson(json['time']) : null;
    id = json['id'];
    displayOrder = json['display_order'];
    isGroupDiscountItem = json['is_group_discount_item'];
    quantity = json['quantity'];
    availableTime = json['available_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_order'] = totalOrder;
    data['is_deleted'] = isDeleted;
    data['description'] = description;
    data['name'] = name;
    data['display_total_order'] = displayTotalOrder;
    if (price != null) {
      data['price'] = price!.toJson();
    }
    data['is_active'] = isActive;
    if (discountPrice != null) {
      data['discount_price'] = discountPrice!.toJson();
    }
    data['total_like'] = totalLike;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson()).toList();
    }
    data['is_available'] = isAvailable;
    data['is_searchable'] = isSearchable;
    if (time != null) {
      data['time'] = time!.toJson();
    }
    data['id'] = id;
    data['display_order'] = displayOrder;
    data['is_group_discount_item'] = isGroupDiscountItem;
    data['quantity'] = quantity;
    data['available_time'] = availableTime;
    return data;
  }
}



class ModelOptions {
  String? ntop;
  bool? mandatory;
  int? id;
  ModelOptionItems? optionItems;
  String? name;

  ModelOptions({this.ntop, this.mandatory, this.id, this.optionItems, this.name});

  ModelOptions.fromJson(Map<String, dynamic> json) {
    ntop = json['ntop'];
    mandatory = json['mandatory'];
    id = json['id'];
    optionItems = json['option_items'] != null
        ? ModelOptionItems.fromJson(json['option_items'])
        : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ntop'] = ntop;
    data['mandatory'] = mandatory;
    data['id'] = id;
    if (optionItems != null) {
      data['option_items'] = optionItems!.toJson();
    }
    data['name'] = name;
    return data;
  }
}

class ModelOptionItems {
  int? minSelect;
  int? maxSelect;
  List<OptionItems>? items;

  ModelOptionItems({this.minSelect, this.maxSelect, this.items});

  ModelOptionItems.fromJson(Map<String, dynamic> json) {
    minSelect = json['min_select'];
    maxSelect = json['max_select'];
    if (json['items'] != null) {
      items = <OptionItems>[];
      json['items'].forEach((v) {
        items!.add(OptionItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min_select'] = minSelect;
    data['max_select'] = maxSelect;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OptionItems {
  String? name;
  int? weight;
  ModelPrice? ntopPrice;
  int? maxQuantity;
  bool? isDefault;
  int? topOrder;
  ModelPrice? price;
  int? id;

  OptionItems(
      {this.name,
        this.weight,
        this.ntopPrice,
        this.maxQuantity,
        this.isDefault,
        this.topOrder,
        this.price,
        this.id});

  OptionItems.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    weight = json['weight'];
    ntopPrice = json['ntop_price'] != null
        ? ModelPrice.fromJson(json['ntop_price'])
        : null;
    maxQuantity = json['max_quantity'];
    isDefault = json['is_default'];
    topOrder = json['top_order'];
    price = json['price'] != null ? ModelPrice.fromJson(json['price']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['weight'] = weight;
    if (ntopPrice != null) {
      data['ntop_price'] = ntopPrice!.toJson();
    }
    data['max_quantity'] = maxQuantity;
    data['is_default'] = isDefault;
    data['top_order'] = topOrder;
    if (price != null) {
      data['price'] = price!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

