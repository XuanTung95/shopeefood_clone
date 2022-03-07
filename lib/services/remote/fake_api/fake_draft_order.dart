

import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeDraftOrder extends BaseFakeApi {
  final _json = r'''
  {
	"reply": {
		"draft_carts": [{
			"order_value": {
				"text": "382,500đ",
				"unit": "đ",
				"value": 382500.0
			},
			"order_time": "2022-03-07 15:07:49",
			"share_code": null,
			"order_items": {
				"total_item": 5,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0983450185"],
				"restaurant_id": 122606,
				"has_contract": true,
				"photos": [{
					"width": 180,
					"value": "https://images.foody.vn/res/g13/122606/bg/s180x180/beauty-upload-api-image-200803233015.jpeg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g13/122606/bg/s240x240/beauty-upload-api-image-200803233015.jpeg",
					"height": 240
				}, {
					"width": 320,
					"value": "https://images.foody.vn/res/g13/122606/bg/s320x320/beauty-upload-api-image-200803233015.jpeg",
					"height": 320
				}, {
					"width": 480,
					"value": "https://images.foody.vn/res/g13/122606/bg/s480x480/beauty-upload-api-image-200803233015.jpeg",
					"height": 480
				}],
				"address": "142D Đội Cấn, Ba Đình, Hà Nội",
				"name_en": "",
				"foody_service_id": 1,
				"id": 6322,
				"name": "Cúc - Cháo Sườn Sụn - Đội Cấn",
				"restaurant_url": "ha-noi/chao-suon-sun-doi-can",
				"is_quality_merchant": true,
				"label": {
					"photos": [{
						"width": 180,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 240,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 320,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 480,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 640,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png",
						"height": 640
					}],
					"label_position": 1
				},
				"service_type": 1,
				"position": {
					"latitude": 21.034814,
					"is_verified": true,
					"longitude": 105.826593
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s60x60/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s140x140/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s200x200/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 180
				}],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"id": 798701630,
			"order_type": 1
		}, {
			"order_value": {
				"text": "58,000đ",
				"unit": "đ",
				"value": 58000.0
			},
			"order_time": "2022-03-06 10:09:44",
			"share_code": null,
			"order_items": {
				"total_item": 1,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0848499990"],
				"restaurant_id": 1043347,
				"has_contract": true,
				"photos": [{
					"width": 180,
					"value": "https://images.foody.vn/res/g105/1043347/bg/s180x180/file_restaurant_photo_cmwv_16051-78fe7540-201111214127.jpeg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g105/1043347/bg/s240x240/file_restaurant_photo_cmwv_16051-78fe7540-201111214127.jpeg",
					"height": 240
				}, {
					"width": 320,
					"value": "https://images.foody.vn/res/g105/1043347/bg/s320x320/file_restaurant_photo_cmwv_16051-78fe7540-201111214127.jpeg",
					"height": 320
				}, {
					"width": 480,
					"value": "https://images.foody.vn/res/g105/1043347/bg/s480x480/file_restaurant_photo_cmwv_16051-78fe7540-201111214127.jpeg",
					"height": 480
				}],
				"address": "649 - H5 Tân Mai, P. Tương Mai, Hoàng Mai, Hà Nội",
				"name_en": "",
				"foody_service_id": 1,
				"id": 130065,
				"name": "Vua Bún Hải Sản - Tân Mai",
				"restaurant_url": "ha-noi/vua-bun-hai-san-tan-mai",
				"is_quality_merchant": true,
				"label": {
					"photos": [{
						"width": 180,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png",
						"height": 0
					}, {
						"width": 240,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png",
						"height": 0
					}, {
						"width": 320,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png",
						"height": 0
					}, {
						"width": 480,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png",
						"height": 0
					}, {
						"width": 640,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png",
						"height": 640
					}],
					"label_position": 1
				},
				"service_type": 1,
				"position": {
					"latitude": 20.983396,
					"is_verified": false,
					"longitude": 105.851447
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s60x60/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s140x140/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s200x200/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 180
				}],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"id": 798037923,
			"order_type": 1
		}, {
			"order_value": {
				"text": "1,076,000đ",
				"unit": "đ",
				"value": 1076000.0
			},
			"order_time": "2022-03-05 22:41:14",
			"share_code": null,
			"order_items": {
				"total_item": 4,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["19006960", "02462925419"],
				"restaurant_id": 100323,
				"has_contract": true,
				"photos": [{
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
					"height": 240
				}, {
					"width": 320,
					"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
					"height": 320
				}, {
					"width": 480,
					"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
					"height": 480
				}],
				"address": "C4 Giảng Võ, P. Giảng Võ, Ba Đình, Hà Nội",
				"name_en": "",
				"foody_service_id": 1,
				"id": 4844,
				"name": "Burger King - Giảng Võ",
				"restaurant_url": "ha-noi/burger-king-giang-vo",
				"is_quality_merchant": true,
				"label": {
					"photos": [{
						"width": 180,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png",
						"height": 0
					}, {
						"width": 240,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png",
						"height": 0
					}, {
						"width": 320,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png",
						"height": 0
					}, {
						"width": 480,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png",
						"height": 0
					}, {
						"width": 640,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png",
						"height": 640
					}],
					"label_position": 1
				},
				"service_type": 1,
				"position": {
					"latitude": 21.0274570115491,
					"is_verified": true,
					"longitude": 105.82397725584
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s60x60/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s140x140/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s200x200/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 180
				}],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"id": 797998931,
			"order_type": 1
		}, {
			"order_value": {
				"text": "50,000đ",
				"unit": "đ",
				"value": 50000.0
			},
			"order_time": "2022-03-05 21:42:24",
			"share_code": null,
			"order_items": {
				"total_item": 1,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["02462602414", "0903265086"],
				"restaurant_id": 971876,
				"has_contract": true,
				"photos": [{
					"width": 180,
					"value": "https://images.foody.vn/res/g98/971876/prof/s180x180/foody-upload-api-foody-mobile-6b7e5fa6008fe6d1bf9e-191023150807.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g98/971876/prof/s240x240/foody-upload-api-foody-mobile-6b7e5fa6008fe6d1bf9e-191023150807.jpg",
					"height": 240
				}, {
					"width": 320,
					"value": "https://images.foody.vn/res/g98/971876/prof/s320x320/foody-upload-api-foody-mobile-6b7e5fa6008fe6d1bf9e-191023150807.jpg",
					"height": 320
				}, {
					"width": 480,
					"value": "https://images.foody.vn/res/g98/971876/prof/s480x480/foody-upload-api-foody-mobile-6b7e5fa6008fe6d1bf9e-191023150807.jpg",
					"height": 480
				}],
				"address": "40 Ngõ 282 Định Công, Hoàng Mai, Hà Nội",
				"name_en": "",
				"foody_service_id": 1,
				"id": 98255,
				"name": "Bánh Mì Hoa Cúc Nhà Gấu - Tiệm Bánh Online",
				"restaurant_url": "ha-noi/banh-mi-hoa-cuc-nha-gau-tiem-banh-online",
				"is_quality_merchant": false,
				"label": {
					"photos": [{
						"width": 180,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 240,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 320,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 480,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 640,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png",
						"height": 640
					}],
					"label_position": 1
				},
				"service_type": 1,
				"position": {
					"latitude": 20.98264,
					"is_verified": false,
					"longitude": 105.832441
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s60x60/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s140x140/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s200x200/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 180
				}],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"id": 797939068,
			"order_type": 1
		}, {
			"order_value": {
				"text": "73,000đ",
				"unit": "đ",
				"value": 73000.0
			},
			"order_time": "2022-03-05 20:02:28",
			"share_code": null,
			"order_items": {
				"total_item": 2,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0961273812", "0368726287"],
				"restaurant_id": 888197,
				"has_contract": true,
				"photos": [{
					"width": 180,
					"value": "https://images.foody.vn/res/g89/888197/bg/s180x180/image-d53bd46d-210718102205.jpeg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g89/888197/bg/s240x240/image-d53bd46d-210718102205.jpeg",
					"height": 240
				}, {
					"width": 320,
					"value": "https://images.foody.vn/res/g89/888197/bg/s320x320/image-d53bd46d-210718102205.jpeg",
					"height": 320
				}, {
					"width": 480,
					"value": "https://images.foody.vn/res/g89/888197/bg/s480x480/image-d53bd46d-210718102205.jpeg",
					"height": 480
				}],
				"address": "184 Tân Mai, Hoàng Mai, Hà Nội",
				"name_en": "",
				"foody_service_id": 1,
				"id": 76986,
				"name": "The 1989 - Trà Sữa Muối Biển - Tân Mai",
				"restaurant_url": "ha-noi/the-1989-tra-sua-muoi-bien-tan-mai",
				"is_quality_merchant": true,
				"label": {
					"photos": [{
						"width": 180,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 240,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 320,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 480,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png",
						"height": 0
					}, {
						"width": 640,
						"value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png",
						"height": 640
					}],
					"label_position": 1
				},
				"service_type": 1,
				"position": {
					"latitude": 20.983587,
					"is_verified": false,
					"longitude": 105.849893
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s60x60/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s140x140/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2513/25126124/avt/s200x200/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
					"height": 180
				}],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"id": 797938915,
			"order_type": 1
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetDraftOrder);
  }

  @override
  response() {
    return jsonDecode(_json);
  }

}