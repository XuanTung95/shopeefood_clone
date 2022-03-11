

import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeMostOrdered extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"delivery_infos": [{
			"total_order": 0,
			"rating": {
				"total_review": 10,
				"avg": 4.6,
				"display_total_review": "10+",
				"app_link": "foody://foody.vn?action=reviewlist&id=1026335"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0988743258"],
			"restaurant_id": 1026335,
			"restaurant_url": "halloween-fastfood-drinks-truong-dinh",
			"brand_id": 5593,
			"is_open": true,
			"contract_type": 1,
			"id": 117217,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 12,
			"categories": ["Bistro"],
			"cuisines": ["Vietnam"],
			"service_type": 1,
			"url_rewrite_name": "halloween-fastfood-drinks-truong-dinh",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Halloween - Fastfood & Drinks",
				"photos": [],
				"brand_id": 5593,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "halloween-fastfood-drinks",
				"price_range": {},
				"restaurant_count": 2
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g103/1026335/bg/s180x180/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210417101630.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g103/1026335/bg/s240x240/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210417101630.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g103/1026335/bg/s320x320/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210417101630.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g103/1026335/bg/s480x480/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210417101630.jpg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "Tầng 1, Tòa Nhà Thiên Sơn Plaza, 609 Trương Định, P. Thịnh Liệt, Hoàng Mai, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "21:30:59",
				"open_time": "09:00:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Halloween - Fastfood & Drinks - Trương Định",
			"promotion_groups": [{
				"group": 4,
				"text": "Code 15k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png",
				"discount_type": 1,
				"id": 19403351,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/halloween-fastfood-drinks-truong-dinh",
			"display_order": 0,
			"delivery_id": 117217,
			"district_id": 26,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["36k"]
			},
			"position": {
				"latitude": 20.9795511453831,
				"is_verified": false,
				"longitude": 105.844326700653
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.7,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=894234"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0948688692"],
			"restaurant_id": 894234,
			"restaurant_url": "ich-hoa-duong-taiwan-tea",
			"brand_id": 7451,
			"is_open": true,
			"contract_type": 1,
			"id": 78659,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 12,
			"categories": ["Coffee/Dessert"],
			"cuisines": ["Asian", "Taiwan"],
			"service_type": 1,
			"url_rewrite_name": "ich-hoa-duong-taiwan-tea",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Ích Hòa Đường - Taiwan Tea",
				"photos": [],
				"brand_id": 7451,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "ich-hoa-duong-taiwan-tea",
				"price_range": {},
				"restaurant_count": 4
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-avar-191009093623.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g90/894234/bg/s180x180/beauty-upload-api-image-200803232847.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g90/894234/bg/s240x240/beauty-upload-api-image-200803232847.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g90/894234/bg/s320x320/beauty-upload-api-image-200803232847.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g90/894234/bg/s480x480/beauty-upload-api-image-200803232847.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "24 Ô Chợ Dừa, Đống Đa, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "22:30:59",
				"open_time": "09:00:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Ích Hòa Đường - Taiwan Tea - Ô Chợ Dừa",
			"promotion_groups": [{
				"group": 1,
				"text": "20% off menu",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 5,
				"id": 16213423,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}, {
				"group": 4,
				"text": "Code 70k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399632,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}, {
				"group": 6,
				"text": "Freeship",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 9,
				"id": 19444944,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/ich-hoa-duong-taiwan-tea",
			"display_order": 73729,
			"delivery_id": 78659,
			"district_id": 22,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["45k"]
			},
			"position": {
				"latitude": 21.0192522354237,
				"is_verified": false,
				"longitude": 105.828180212801
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.5,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=722778"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0949701010"],
			"restaurant_id": 722778,
			"restaurant_url": "kombo-com-nieu-singapore-kim-dong",
			"brand_id": 1400,
			"is_open": false,
			"contract_type": 1,
			"id": 28133,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 12,
			"categories": ["Restaurant"],
			"cuisines": ["Singapore", "Asian"],
			"service_type": 1,
			"url_rewrite_name": "kombo-com-nieu-singapore-kim-dong",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "KOMBO - Cơm Niêu Singapore",
				"photos": [],
				"brand_id": 1400,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "kombo-com-nieu-singapore",
				"price_range": {},
				"restaurant_count": 13
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-avar52-190410114847.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g73/722778/bg/s180x180/beauty-upload-api-image-200806095832.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g73/722778/bg/s240x240/beauty-upload-api-image-200806095832.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g73/722778/bg/s320x320/beauty-upload-api-image-200806095832.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g73/722778/bg/s480x480/beauty-upload-api-image-200806095832.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "26 Kim Đồng, Hoàng Mai, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 2,
				"next_available_time": "2022-03-01 10:00:00",
				"busy_type": 1,
				"title": "Outside of opening time",
				"color": "#D3D3D3",
				"text": {
					"resource_name": "delivery_restaurant_closed"
				},
				"note": {
					"message": "Schedule for 01/03"
				},
				"message": "Merchant will re-open at 10:00 01/03/2022"
			},
			"name": "KOMBO - Cơm Niêu Singapore - Kim Đồng",
			"promotion_groups": [{
				"group": 4,
				"text": "Code 99k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399639,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/kombo-com-nieu-singapore-kim-dong",
			"display_order": 26810,
			"delivery_id": 28133,
			"district_id": 26,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["46k"]
			},
			"position": {
				"latitude": 20.98351,
				"is_verified": false,
				"longitude": 105.843898
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.7,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=1049175"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0823995766"],
			"restaurant_id": 1049175,
			"restaurant_url": "com-sai-gon-thinh-liet",
			"brand_id": 12906,
			"is_open": true,
			"contract_type": 1,
			"id": 134696,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 12,
			"categories": ["Bistro"],
			"cuisines": ["Vietnam"],
			"service_type": 1,
			"url_rewrite_name": "com-sai-gon-thinh-liet",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Cơm Sài Gòn - Thịnh Liệt",
				"photos": [],
				"brand_id": 12906,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "com-sai-gon-thinh-liet",
				"price_range": {},
				"restaurant_count": 2
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-received_26143284255-201001161010.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g105/1049175/bg/s180x180/foody-upload-api-foody-logo-received_26s14328425.jpg-201001161009.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g105/1049175/bg/s240x240/foody-upload-api-foody-logo-received_26s14328425.jpg-201001161009.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g105/1049175/bg/s320x320/foody-upload-api-foody-logo-received_26s14328425.jpg-201001161009.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g105/1049175/bg/s480x480/foody-upload-api-foody-logo-received_26s14328425.jpg-201001161009.jpg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "19 Ngõ 42/185 Thịnh Liệt, Hoàng Mai, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "21:30:59",
				"open_time": "09:30:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Cơm Sài Gòn - Thịnh Liệt",
			"promotion_groups": [{
				"group": 4,
				"text": "Code 15k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png",
				"discount_type": 1,
				"id": 19403351,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/com-sai-gon-thinh-liet",
			"display_order": 0,
			"delivery_id": 134696,
			"district_id": 26,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["44k"]
			},
			"position": {
				"latitude": 20.971718,
				"is_verified": false,
				"longitude": 105.849411
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 100,
				"avg": 4.6,
				"display_total_review": "100+",
				"app_link": "foody://foody.vn?action=reviewlist&id=1027565"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0369447236"],
			"restaurant_id": 1027565,
			"restaurant_url": "chaebon-kimbap-ngon-so-1-tran-huy-lieu",
			"brand_id": 9638,
			"is_open": false,
			"contract_type": 1,
			"id": 118154,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 12,
			"categories": ["Bistro"],
			"cuisines": ["Korean", "Asian"],
			"service_type": 1,
			"url_rewrite_name": "chaebon-kimbap-ngon-so-1-tran-huy-lieu",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Chaebon - Kimbap Ngon Số 1",
				"photos": [],
				"brand_id": 9638,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "chaebon-kimbap-ngon-so-1",
				"price_range": {},
				"restaurant_count": 13
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-16-200629141201.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g103/1027565/bg/s180x180/beauty-upload-api-image-200803232844.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g103/1027565/bg/s240x240/beauty-upload-api-image-200803232844.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g103/1027565/bg/s320x320/beauty-upload-api-image-200803232844.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g103/1027565/bg/s480x480/beauty-upload-api-image-200803232844.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "108A5 Trần Huy Liệu, Ba Đình, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 2,
				"next_available_time": "2022-03-01 09:00:00",
				"busy_type": 1,
				"title": "Outside of opening time",
				"color": "#D3D3D3",
				"text": {
					"resource_name": "delivery_restaurant_closed"
				},
				"note": {
					"message": "Schedule for 01/03"
				},
				"message": "Merchant will re-open at 09:00 01/03/2022"
			},
			"name": "Chaebon - Kimbap Ngon Số 1 - Trần Huy Liệu",
			"promotion_groups": [{
				"group": 4,
				"text": "Code 70k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399632,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/chaebon-kimbap-ngon-so-1-tran-huy-lieu",
			"display_order": 0,
			"delivery_id": 118154,
			"district_id": 20,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["58k"]
			},
			"position": {
				"latitude": 21.0298557215657,
				"is_verified": false,
				"longitude": 105.82039892639
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.7,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=1041852"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0969836838"],
			"restaurant_id": 1041852,
			"restaurant_url": "comi-chefhome-am-thuc-trung-hoa-phong-vi-viet",
			"brand_id": 12839,
			"is_open": false,
			"contract_type": 1,
			"id": 128915,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 12,
			"categories": ["Bistro"],
			"cuisines": ["Chinese", "Asian"],
			"service_type": 1,
			"url_rewrite_name": "comi-chefhome-am-thuc-trung-hoa-phong-vi-viet",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Comi ChefHome - Ẩm Thực Trung Hoa Phong Vị Việt",
				"photos": [],
				"brand_id": 12839,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "comi-chefhome-am-thuc-trung-hoa-phong-vi-viet",
				"price_range": {},
				"restaurant_count": 2
			},
			"limit_distance": 15000,
			"image_name": "file_restaurant_photo_kuc6_16025-d844d48c-201012204652.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g105/1041852/bg/s180x180/file_restaurant_photo_x5qr_16025-a044610c-201012204553.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g105/1041852/bg/s240x240/file_restaurant_photo_x5qr_16025-a044610c-201012204553.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g105/1041852/bg/s320x320/file_restaurant_photo_x5qr_16025-a044610c-201012204553.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g105/1041852/bg/s480x480/file_restaurant_photo_x5qr_16025-a044610c-201012204553.jpg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "34 Ngọc Khánh, P. Ngọc Khánh, Ba Đình, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 2,
				"next_available_time": "2022-02-28 17:00:00",
				"busy_type": 1,
				"title": "Outside of opening time",
				"color": "#D3D3D3",
				"text": {
					"resource_name": "delivery_restaurant_closed"
				},
				"note": {
					"message": "Schedule for 17:00"
				},
				"message": "Merchant will re-open at 17:00 28/02/2022"
			},
			"name": "Comi ChefHome - Ẩm Thực Trung Hoa Phong Vị Việt",
			"promotion_groups": [{
				"group": 4,
				"text": "Code 70k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399632,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}, {
				"group": 6,
				"text": "Freeship",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 9,
				"id": 19444944,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/comi-chefhome-am-thuc-trung-hoa-phong-vi-viet",
			"display_order": 0,
			"delivery_id": 128915,
			"district_id": 20,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["56k"]
			},
			"position": {
				"latitude": 21.029595,
				"is_verified": false,
				"longitude": 105.817311
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.6,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=1076498"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0338887030"],
			"restaurant_id": 1076498,
			"restaurant_url": "com-ngon-me-nau-kim-ma",
			"brand_id": 9508,
			"is_open": false,
			"contract_type": 1,
			"id": 179188,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 12,
			"categories": ["Bistro"],
			"cuisines": [],
			"service_type": 1,
			"url_rewrite_name": "com-ngon-me-nau-kim-ma",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Quán Cơm Ngon Mẹ Nấu",
				"photos": [],
				"brand_id": 9508,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "quan-com-ngon-me-nau",
				"price_range": {},
				"restaurant_count": 12
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-image-5f06df9e-20091-210504095418.jpeg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g108/1076498/bg/s180x180/foody-upload-api-foody-logo-image-5f06df9e-20091.jpeg-210504095418.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g108/1076498/bg/s240x240/foody-upload-api-foody-logo-image-5f06df9e-20091.jpeg-210504095418.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g108/1076498/bg/s320x320/foody-upload-api-foody-logo-image-5f06df9e-20091.jpeg-210504095418.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g108/1076498/bg/s480x480/foody-upload-api-foody-logo-image-5f06df9e-20091.jpeg-210504095418.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "11 Ngõ 192 Kim Mã, Ba Đình, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 3,
				"close_time": "21:00:59",
				"busy_type": 1,
				"open_time": "10:00:00",
				"title": "Merchant is currently busy",
				"color": "#FF0000",
				"text": {
					"message": "Busy"
				},
				"next_available_time": "2022-02-28 16:30:00",
				"note": {
					"message": "Schedule for 16:30"
				},
				"message": "Merchant will re-open at 16:30 28/02/2022"
			},
			"name": "Cơm Ngon Mẹ Nấu - Kim Mã",
			"promotion_groups": [{
				"group": 1,
				"text": "Item discount",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 5,
				"id": 16354784,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}, {
				"group": 4,
				"text": "Code 70k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399632,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/com-ngon-me-nau-kim-ma",
			"display_order": 0,
			"delivery_id": 179188,
			"district_id": 20,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["47k"]
			},
			"position": {
				"latitude": 21.0323172000139,
				"is_verified": false,
				"longitude": 105.824757174191
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.7,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=955315"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0943681868"],
			"restaurant_id": 955315,
			"restaurant_url": "com-tam-duong-tran-huy-lieu",
			"brand_id": 5996,
			"is_open": false,
			"contract_type": 1,
			"id": 94683,
			"location_url": "ha-noi",
			"has_contract": true,
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
			"merchant_time": 8,
			"categories": ["Bistro"],
			"cuisines": ["Vietnam"],
			"service_type": 1,
			"url_rewrite_name": "com-tam-duong-tran-huy-lieu",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Cơm Tấm Dương",
				"photos": [],
				"brand_id": 5996,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "com-tam-duong",
				"price_range": {},
				"restaurant_count": 3
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-foody-upload-api-foo-190911111419.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g96/955315/bg/s180x180/file_restaurant_photo_ntqh_16319-c900176d-210918093513.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g96/955315/bg/s240x240/file_restaurant_photo_ntqh_16319-c900176d-210918093513.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g96/955315/bg/s320x320/file_restaurant_photo_ntqh_16319-c900176d-210918093513.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g96/955315/bg/s480x480/file_restaurant_photo_ntqh_16319-c900176d-210918093513.jpg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "116B D1 Trần Huy Liệu, Ba Đình, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 2,
				"next_available_time": "2022-03-01 10:15:00",
				"busy_type": 1,
				"title": "Outside of opening time",
				"color": "#D3D3D3",
				"text": {
					"resource_name": "delivery_restaurant_closed"
				},
				"note": {
					"message": "Schedule for 01/03"
				},
				"message": "Merchant will re-open at 10:15 01/03/2022"
			},
			"name": "Cơm Tấm Dương - Trần Huy Liệu",
			"promotion_groups": [{
				"group": 1,
				"text": "25% off menu",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 5,
				"id": 16208254,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}, {
				"group": 4,
				"text": "Code 70k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399632,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/com-tam-duong-tran-huy-lieu",
			"display_order": 0,
			"delivery_id": 94683,
			"district_id": 20,
			"is_pickup": true,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["62k"]
			},
			"position": {
				"latitude": 21.027321,
				"is_verified": false,
				"longitude": 105.822093
			},
			"shipping_methods": [1, 3]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.8,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=901968"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["0763700886"],
			"restaurant_id": 901968,
			"restaurant_url": "the-alley-tra-sua-dai-loan-giang-vo",
			"brand_id": 4269,
			"is_open": true,
			"contract_type": 1,
			"id": 80542,
			"location_url": "ha-noi",
			"has_contract": true,
			"is_quality_merchant": false,
			"merchant_time": 20,
			"categories": ["Coffee/Dessert"],
			"cuisines": ["Asian"],
			"service_type": 1,
			"url_rewrite_name": "the-alley-tra-sua-dai-loan-giang-vo",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "The Alley - Trà Sữa Đài Loan - Hà Nội",
				"photos": [],
				"brand_id": 4269,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "the-alley-tra-sua-dai-loan-ha-noi",
				"price_range": {},
				"restaurant_count": 14
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-foody-upload-api-foo-190404140337.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g91/901968/bg/s180x180/beauty-upload-api-image-200625145801.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g91/901968/bg/s240x240/beauty-upload-api-image-200625145801.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g91/901968/bg/s320x320/beauty-upload-api-image-200625145801.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g91/901968/bg/s480x480/beauty-upload-api-image-200625145801.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "163 Giảng Võ, Đống Đa, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "21:00:59",
				"open_time": "10:00:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "The Alley - Trà Sữa Đài Loan - Giảng Võ",
			"promotion_groups": [],
			"url": "https://shopeefood.vn/ha-noi/the-alley-tra-sua-dai-loan-giang-vo",
			"display_order": 75489,
			"delivery_id": 80542,
			"district_id": 22,
			"is_pickup": true,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["61k"]
			},
			"position": {
				"latitude": 21.0281865913265,
				"is_verified": false,
				"longitude": 105.825552729426
			},
			"shipping_methods": [1, 3]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.8,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=688223"
			},
			"is_favorite": false,
			"city_id": 218,
			"phones": ["02422210298", "02422210488"],
			"restaurant_id": 688223,
			"restaurant_url": "tra-sua-gong-cha-hoang-dao-thuy",
			"brand_id": 2101,
			"is_open": true,
			"contract_type": 1,
			"id": 15391,
			"location_url": "ha-noi",
			"has_contract": true,
			"is_quality_merchant": true,
			"merchant_time": 23,
			"categories": ["Coffee/Dessert"],
			"cuisines": ["Asian", "Taiwan"],
			"service_type": 1,
			"url_rewrite_name": "tra-sua-gong-cha-hoang-dao-thuy",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Trà Sữa Gong Cha - Hà Nội",
				"photos": [],
				"brand_id": 2101,
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "23:59:59",
					"open_time": "00:00:01",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"position": {},
				"min_order_value": {},
				"url_rewrite_name": "tra-sua-gong-cha-ha-noi",
				"price_range": {},
				"restaurant_count": 4
			},
			"limit_distance": 15000,
			"image_name": "beauty-upload-api-image-200805140404.jpeg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g69/688223/bg/s180x180/beauty-upload-api-image-200625113600.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g69/688223/bg/s240x240/beauty-upload-api-image-200625113600.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g69/688223/bg/s320x320/beauty-upload-api-image-200625113600.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g69/688223/bg/s480x480/beauty-upload-api-image-200625113600.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "Tầng 1, 34T Hoàng Đạo Thúy, Cầu Giấy, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "20:40:59",
				"open_time": "09:50:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Trà Sữa Gong Cha - 貢茶 - Hoàng Đạo Thúy",
			"promotion_groups": [{
				"group": 1,
				"text": "Item discount",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 5,
				"id": 16346666,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/tra-sua-gong-cha-hoang-dao-thuy",
			"display_order": 14812,
			"delivery_id": 15391,
			"district_id": 21,
			"is_pickup": true,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["54k"]
			},
			"position": {
				"latitude": 21.008164,
				"is_verified": true,
				"longitude": 105.80291
			},
			"shipping_methods": [1, 3]
		}]
	},
	"result": "success"
}
  
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetMostOrdered);
  }

  @override
  response({String? url}) {
    return json.decode(_json);
  }

}