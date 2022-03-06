import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';

import '../remote_url.dart';

class FakeDeliveryItemList extends BaseFakeApi {
  final String _json = r'''
  
  {
	"reply": {
		"delivery_infos": [{
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.8,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=694804"
			},
			"city_id": 218,
			"phones": ["0398354406"],
			"restaurant_id": 694804,
			"restaurant_url": "quang-dang-banh-trang-tron-banh-trang-nuong",
			"brand_id": 6019,
			"is_open": true,
			"contract_type": 1,
			"id": 35849,
			"location_url": "ha-noi",
			"has_contract": true,
			"is_quality_merchant": true,
			"merchant_time": 5,
			"categories": ["Street food"],
			"cuisines": ["Vietnam"],
			"service_type": 1,
			"url_rewrite_name": "quang-dang-banh-trang-tron-banh-trang-nuong",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Quang Đăng - Bánh Tráng Trộn & Bánh Tráng Nướng",
				"photos": [],
				"brand_id": 6019,
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
				"url_rewrite_name": "quang-dang-banh-trang-tron-banh-trang-nuong",
				"price_range": {},
				"restaurant_count": 7
			},
			"limit_distance": 15000,
			"image_name": "file_restaurant_photo_cwxb_16261-7d8449c7-210714003521.jpeg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g70/694804/bg/s180x180/file_restaurant_photo_saoi_16261-b74216af-210714003403.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g70/694804/bg/s240x240/file_restaurant_photo_saoi_16261-b74216af-210714003403.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g70/694804/bg/s320x320/file_restaurant_photo_saoi_16261-b74216af-210714003403.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g70/694804/bg/s480x480/file_restaurant_photo_saoi_16261-b74216af-210714003403.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "43E Dương Khuê, Cầu Giấy, Hà Nội",
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
				"open_time": "08:40:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Quang Đăng - Bánh Tráng Trộn & Bánh Tráng Nướng",
			"promotion_groups": [],
			"url": "https://shopeefood.vn/ha-noi/quang-dang-banh-trang-tron-banh-trang-nuong",
			"display_order": 34015,
			"delivery_id": 35849,
			"district_id": 21,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["31k"]
			},
			"position": {
				"latitude": 21.0360996460703,
				"is_verified": false,
				"longitude": 105.773210227489
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.9,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=670439"
			},
			"city_id": 217,
			"phones": ["0914568685"],
			"restaurant_id": 670439,
			"restaurant_url": "nuoc-ep-trai-cay-tuoi-pom-fresh-juice",
			"brand_id": 14232,
			"is_open": true,
			"contract_type": 1,
			"id": 11574,
			"location_url": "ho-chi-minh",
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
			"categories": ["Shop Online"],
			"cuisines": ["Vietnam"],
			"service_type": 1,
			"url_rewrite_name": "nuoc-ep-trai-cay-tuoi-pom-fresh-juice",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "P.O.M Fresh Juice",
				"photos": [],
				"brand_id": 14232,
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
				"url_rewrite_name": "pom-fresh-juice",
				"price_range": {},
				"restaurant_count": 2
			},
			"limit_distance": 20000,
			"image_name": "file_restaurant_photo_9uvz_16190-7c14bc50-210422150443.jpeg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g68/670439/bg/s180x180/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g68/670439/bg/s240x240/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g68/670439/bg/s320x320/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g68/670439/bg/s480x480/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "247A/40A Huỳnh Văn Bánh, P. 12, Phú Nhuận, TP. HCM",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "22:00:59",
				"open_time": "07:00:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Nước Ép Trái Cây Tươi - POM Fresh Juice",
			"promotion_groups": [{
				"group": 1,
				"text": "Flash Sale",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 5,
				"id": 16351495,
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
			"url": "https://shopeefood.vn/ho-chi-minh/nuoc-ep-trai-cay-tuoi-pom-fresh-juice",
			"display_order": 11147,
			"delivery_id": 11574,
			"district_id": 17,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["43k"]
			},
			"position": {
				"latitude": 10.790901,
				"is_verified": true,
				"longitude": 106.676843
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.7,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=996281"
			},
			"city_id": 230,
			"phones": ["0366949303", "0966573237"],
			"restaurant_id": 996281,
			"restaurant_url": "ga-bia-lulu-hoang-hoa-tham",
			"brand_id": 8489,
			"is_open": true,
			"contract_type": 1,
			"id": 104834,
			"location_url": "binh-duong",
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
			"merchant_time": 17,
			"categories": ["Bistro"],
			"cuisines": ["Vietnam"],
			"service_type": 1,
			"url_rewrite_name": "ga-bia-lulu-hoang-hoa-tham",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Gà Bia Lulu",
				"photos": [],
				"brand_id": 8489,
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
				"url_rewrite_name": "ga-bia-lulu",
				"price_range": {},
				"restaurant_count": 4
			},
			"limit_distance": 15000,
			"image_name": "foody-upload-api-foody-mobile-foody-upload-api-foo-200102145501.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g100/996281/prof/s180x180/foody-upload-api-foody-mobile-foody-upload-api-foo-200102145501.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g100/996281/prof/s240x240/foody-upload-api-foody-mobile-foody-upload-api-foo-200102145501.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g100/996281/prof/s320x320/foody-upload-api-foody-mobile-foody-upload-api-foo-200102145501.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g100/996281/prof/s480x480/foody-upload-api-foody-mobile-foody-upload-api-foo-200102145501.jpg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "74 Hoàng Hoa Thám, Thị xã Thủ Dầu Một, Bình Dương",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "21:15:59",
				"open_time": "09:00:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Gà Bia Lulu - Hoàng Hoa Thám",
			"promotion_groups": [{
				"group": 1,
				"text": "Item discount",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 5,
				"id": 16345897,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}, {
				"group": 4,
				"text": "Code 70k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399632,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/binh-duong/ga-bia-lulu-hoang-hoa-tham",
			"display_order": 0,
			"delivery_id": 104834,
			"district_id": 122,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["51k"]
			},
			"position": {
				"latitude": 10.990134,
				"is_verified": false,
				"longitude": 106.665243
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.8,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=662394"
			},
			"city_id": 218,
			"phones": ["02438812828"],
			"restaurant_id": 662394,
			"restaurant_url": "ding-tea-xuan-la",
			"brand_id": 3360,
			"is_open": true,
			"contract_type": 1,
			"id": 17238,
			"location_url": "ha-noi",
			"has_contract": true,
			"is_quality_merchant": false,
			"merchant_time": 12,
			"categories": ["Coffee/Dessert"],
			"cuisines": ["Asian", "Taiwan"],
			"service_type": 1,
			"url_rewrite_name": "ding-tea-xuan-la",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Ding Tea - Trà Sữa Đài Loan - HN",
				"photos": [],
				"brand_id": 3360,
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
				"url_rewrite_name": "ding-tea-tra-sua-dai-loan-hn",
				"price_range": {},
				"restaurant_count": 62
			},
			"limit_distance": 15000,
			"image_name": "image-a8749ea0-211223133154.jpeg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g67/662394/bg/s180x180/beauty-upload-api-image-200626115206.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g67/662394/bg/s240x240/beauty-upload-api-image-200626115206.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g67/662394/bg/s320x320/beauty-upload-api-image-200626115206.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g67/662394/bg/s480x480/beauty-upload-api-image-200626115206.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "28A Xuân La (Đối Diện 49 Xuân La), Tây Hồ, Hà Nội",
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
				"open_time": "08:40:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Ding Tea - Xuân La",
			"promotion_groups": [{
				"group": 4,
				"text": "Code 50k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19448418,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ha-noi/ding-tea-xuan-la",
			"display_order": 16569,
			"delivery_id": 17238,
			"district_id": 28,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["34k"]
			},
			"position": {
				"latitude": 21.062387,
				"is_verified": true,
				"longitude": 105.807881
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.7,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=762376"
			},
			"city_id": 218,
			"phones": ["0942989324"],
			"restaurant_id": 762376,
			"restaurant_url": "banh-trang-tron-sai-gon-chua-lang",
			"brand_id": 12671,
			"is_open": true,
			"contract_type": 1,
			"id": 58378,
			"location_url": "ha-noi",
			"has_contract": true,
			"is_quality_merchant": true,
			"merchant_time": 20,
			"categories": ["Street food"],
			"cuisines": ["South"],
			"service_type": 1,
			"url_rewrite_name": "banh-trang-tron-sai-gon-chua-lang",
			"is_foody_delivery": true,
			"rush_hour": [],
			"brand": {
				"rush_hour": [],
				"promotion_title": "",
				"name": "Bánh Tráng Trộn Sài Gòn - Hà Nội",
				"photos": [],
				"brand_id": 12671,
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
				"url_rewrite_name": "banh-trang-tron-sai-gon-ha-noi",
				"price_range": {},
				"restaurant_count": 2
			},
			"limit_distance": 10000,
			"image_name": "image-67284399-200910115812.jpeg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g77/762376/bg/s180x180/foody-upload-api-foody-logo-1.jpeg-210504165723.jpeg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g77/762376/bg/s240x240/foody-upload-api-foody-logo-1.jpeg-210504165723.jpeg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g77/762376/bg/s320x320/foody-upload-api-foody-logo-1.jpeg-210504165723.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g77/762376/bg/s480x480/foody-upload-api-foody-logo-1.jpeg-210504165723.jpeg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "Ki Ốt 6, 147 Ngõ 1194 Đường Láng, Đống Đa, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "20:00:59",
				"open_time": "11:00:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Bánh Tráng Trộn Sài Gòn - Chùa Láng",
			"promotion_groups": [],
			"url": "https://shopeefood.vn/ha-noi/banh-trang-tron-sai-gon-chua-lang",
			"display_order": 54925,
			"delivery_id": 58378,
			"district_id": 22,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["21k"]
			},
			"position": {
				"latitude": 21.023623,
				"is_verified": false,
				"longitude": 105.80119
			},
			"shipping_methods": [1]
		}, {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.9,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=854630"
			},
			"city_id": 217,
			"phones": ["0773065218", "0931875036"],
			"restaurant_id": 854630,
			"restaurant_url": "sam-thao-moc-hong-tra-tac-mat-ong-gia-truyen",
			"brand_id": 0,
			"is_open": true,
			"contract_type": 1,
			"id": 66943,
			"location_url": "ho-chi-minh",
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
			"merchant_time": 15,
			"categories": ["Street food"],
			"cuisines": ["Vietnam"],
			"service_type": 1,
			"url_rewrite_name": "sam-thao-moc-hong-tra-tac-mat-ong-gia-truyen",
			"is_foody_delivery": true,
			"rush_hour": [],
			"limit_distance": 20000,
			"image_name": "foody-upload-api-foody-mobile-b7778830-6b69-4948-8-190926141423.jpg",
			"restaurant_status": 2,
			"campaigns": [],
			"photos": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g86/854630/bg/s180x180/foody-upload-api-foody-logo-14.jpg-201203163650.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g86/854630/bg/s240x240/foody-upload-api-foody-logo-14.jpg-201203163650.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g86/854630/bg/s320x320/foody-upload-api-foody-logo-14.jpg-201203163650.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g86/854630/bg/s480x480/foody-upload-api-foody-logo-14.jpg-201203163650.jpg",
				"height": 480
			}],
			"confirm_methods": {},
			"address": "239 Đường Số 8, P. 11, Gò Vấp, TP. HCM",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"resource_name": "delivery_order_minimum",
				"resource_args": ["20k"]
			},
			"operating": {
				"status": 1,
				"color": "#239839",
				"close_time": "23:00:59",
				"open_time": "09:30:00",
				"text": {
					"resource_name": "delivery_restaurant_opening"
				}
			},
			"name": "Sâm Thảo Mộc & Hồng Trà Tắc Mật Ong Gia Truyền",
			"promotion_groups": [{
				"group": 4,
				"text": "Code 70k off",
				"browsing_icon": "https://images.foody.vn/icon/browsing_discount/s/voucher_14.png",
				"discount_type": 1,
				"id": 19399632,
				"icon": "https://images.foody.vn/icon/discount/s/voucher_14.png"
			}],
			"url": "https://shopeefood.vn/ho-chi-minh/sam-thao-moc-hong-tra-tac-mat-ong-gia-truyen",
			"display_order": 62953,
			"delivery_id": 66943,
			"district_id": 2,
			"is_pickup": false,
			"price_range": {
				"resource_name": "avg_price_format",
				"resource_args": ["26k"]
			},
			"position": {
				"latitude": 10.844876,
				"is_verified": false,
				"longitude": 106.660075
			},
			"shipping_methods": [1]
		}
]
	},
	"result": "success"
}

  ''';

  final String _json2 = r'''
  {"reply":{"delivery_infos":[{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=1001814"},"city_id":219,"phones":["0795649124"],"restaurant_id":1001814,"restaurant_url":"banh-trang-mr-benly","brand_id":15008,"is_open":true,"contract_type":1,"id":106895,"location_url":"da-nang","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":19,"categories":["Street food"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"banh-trang-mr-benly","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Bánh Tráng Mr.Benly","photos":[],"brand_id":15008,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"banh-trang-mr-benly","price_range":{},"restaurant_count":2},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-a-200420134542.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g101/1001814/bg/s180x180/file_restaurant_photo_chti_16074-b1c64e1c-201209143345.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g101/1001814/bg/s240x240/file_restaurant_photo_chti_16074-b1c64e1c-201209143345.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g101/1001814/bg/s320x320/file_restaurant_photo_chti_16074-b1c64e1c-201209143345.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g101/1001814/bg/s480x480/file_restaurant_photo_chti_16074-b1c64e1c-201209143345.jpeg","height":480}],"confirm_methods":{},"address":"103 Nguyễn Phước Thái, Quận Thanh Khê, Đà Nẵng","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:00:59","open_time":"12:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Bánh Tráng Mr.Benly","promotion_groups":[{"group":1,"text":"Flash Sale","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16357155,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 10k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403370,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/da-nang/banh-trang-mr-benly","display_order":0,"delivery_id":106895,"district_id":35,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["32k"]},"position":{"latitude":16.05918,"is_verified":false,"longitude":108.181494},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=765904"},"city_id":217,"phones":["0898465288"],"restaurant_id":765904,"restaurant_url":"mtea-coffee","brand_id":12419,"is_open":true,"contract_type":1,"id":51515,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"mtea-coffee","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Mtea & Coffee","photos":[],"brand_id":12419,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"mtea-coffee","price_range":{},"restaurant_count":2},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-34a-jpg-180809144855.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g77/765904/bg/s180x180/beauty-upload-api-image-200803231041.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g77/765904/bg/s240x240/beauty-upload-api-image-200803231041.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g77/765904/bg/s320x320/beauty-upload-api-image-200803231041.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g77/765904/bg/s480x480/beauty-upload-api-image-200803231041.jpeg","height":480}],"confirm_methods":{},"address":"3 Trần Quốc Toản, P. 8, Quận 3, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:00:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Mtea & Coffee","promotion_groups":[{"group":1,"text":"Flash Sale","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16357515,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/mtea-coffee","display_order":48863,"delivery_id":51515,"district_id":5,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["42k"]},"position":{"latitude":10.789529,"is_verified":false,"longitude":106.689435},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=127978"},"city_id":217,"phones":["0901683388","0918996641"],"restaurant_id":127978,"restaurant_url":"che-hoa-tran-cao-van","brand_id":0,"is_open":true,"contract_type":1,"id":1522,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"merchant_time":12,"categories":["Street food"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"che-hoa-tran-cao-van","is_foody_delivery":true,"rush_hour":[],"limit_distance":20000,"image_name":"foody-mobile-t-2-jpg-898-635633098986296826.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g13/127978/bg/s180x180/foody-upload-api-foody-logo-food-a1e3a8c4-210929161622.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g13/127978/bg/s240x240/foody-upload-api-foody-logo-food-a1e3a8c4-210929161622.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g13/127978/bg/s320x320/foody-upload-api-foody-logo-food-a1e3a8c4-210929161622.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g13/127978/bg/s480x480/foody-upload-api-foody-logo-food-a1e3a8c4-210929161622.jpeg","height":480}],"confirm_methods":{},"address":"15 Trần Cao Vân, P. Đakao, Quận 1, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"23:59:00","open_time":"10:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Chè Hoa - Trần Cao Vân","promotion_groups":[],"url":"https://shopeefood.vn/ho-chi-minh/che-hoa-tran-cao-van","display_order":1487,"delivery_id":1522,"district_id":1,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["20k"]},"position":{"latitude":10.7840916,"is_verified":true,"longitude":106.6972943},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=168765"},"city_id":217,"phones":["0983839636"],"restaurant_id":168765,"restaurant_url":"xoi-chien-tran-huu-trang-72-tran-huu-trang","brand_id":7976,"is_open":true,"contract_type":1,"id":45905,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Bistro"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"xoi-chien-tran-huu-trang-72-tran-huu-trang","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Xôi Chiên - SG","photos":[],"brand_id":7976,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"xoi-chien-sg","price_range":{},"restaurant_count":3},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-9-200518160646.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g17/168765/bg/s180x180/beauty-upload-api-image-200803232216.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g17/168765/bg/s240x240/beauty-upload-api-image-200803232216.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g17/168765/bg/s320x320/beauty-upload-api-image-200803232216.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g17/168765/bg/s480x480/beauty-upload-api-image-200803232216.jpeg","height":480}],"confirm_methods":{},"address":"72 Trần Hữu Trang, P.10, Phú Nhuận, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"18:30:59","open_time":"13:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Xôi Chiên Trần Hữu Trang - 72 Trần Hữu Trang","promotion_groups":[{"group":4,"text":"Code 15k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403351,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/ho-chi-minh/xoi-chien-tran-huu-trang-72-tran-huu-trang","display_order":43530,"delivery_id":45905,"district_id":17,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["90k"]},"position":{"latitude":10.7942573723924,"is_verified":false,"longitude":106.672906639503},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=891412"},"city_id":217,"phones":["0909102498","0932017369"],"restaurant_id":891412,"restaurant_url":"che-ut-lyly","brand_id":6844,"is_open":true,"contract_type":1,"id":77746,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"merchant_time":12,"categories":["Street food"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"che-ut-lyly","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Chè Út Lyly","photos":[],"brand_id":6844,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"che-ut-lyly","price_range":{},"restaurant_count":2},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-8-190319110415.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g90/891412/bg/s180x180/beauty-upload-api-image-200803231506.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g90/891412/bg/s240x240/beauty-upload-api-image-200803231506.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g90/891412/bg/s320x320/beauty-upload-api-image-200803231506.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g90/891412/bg/s480x480/beauty-upload-api-image-200803231506.jpeg","height":480}],"confirm_methods":{},"address":"384 Nguyễn Trọng Tuyển, P. 2, Tân Bình, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:00:59","open_time":"07:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Chè Út Lyly - Nguyễn Trọng Tuyển","promotion_groups":[{"group":1,"text":"20% off menu","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16239436,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/che-ut-lyly","display_order":72893,"delivery_id":77746,"district_id":16,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["26k"]},"position":{"latitude":10.798682,"is_verified":false,"longitude":106.661349},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=888197"},"city_id":218,"phones":["0961273812","0368726287"],"restaurant_id":888197,"restaurant_url":"the-1989-tra-sua-muoi-bien-tan-mai","brand_id":6327,"is_open":true,"contract_type":1,"id":76986,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":15,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"the-1989-tra-sua-muoi-bien-tan-mai","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"The 1989 - Trà Sữa Muối Biển","photos":[],"brand_id":6327,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"the-1989-vietnam-milktea","price_range":{},"restaurant_count":4},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-2-190218164006.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g89/888197/bg/s180x180/image-d53bd46d-210718102205.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g89/888197/bg/s240x240/image-d53bd46d-210718102205.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g89/888197/bg/s320x320/image-d53bd46d-210718102205.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g89/888197/bg/s480x480/image-d53bd46d-210718102205.jpeg","height":480}],"confirm_methods":{},"address":"184 Tân Mai, Hoàng Mai, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:30:00","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"The 1989 - Trà Sữa Muối Biển - Tân Mai","promotion_groups":[{"group":4,"text":"Code 15k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403351,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/ha-noi/the-1989-tra-sua-muoi-bien-tan-mai","display_order":72154,"delivery_id":76986,"district_id":26,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["19k"]},"position":{"latitude":20.983587,"is_verified":false,"longitude":105.849893},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=697439"},"city_id":218,"phones":["0922222669"],"restaurant_id":697439,"restaurant_url":"tra-sua-sharetea-pho-nha-tho","brand_id":4400,"is_open":true,"contract_type":1,"id":18614,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Asian","Taiwan"],"service_type":1,"url_rewrite_name":"tra-sua-sharetea-pho-nha-tho","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Trà Sữa Sharetea - Hà Nội","photos":[],"brand_id":4400,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"tra-sua-sharetea-ha-noi","price_range":{},"restaurant_count":6},"limit_distance":15000,"image_name":"foody-mobile-xtpg05x4-jpg.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g70/697439/bg/s180x180/beauty-upload-api-image-200731095207.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g70/697439/bg/s240x240/beauty-upload-api-image-200731095207.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g70/697439/bg/s320x320/beauty-upload-api-image-200731095207.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g70/697439/bg/s480x480/beauty-upload-api-image-200731095207.jpeg","height":480}],"confirm_methods":{},"address":"104 Cầu Gỗ, Hoàn Kiếm, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:00:59","open_time":"10:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Trà Sữa Sharetea Nhà Thờ - Cầu Gỗ","promotion_groups":[{"group":1,"text":"Item discount 50%","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16224697,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ha-noi/tra-sua-sharetea-pho-nha-tho","display_order":17897,"delivery_id":18614,"district_id":25,"is_pickup":true,"price_range":{"resource_name":"avg_price_format","resource_args":["46k"]},"position":{"latitude":21.0322635619447,"is_verified":false,"longitude":105.851813175209},"shipping_methods":[1,3]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=692640"},"city_id":217,"phones":["02866769390"],"restaurant_id":692640,"restaurant_url":"cococake-banh-bo-thot-not-nuong-lo-banh","brand_id":4360,"is_open":true,"contract_type":1,"id":33257,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Shop Online"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"cococake-banh-bo-thot-not-nuong-lo-banh","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"COCOCake","photos":[],"brand_id":4360,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"cococake","price_range":{},"restaurant_count":3},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-21-190326132919.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g70/692640/prof/s180x180/foody-upload-api-foody-mobile-21-190326132919.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g70/692640/prof/s240x240/foody-upload-api-foody-mobile-21-190326132919.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g70/692640/prof/s320x320/foody-upload-api-foody-mobile-21-190326132919.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g70/692640/prof/s480x480/foody-upload-api-foody-mobile-21-190326132919.jpg","height":480}],"confirm_methods":{},"address":"279/22 Huỳnh Văn Bánh, P. 11, Phú Nhuận, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:25:59","open_time":"07:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Bánh Bò Thốt Nốt COCOCake - Lò Bánh Huỳnh Văn Bánh","promotion_groups":[{"group":1,"text":"10% off menu","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16302602,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 15k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403351,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/ho-chi-minh/cococake-banh-bo-thot-not-nuong-lo-banh","display_order":31555,"delivery_id":33257,"district_id":17,"is_pickup":true,"price_range":{"resource_name":"avg_price_format","resource_args":["77k"]},"position":{"latitude":10.7916758662771,"is_verified":true,"longitude":106.675621398492},"shipping_methods":[1,3]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=670439"},"city_id":217,"phones":["0914568685"],"restaurant_id":670439,"restaurant_url":"nuoc-ep-trai-cay-tuoi-pom-fresh-juice","brand_id":14232,"is_open":true,"contract_type":1,"id":11574,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Shop Online"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"nuoc-ep-trai-cay-tuoi-pom-fresh-juice","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"P.O.M Fresh Juice","photos":[],"brand_id":14232,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"pom-fresh-juice","price_range":{},"restaurant_count":2},"limit_distance":20000,"image_name":"file_restaurant_photo_9uvz_16190-7c14bc50-210422150443.jpeg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g68/670439/bg/s180x180/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g68/670439/bg/s240x240/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g68/670439/bg/s320x320/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g68/670439/bg/s480x480/file_restaurant_photo_rdet_16317-699336dc-210916081508.jpeg","height":480}],"confirm_methods":{},"address":"247A/40A Huỳnh Văn Bánh, P. 12, Phú Nhuận, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:00:59","open_time":"07:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Nước Ép Trái Cây Tươi - POM Fresh Juice","promotion_groups":[{"group":1,"text":"Item discount","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16346793,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":6,"text":"Freeship","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":9,"id":19444944,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/nuoc-ep-trai-cay-tuoi-pom-fresh-juice","display_order":11147,"delivery_id":11574,"district_id":17,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["43k"]},"position":{"latitude":10.790901,"is_verified":true,"longitude":106.676843},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=960599"},"city_id":221,"phones":["0944015012"],"restaurant_id":960599,"restaurant_url":"com-ga-le-trang-duong-30-thang-4","brand_id":4966,"is_open":true,"contract_type":1,"id":95615,"location_url":"can-tho","has_contract":true,"is_quality_merchant":true,"merchant_time":12,"categories":["Bistro"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"com-ga-le-trang-duong-30-thang-4","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Cơm Gà Lê Trang","photos":[],"brand_id":4966,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"com-ga-le-trang","price_range":{},"restaurant_count":9},"limit_distance":10000,"image_name":"image-9762b31b-211102091220.jpeg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g97/960599/bg/s180x180/foody-upload-api-foody-logo-30.jpg-200626155357.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g97/960599/bg/s240x240/foody-upload-api-foody-logo-30.jpg-200626155357.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g97/960599/bg/s320x320/foody-upload-api-foody-logo-30.jpg-200626155357.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g97/960599/bg/s480x480/foody-upload-api-foody-logo-30.jpg-200626155357.jpg","height":480}],"confirm_methods":{},"address":"590 Đường 30 Tháng 4, P. Hưng Lợi, Quận Ninh Kiều, Cần Thơ","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:00:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cơm Gà Lê Trang - Đường 30 Tháng 4","promotion_groups":[],"url":"https://shopeefood.vn/can-tho/com-ga-le-trang-duong-30-thang-4","display_order":0,"delivery_id":95615,"district_id":43,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["22k"]},"position":{"latitude":10.0156669821123,"is_verified":false,"longitude":105.76343793422},"shipping_methods":[1]}]},"result":"success"}
  ''';

  final String _json3 = r'''
  {"reply":{"delivery_infos":[{"total_order":0,"rating":{"total_review":1000,"avg":4.7,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=894234"},"city_id":218,"phones":["0948688692"],"restaurant_id":894234,"restaurant_url":"ich-hoa-duong-taiwan-tea","brand_id":7451,"is_open":true,"contract_type":1,"id":78659,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Asian","Taiwan"],"service_type":1,"url_rewrite_name":"ich-hoa-duong-taiwan-tea","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Ích Hòa Đường - Taiwan Tea","photos":[],"brand_id":7451,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"ich-hoa-duong-taiwan-tea","price_range":{},"restaurant_count":4},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-avar-191009093623.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g90/894234/bg/s180x180/beauty-upload-api-image-200803232847.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g90/894234/bg/s240x240/beauty-upload-api-image-200803232847.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g90/894234/bg/s320x320/beauty-upload-api-image-200803232847.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g90/894234/bg/s480x480/beauty-upload-api-image-200803232847.jpeg","height":480}],"confirm_methods":{},"address":"24 Ô Chợ Dừa, Đống Đa, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:30:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Ích Hòa Đường - Taiwan Tea - Ô Chợ Dừa","promotion_groups":[{"group":1,"text":"20% off menu","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16213423,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":6,"text":"Freeship","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":9,"id":19444944,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ha-noi/ich-hoa-duong-taiwan-tea","display_order":73729,"delivery_id":78659,"district_id":22,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["45k"]},"position":{"latitude":21.0192522354237,"is_verified":false,"longitude":105.828180212801},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=755411"},"city_id":217,"phones":["0907579255"],"restaurant_id":755411,"restaurant_url":"sunday-basic-thich-quang-duc","brand_id":6226,"is_open":true,"contract_type":1,"id":46519,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":16,"categories":["Coffee/Dessert"],"cuisines":["Korean","Asian"],"service_type":1,"url_rewrite_name":"sunday-basic-thich-quang-duc","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Sunday Basic","photos":[],"brand_id":6226,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"sunday-basic","price_range":{},"restaurant_count":14},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-co-3c0a9ff6-210527103214.jpeg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g76/755411/bg/s180x180/foody-upload-api-foody-logo-ava--9ae8e81a-210527103214.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g76/755411/bg/s240x240/foody-upload-api-foody-logo-ava--9ae8e81a-210527103214.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g76/755411/bg/s320x320/foody-upload-api-foody-logo-ava--9ae8e81a-210527103214.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g76/755411/bg/s480x480/foody-upload-api-foody-logo-ava--9ae8e81a-210527103214.jpeg","height":480}],"confirm_methods":{},"address":"30A Thích Quảng Đức, P. 5, Phú Nhuận, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:50:59","open_time":"07:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Sunday Basic - Thích Quảng Đức","promotion_groups":[{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/sunday-basic-thich-quang-duc","display_order":44132,"delivery_id":46519,"district_id":17,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["28k"]},"position":{"latitude":10.8044011164592,"is_verified":false,"longitude":106.683647205196},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=783811"},"city_id":218,"phones":["0898259988"],"restaurant_id":783811,"restaurant_url":"tra-sua-pozaa-tea-yen-xa","brand_id":6949,"is_open":true,"contract_type":1,"id":63877,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Asian","Taiwan"],"service_type":1,"url_rewrite_name":"tra-sua-pozaa-tea-yen-xa","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Trà Sữa Pozaa Tea","photos":[],"brand_id":6949,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"tra-sua-pozaa-tea","price_range":{},"restaurant_count":56},"limit_distance":15000,"image_name":"image-a8b25f18-200929151630.jpeg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g79/783811/bg/s180x180/image-bab6973a-220214182218.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g79/783811/bg/s240x240/image-bab6973a-220214182218.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g79/783811/bg/s320x320/image-bab6973a-220214182218.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g79/783811/bg/s480x480/image-bab6973a-220214182218.jpeg","height":480}],"confirm_methods":{},"address":"79 Yên Xá, Thanh Trì, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:55:59","open_time":"08:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Trà Sữa Pozaa Tea - Yên Xá","promotion_groups":[{"group":1,"text":"Milk tea 1Đ","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16293816,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ha-noi/tra-sua-pozaa-tea-yen-xa","display_order":60056,"delivery_id":63877,"district_id":688,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["43k"]},"position":{"latitude":20.968203,"is_verified":false,"longitude":105.796822},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=287292"},"city_id":219,"phones":["0987999306"],"restaurant_id":287292,"restaurant_url":"banh-trang-tay-ninh-quynh-anh","brand_id":0,"is_open":true,"contract_type":1,"id":8643,"location_url":"da-nang","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Street food"],"cuisines":["South"],"service_type":1,"url_rewrite_name":"banh-trang-tay-ninh-quynh-anh","is_foody_delivery":true,"rush_hour":[],"limit_distance":15000,"image_name":"foody-mobile-t1-jpg-573-636131646669857316.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g29/287292/bg/s180x180/foody-upload-api-foody-logo-banh-trang-tay-ninh-.jpg-200629144807.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g29/287292/bg/s240x240/foody-upload-api-foody-logo-banh-trang-tay-ninh-.jpg-200629144807.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g29/287292/bg/s320x320/foody-upload-api-foody-logo-banh-trang-tay-ninh-.jpg-200629144807.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g29/287292/bg/s480x480/foody-upload-api-foody-logo-banh-trang-tay-ninh-.jpg-200629144807.jpg","height":480}],"confirm_methods":{},"address":"65 Thái Thị Bôi, Quận Thanh Khê, Đà Nẵng","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:59:59","open_time":"08:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Bánh Tráng Tây Ninh Quỳnh Anh","promotion_groups":[{"group":1,"text":"Item discount","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16265983,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 99k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399639,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/da-nang/banh-trang-tay-ninh-quynh-anh","display_order":8298,"delivery_id":8643,"district_id":35,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["31k"]},"position":{"latitude":16.0683552428698,"is_verified":true,"longitude":108.200248628855},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=138802"},"city_id":219,"phones":["0901951069"],"restaurant_id":138802,"restaurant_url":"milan-milktea","brand_id":8981,"is_open":true,"contract_type":1,"id":11831,"location_url":"da-nang","has_contract":true,"is_quality_merchant":true,"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"milan-milktea","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Milan Milktea","photos":[],"brand_id":8981,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"milan-milktea","price_range":{},"restaurant_count":2},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-image_2019_06_12t08_-190612151249.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g14/138802/bg/s180x180/beauty-upload-api-image-200803225549.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g14/138802/bg/s240x240/beauty-upload-api-image-200803225549.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g14/138802/bg/s320x320/beauty-upload-api-image-200803225549.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g14/138802/bg/s480x480/beauty-upload-api-image-200803225549.jpeg","height":480}],"confirm_methods":{},"address":"22 - 26 Lê Thánh Tôn, Quận Hải Châu, Đà Nẵng","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:00:00","open_time":"07:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"MiLan Milktea","promotion_groups":[],"url":"https://shopeefood.vn/da-nang/milan-milktea","display_order":11393,"delivery_id":11831,"district_id":31,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["27k"]},"position":{"latitude":16.073811,"is_verified":true,"longitude":108.219931},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=72587"},"city_id":217,"phones":["0986019710"],"restaurant_id":72587,"restaurant_url":"kubin-tra-sua-thach-pho-mai","brand_id":10814,"is_open":true,"contract_type":1,"id":14597,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"kubin-tra-sua-thach-pho-mai","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"KuBin - Trà Sữa Thạch Phô Mai","photos":[],"brand_id":10814,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"kubin-tra-sua-thach-pho-mai","price_range":{},"restaurant_count":2},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-26-191219153556.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g8/72587/bg/s180x180/foody-upload-api-foody-logo-23.jpg-200825154043.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g8/72587/bg/s240x240/foody-upload-api-foody-logo-23.jpg-200825154043.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g8/72587/bg/s320x320/foody-upload-api-foody-logo-23.jpg-200825154043.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g8/72587/bg/s480x480/foody-upload-api-foody-logo-23.jpg-200825154043.jpg","height":480}],"confirm_methods":{},"address":"35 Nguyễn Phúc Nguyên , P. 10, Quận 3, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:50:59","open_time":"09:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"KuBin - Trà Sữa Thạch Phô Mai - Nguyễn Phúc Nguyên","promotion_groups":[{"group":1,"text":"Item discount","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16348899,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 40k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399589,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":6,"text":"Freeship","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":9,"id":19444944,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/kubin-tra-sua-thach-pho-mai","display_order":14051,"delivery_id":14597,"district_id":5,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["18k"]},"position":{"latitude":10.778764,"is_verified":true,"longitude":106.681157},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.7,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=645109"},"city_id":217,"phones":["0931099628"],"restaurant_id":645109,"restaurant_url":"sinh-to-tao-dan-vo-van-tan","brand_id":3553,"is_open":true,"contract_type":1,"id":11638,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":25,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"sinh-to-tao-dan-vo-van-tan","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Sinh Tố Tao Đàn","photos":[],"brand_id":3553,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"sinh-to-tao-dan","price_range":{},"restaurant_count":6},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-4-191223111135.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g65/645109/bg/s180x180/foody-upload-api-foody-logo-fgd.jpg-210118140307.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g65/645109/bg/s240x240/foody-upload-api-foody-logo-fgd.jpg-210118140307.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g65/645109/bg/s320x320/foody-upload-api-foody-logo-fgd.jpg-210118140307.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g65/645109/bg/s480x480/foody-upload-api-foody-logo-fgd.jpg-210118140307.jpg","height":480}],"confirm_methods":{},"address":"257 Võ Văn Tần, P. 5, Quận 3, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:30:59","open_time":"07:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Sinh Tố Tao Đàn - Võ Văn Tần","promotion_groups":[{"group":1,"text":"Item discount","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16185874,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":6,"text":"Freeship","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":9,"id":19444944,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/sinh-to-tao-dan-vo-van-tan","display_order":11210,"delivery_id":11638,"district_id":5,"is_pickup":true,"price_range":{"resource_name":"avg_price_format","resource_args":["44k"]},"position":{"latitude":10.772513620475,"is_verified":true,"longitude":106.686767921595},"shipping_methods":[1,3]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=851614"},"city_id":217,"phones":["0859841131"],"restaurant_id":851614,"restaurant_url":"con-soi-sua-tuoi-tran-chau-duong-den","brand_id":4925,"is_open":true,"contract_type":1,"id":66318,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"con-soi-sua-tuoi-tran-chau-duong-den","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Con Sói - Sữa Tươi Trân Châu Đường Đen","photos":[],"brand_id":4925,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"con-soi-sua-tuoi-tran-chau-duong-den","price_range":{},"restaurant_count":9},"limit_distance":20000,"image_name":"file_restaurant_photo_9aec_16045-f60042a3-201105030535.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g86/851614/bg/s180x180/file_restaurant_photo_mqk4_16314-f9d36d27-210912120804.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g86/851614/bg/s240x240/file_restaurant_photo_mqk4_16314-f9d36d27-210912120804.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g86/851614/bg/s320x320/file_restaurant_photo_mqk4_16314-f9d36d27-210912120804.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g86/851614/bg/s480x480/file_restaurant_photo_mqk4_16314-f9d36d27-210912120804.jpg","height":480}],"confirm_methods":{},"address":"172 Huỳnh Văn Bánh, P. 12, Phú Nhuận, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:00:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Con Sói - Sữa Tươi Trân Châu Đường Đen - Huỳnh Văn Bánh","promotion_groups":[{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/con-soi-sua-tuoi-tran-chau-duong-den","display_order":62363,"delivery_id":66318,"district_id":17,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["33k"]},"position":{"latitude":10.792184,"is_verified":false,"longitude":106.677792},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=650447"},"city_id":218,"phones":["0396039815"],"restaurant_id":650447,"restaurant_url":"tra-sua-tocotoco-tran-dai-nghia","brand_id":3296,"is_open":true,"contract_type":1,"id":30592,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":false,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Asian","Taiwan"],"service_type":1,"url_rewrite_name":"tra-sua-tocotoco-tran-dai-nghia","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Trà Sữa Tocotoco - Hà Nội CT","photos":[],"brand_id":3296,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"tra-sua-tocotoco-ha-noi-ct","price_range":{},"restaurant_count":51},"limit_distance":15000,"image_name":"image-a2ece7fc-211125163845.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g66/650447/bg/s180x180/image-265521dd-210113170149.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g66/650447/bg/s240x240/image-265521dd-210113170149.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g66/650447/bg/s320x320/image-265521dd-210113170149.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g66/650447/bg/s480x480/image-265521dd-210113170149.jpeg","height":480}],"confirm_methods":{},"address":"66 Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:45:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Trà Sữa Tocotoco - Trần Đại Nghĩa","promotion_groups":[{"group":1,"text":"Item discount","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16332077,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ha-noi/tra-sua-tocotoco-tran-dai-nghia","display_order":29078,"delivery_id":30592,"district_id":24,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["44k"]},"position":{"latitude":21.0010489331708,"is_verified":false,"longitude":105.845106600041},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=970425"},"city_id":217,"phones":["02873025079"],"restaurant_id":970425,"restaurant_url":"rau-ma-mix-ho-tung-mau","brand_id":6552,"is_open":true,"contract_type":1,"id":97828,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"rau-ma-mix-ho-tung-mau","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Rau Má Mix","photos":[],"brand_id":6552,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"rau-ma-mix","price_range":{},"restaurant_count":43},"limit_distance":20000,"image_name":"image-1936ddf6-210316110654.jpeg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g98/970425/bg/s180x180/beauty-upload-api-image-200626092500.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g98/970425/bg/s240x240/beauty-upload-api-image-200626092500.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g98/970425/bg/s320x320/beauty-upload-api-image-200626092500.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g98/970425/bg/s480x480/beauty-upload-api-image-200626092500.jpeg","height":480}],"confirm_methods":{},"address":"54 Hồ Tùng Mậu, P. Bến Nghé, Quận 1, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:15:59","open_time":"08:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Rau Má Mix - Hồ Tùng Mậu","promotion_groups":[{"group":1,"text":"Item discount","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16343951,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/rau-ma-mix-ho-tung-mau","display_order":0,"delivery_id":97828,"district_id":1,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["36k"]},"position":{"latitude":10.772167,"is_verified":false,"longitude":106.703925},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=950433"},"city_id":217,"phones":["0862593968","0838144990"],"restaurant_id":950433,"restaurant_url":"co-thanh-che-sau-kem-bo-nguyen-van-thuong","brand_id":10483,"is_open":true,"contract_type":1,"id":93389,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"co-thanh-che-sau-kem-bo-nguyen-van-thuong","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Cô Thanh - Chè Sầu Kem Bơ SG","photos":[],"brand_id":10483,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"co-thanh-che-sau-kem-bo-sg","price_range":{},"restaurant_count":2},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-kl-190829160139.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g96/950433/bg/s180x180/foody-upload-api-foody-logo-co-thanh-che-sau-kem.jpg-200629152727.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g96/950433/bg/s240x240/foody-upload-api-foody-logo-co-thanh-che-sau-kem.jpg-200629152727.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g96/950433/bg/s320x320/foody-upload-api-foody-logo-co-thanh-che-sau-kem.jpg-200629152727.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g96/950433/bg/s480x480/foody-upload-api-foody-logo-co-thanh-che-sau-kem.jpg-200629152727.jpg","height":480}],"confirm_methods":{},"address":"152/2A Nguyễn Văn Thương, P. 25, Bình Thạnh, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:00:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cô Thanh - Chè Sầu Kem Bơ - Nguyễn Văn Thương","promotion_groups":[{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/co-thanh-che-sau-kem-bo-nguyen-van-thuong","display_order":0,"delivery_id":93389,"district_id":15,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["38k"]},"position":{"latitude":10.802895,"is_verified":false,"longitude":106.720346},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=986863"},"city_id":218,"phones":["0963748889","0869927866"],"restaurant_id":986863,"restaurant_url":"yihetang-tea-coffee-tran-phu","brand_id":8709,"is_open":true,"contract_type":1,"id":102229,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Asian"],"service_type":1,"url_rewrite_name":"yihetang-tea-coffee-tran-phu","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"YiHeTang Express","photos":[],"brand_id":8709,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"yihetang-express","price_range":{},"restaurant_count":7},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-foody-upload-api-foo-191204154528.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g99/986863/bg/s180x180/foody-upload-api-foody-logo-yihetang-tea.jpg-200622164530.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g99/986863/bg/s240x240/foody-upload-api-foody-logo-yihetang-tea.jpg-200622164530.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g99/986863/bg/s320x320/foody-upload-api-foody-logo-yihetang-tea.jpg-200622164530.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g99/986863/bg/s480x480/foody-upload-api-foody-logo-yihetang-tea.jpg-200622164530.jpg","height":480}],"confirm_methods":{},"address":"64 Trần Phú, Hà Đông, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:50:59","open_time":"09:40:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"YiHeTang Tea & Coffee - Trần Phú","promotion_groups":[{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ha-noi/yihetang-tea-coffee-tran-phu","display_order":0,"delivery_id":102229,"district_id":23,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["46k"]},"position":{"latitude":20.981108,"is_verified":false,"longitude":105.788697},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=645347"},"city_id":217,"phones":["0901639140"],"restaurant_id":645347,"restaurant_url":"green-young-rau-cu-qua-tron-online","brand_id":12501,"is_open":true,"contract_type":1,"id":9687,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":false,"merchant_time":12,"categories":["Shop Online"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"green-young-rau-cu-qua-tron-online","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Green & Young - Healthy Food Store","photos":[],"brand_id":12501,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"green-young-healthy-food-store","price_range":{},"restaurant_count":2},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-3-jpg-181130085534.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g65/645347/bg/s180x180/foody-upload-api-foody-logo-green-young-healthy-.jpg-200629155556.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g65/645347/bg/s240x240/foody-upload-api-foody-logo-green-young-healthy-.jpg-200629155556.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g65/645347/bg/s320x320/foody-upload-api-foody-logo-green-young-healthy-.jpg-200629155556.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g65/645347/bg/s480x480/foody-upload-api-foody-logo-green-young-healthy-.jpg-200629155556.jpg","height":480}],"confirm_methods":{},"address":"49 Trần Hữu Trang, P. 11, Phú Nhuận, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:30:59","open_time":"07:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Green & Young - Healthy Food Store","promotion_groups":[{"group":4,"text":"Code 15k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19407435,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/green-young-rau-cu-qua-tron-online","display_order":9321,"delivery_id":9687,"district_id":17,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["61k"]},"position":{"latitude":10.793911,"is_verified":true,"longitude":106.6739039},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=763168"},"city_id":248,"phones":["0966480859"],"restaurant_id":763168,"restaurant_url":"tra-sua-sweet-cup","brand_id":0,"is_open":true,"contract_type":1,"id":51673,"location_url":"khanh-hoa","has_contract":true,"is_quality_merchant":true,"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Central","Nha Trang"],"service_type":1,"url_rewrite_name":"tra-sua-sweet-cup","is_foody_delivery":true,"rush_hour":[],"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-29244293_16222807112-180725100140.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g77/763168/prof/s180x180/foody-upload-api-foody-mobile-29244293_16222807112-180725100140.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g77/763168/prof/s240x240/foody-upload-api-foody-mobile-29244293_16222807112-180725100140.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g77/763168/prof/s320x320/foody-upload-api-foody-mobile-29244293_16222807112-180725100140.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g77/763168/prof/s480x480/foody-upload-api-foody-mobile-29244293_16222807112-180725100140.jpg","height":480}],"confirm_methods":{},"address":"12 Đường 14, Khu Đô Thị Lê Hồng Phong 2, Tp. Nha Trang, Khánh Hoà","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:00:59","open_time":"10:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Trà Sữa Sweet Cup - Lê Hồng Phong","promotion_groups":[],"url":"https://shopeefood.vn/khanh-hoa/tra-sua-sweet-cup","display_order":49004,"delivery_id":51673,"district_id":386,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["31k"]},"position":{"latitude":12.2455779081118,"is_verified":false,"longitude":109.1769740358},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=748743"},"city_id":217,"phones":["0934047586"],"restaurant_id":748743,"restaurant_url":"co-nam-go-vap-banh-trang-tron-cuon","brand_id":0,"is_open":true,"contract_type":1,"id":41634,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":5,"categories":["Street food"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"co-nam-go-vap-banh-trang-tron-cuon","is_foody_delivery":true,"rush_hour":[],"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-80-200318100717.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g75/748743/bg/s180x180/foody-upload-api-foody-logo-banh-06c2cdb3-211224200403.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g75/748743/bg/s240x240/foody-upload-api-foody-logo-banh-06c2cdb3-211224200403.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g75/748743/bg/s320x320/foody-upload-api-foody-logo-banh-06c2cdb3-211224200403.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g75/748743/bg/s480x480/foody-upload-api-foody-logo-banh-06c2cdb3-211224200403.jpeg","height":480}],"confirm_methods":{},"address":"45 Lê Thị Hồng, P. 7, Gò Vấp, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:00:59","open_time":"07:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cô Năm Gò Vấp - Bánh Tráng Trộn & Cuốn","promotion_groups":[{"group":4,"text":"Code 15k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403351,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/ho-chi-minh/co-nam-go-vap-banh-trang-tron-cuon","display_order":39519,"delivery_id":41634,"district_id":2,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["27k"]},"position":{"latitude":10.8353352317852,"is_verified":false,"longitude":106.678817094449},"shipping_methods":[1]}]},"result":"success"}
  ''';

  final String _json4 = r'''
  {"reply":{"delivery_infos":[{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=628128"},"city_id":218,"phones":["0354164127"],"restaurant_id":628128,"restaurant_url":"banh-ga-than-thanh-158-hong-mai","brand_id":0,"is_open":true,"contract_type":1,"id":15400,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Street food"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"banh-ga-than-thanh-158-hong-mai","is_foody_delivery":true,"rush_hour":[],"limit_distance":15000,"image_name":"file_restaurant_photo_fzv9_16033-2859ff7e-201022134339.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g63/628128/bg/s180x180/file_restaurant_photo_ooi9_16024-db058be0-201012104051.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g63/628128/bg/s240x240/file_restaurant_photo_ooi9_16024-db058be0-201012104051.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g63/628128/bg/s320x320/file_restaurant_photo_ooi9_16024-db058be0-201012104051.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g63/628128/bg/s480x480/file_restaurant_photo_ooi9_16024-db058be0-201012104051.jpg","height":480}],"confirm_methods":{},"address":"11 Ngõ 158 Hồng Mai, Hai Bà Trưng, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:00:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Bánh Gà Thần Thánh - 158 Hồng Mai","promotion_groups":[{"group":1,"text":"Item discount","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":15456002,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 15k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403351,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/ha-noi/banh-ga-than-thanh-158-hong-mai","display_order":14821,"delivery_id":15400,"district_id":24,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["35k"]},"position":{"latitude":20.998418,"is_verified":true,"longitude":105.852976},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=144507"},"city_id":219,"phones":["0906553563"],"restaurant_id":144507,"restaurant_url":"tra-sua-money-nguyen-du","brand_id":920,"is_open":true,"contract_type":1,"id":4955,"location_url":"da-nang","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"tra-sua-money-nguyen-du","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Trà Sữa Money ","photos":[],"brand_id":920,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"tra-sua-money","price_range":{},"restaurant_count":2},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-seatalk_img_15868599-200414173004.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g15/144507/bg/s180x180/beauty-upload-api-image-200803225549.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g15/144507/bg/s240x240/beauty-upload-api-image-200803225549.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g15/144507/bg/s320x320/beauty-upload-api-image-200803225549.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g15/144507/bg/s480x480/beauty-upload-api-image-200803225549.jpeg","height":480}],"confirm_methods":{},"address":"19 Nguyễn Du, P. Thạch Thang, Quận Hải Châu, Đà Nẵng","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:00:00","open_time":"08:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Trà Sữa Money - Nguyễn Du","promotion_groups":[{"group":4,"text":"Code 10k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403370,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/da-nang/tra-sua-money-nguyen-du","display_order":4702,"delivery_id":4955,"district_id":31,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["27k"]},"position":{"latitude":16.079119,"is_verified":true,"longitude":108.223495},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=277130"},"city_id":219,"phones":["0905443882"],"restaurant_id":277130,"restaurant_url":"com-ga-nam-cho-moi-hoang-dieu","brand_id":12851,"is_open":true,"contract_type":1,"id":45516,"location_url":"da-nang","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Bistro","Office lunch delivery"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"com-ga-nam-cho-moi-hoang-dieu","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Cơm Gà Nam Chợ Mới","photos":[],"brand_id":12851,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"com-ga-nam-cho-moi","price_range":{},"restaurant_count":2},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-5-201006112619.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g28/277130/bg/s180x180/foody-upload-api-foody-logo-6.jpg-201006112618.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g28/277130/bg/s240x240/foody-upload-api-foody-logo-6.jpg-201006112618.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g28/277130/bg/s320x320/foody-upload-api-foody-logo-6.jpg-201006112618.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g28/277130/bg/s480x480/foody-upload-api-foody-logo-6.jpg-201006112618.jpg","height":480}],"confirm_methods":{},"address":"589 Hoàng Diệu, P. Hòa Thuận Đông, Quận Hải Châu, Đà Nẵng","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:30:59","open_time":"06:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cơm Gà Nam Chợ Mới - Hoàng Diệu","promotion_groups":[{"group":4,"text":"Code 10k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403370,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/da-nang/com-ga-nam-cho-moi-hoang-dieu","display_order":43161,"delivery_id":45516,"district_id":31,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["34k"]},"position":{"latitude":16.0494774228095,"is_verified":false,"longitude":108.218313438787},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=11349"},"city_id":217,"phones":["02839540535"],"restaurant_id":11349,"restaurant_url":"com-ga-xoi-mo-142-ba-dinh","brand_id":11204,"is_open":true,"contract_type":1,"id":9003,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"merchant_time":15,"categories":["Bistro"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"com-ga-xoi-mo-142-ba-dinh","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Cơm Gà Xối Mỡ 142","photos":[],"brand_id":11204,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"com-ga-xoi-mo-142","price_range":{},"restaurant_count":4},"limit_distance":15000,"image_name":"image-3111762a-200910114155.jpeg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g2/11349/bg/s180x180/file_restaurant_photo_4oqi_16015-ef180b81-201001202415.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g2/11349/bg/s240x240/file_restaurant_photo_4oqi_16015-ef180b81-201001202415.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g2/11349/bg/s320x320/file_restaurant_photo_4oqi_16015-ef180b81-201001202415.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g2/11349/bg/s480x480/file_restaurant_photo_4oqi_16015-ef180b81-201001202415.jpeg","height":480}],"confirm_methods":{},"address":"142 Ba Đình, P. 10, Quận 8, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:00:59","open_time":"09:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cơm Gà Xối Mỡ 142 - Ba Đình","promotion_groups":[],"url":"https://shopeefood.vn/ho-chi-minh/com-ga-xoi-mo-142-ba-dinh","display_order":8648,"delivery_id":9003,"district_id":10,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["37k"]},"position":{"latitude":10.7482691837867,"is_verified":true,"longitude":106.669000574218},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=859866"},"city_id":217,"phones":["0936110984","0942838444"],"restaurant_id":859866,"restaurant_url":"quan-an-com-tam-31-dong-den","brand_id":5815,"is_open":true,"contract_type":1,"id":67939,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":10,"categories":["Bistro"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"quan-an-com-tam-31-dong-den","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Cơm Tấm 31","photos":[],"brand_id":5815,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"com-tam-31","price_range":{},"restaurant_count":2},"limit_distance":15000,"image_name":"image-7be4ea8d-200908105702.jpeg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g86/859866/bg/s180x180/beauty-upload-api-image-200803231255.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g86/859866/bg/s240x240/beauty-upload-api-image-200803231255.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g86/859866/bg/s320x320/beauty-upload-api-image-200803231255.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g86/859866/bg/s480x480/beauty-upload-api-image-200803231255.jpeg","height":480}],"confirm_methods":{},"address":"31 Đồng Đen, P. 12, Tân Bình, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:00:59","open_time":"07:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cơm Tấm 31 - Đồng Đen","promotion_groups":[{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/quan-an-com-tam-31-dong-den","display_order":63898,"delivery_id":67939,"district_id":16,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["33k"]},"position":{"latitude":10.794954,"is_verified":false,"longitude":106.645291},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.7,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=732450"},"city_id":218,"phones":["0972489933"],"restaurant_id":732450,"restaurant_url":"com-tho-chua-lang","brand_id":4799,"is_open":true,"contract_type":1,"id":34932,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Bistro"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"com-tho-chua-lang","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"Cơm Thố Anh Nguyễn","photos":[],"brand_id":4799,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"com-tho-anh-nguyen","price_range":{},"restaurant_count":15},"limit_distance":15000,"image_name":"foody-upload-api-foody-mobile-com-tho-anh-nguyen-190624134859.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g74/732450/bg/s180x180/file_restaurant_photo_8rur_16091-ea0ec995-201228154528.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g74/732450/bg/s240x240/file_restaurant_photo_8rur_16091-ea0ec995-201228154528.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g74/732450/bg/s320x320/file_restaurant_photo_8rur_16091-ea0ec995-201228154528.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g74/732450/bg/s480x480/file_restaurant_photo_8rur_16091-ea0ec995-201228154528.jpeg","height":480}],"confirm_methods":{},"address":"17 Chùa Láng, P. Láng Thượng, Đống Đa, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:30:59","open_time":"10:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cơm Thố Anh Nguyễn - Chùa Láng","promotion_groups":[{"group":1,"text":"Up to 200k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":4,"id":19495587,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ha-noi/com-tho-chua-lang","display_order":33136,"delivery_id":34932,"district_id":22,"is_pickup":true,"price_range":{"resource_name":"avg_price_format","resource_args":["42k"]},"position":{"latitude":21.022923,"is_verified":false,"longitude":105.808968},"shipping_methods":[1,3]},{"total_order":0,"rating":{"total_review":1000,"avg":4.9,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=729272"},"city_id":217,"phones":["0385984324"],"restaurant_id":729272,"restaurant_url":"banh-trang-cham-chung-cu-phan-xich-long","brand_id":0,"is_open":true,"contract_type":1,"id":32448,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Street food"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"banh-trang-cham-chung-cu-phan-xich-long","is_foody_delivery":true,"rush_hour":[],"limit_distance":15000,"image_name":"file_restaurant_photo_0ni4_16405-4f36591a-211227150827.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g73/729272/bg/s180x180/foody-upload-api-foody-logo-banh-trang-cham-co-g.jpg-200625170659.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g73/729272/bg/s240x240/foody-upload-api-foody-logo-banh-trang-cham-co-g.jpg-200625170659.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g73/729272/bg/s320x320/foody-upload-api-foody-logo-banh-trang-cham-co-g.jpg-200625170659.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g73/729272/bg/s480x480/foody-upload-api-foody-logo-banh-trang-cham-co-g.jpg-200625170659.jpg","height":480}],"confirm_methods":{},"address":"Lô D001 Chung Cư A4 Phan xích Long, P. 7, Phú Nhuận, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"21:00:59","open_time":"10:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Bánh Tráng Chấm Cô Gánh - Chung Cư A4 Phan Xích Long","promotion_groups":[{"group":4,"text":"Code 15k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403351,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"}],"url":"https://shopeefood.vn/ho-chi-minh/banh-trang-cham-chung-cu-phan-xich-long","display_order":30802,"delivery_id":32448,"district_id":17,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["26k"]},"position":{"latitude":10.7995447018292,"is_verified":false,"longitude":106.687002602152},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=743484"},"city_id":217,"phones":["0915770670"],"restaurant_id":743484,"restaurant_url":"fox-tea-tra-sua-an-vat-duong-so-8","brand_id":12840,"is_open":true,"contract_type":1,"id":40032,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":false,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"fox-tea-tra-sua-an-vat-duong-so-8","is_foody_delivery":true,"rush_hour":[],"brand":{"rush_hour":[],"promotion_title":"","name":"FOX Tea - Trà Sữa & Ăn Vặt","photos":[],"brand_id":12840,"operating":{"status":1,"color":"#239839","close_time":"23:59:59","open_time":"00:00:01","text":{"resource_name":"delivery_restaurant_opening"}},"position":{},"min_order_value":{},"url_rewrite_name":"fox-tea-tra-sua-an-vat","price_range":{},"restaurant_count":5},"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-51-jpg-180723171221.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g75/743484/bg/s180x180/beauty-upload-api-image-200803231044.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g75/743484/bg/s240x240/beauty-upload-api-image-200803231044.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g75/743484/bg/s320x320/beauty-upload-api-image-200803231044.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g75/743484/bg/s480x480/beauty-upload-api-image-200803231044.jpeg","height":480}],"confirm_methods":{},"address":"202 Đường Số 8, P. 11, Gò Vấp, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"23:30:59","open_time":"08:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"FOX Tea - Trà Sữa & Ăn Vặt -  Đường Số 8","promotion_groups":[{"group":1,"text":"Flash Sale","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16357669,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/fox-tea-tra-sua-an-vat-duong-so-8","display_order":37987,"delivery_id":40032,"district_id":2,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["32k"]},"position":{"latitude":10.843940896228,"is_verified":false,"longitude":106.661984324455},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.8,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=126552"},"city_id":217,"phones":["0989654254"],"restaurant_id":126552,"restaurant_url":"com-tam-cay-khe-3-nguyen-van-khoi","brand_id":0,"is_open":true,"contract_type":1,"id":14131,"location_url":"ho-chi-minh","has_contract":true,"is_quality_merchant":true,"label":{"photos":[{"width":180,"value":"https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png","height":0},{"width":240,"value":"https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png","height":0},{"width":320,"value":"https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png","height":0},{"width":480,"value":"https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png","height":0},{"width":640,"value":"https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png","height":640}],"label_position":1},"merchant_time":12,"categories":["Bistro"],"cuisines":["Vietnam"],"service_type":1,"url_rewrite_name":"com-tam-cay-khe-3-nguyen-van-khoi","is_foody_delivery":true,"rush_hour":[],"limit_distance":20000,"image_name":"foody-upload-api-foody-mobile-8af8cb23-df69-4645-b-191022091826.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g13/126552/bg/s180x180/foody-upload-api-foody-logo-foody-upload-api-foo.png-201222151521.jpg","height":180},{"width":240,"value":"https://images.foody.vn/res/g13/126552/bg/s240x240/foody-upload-api-foody-logo-foody-upload-api-foo.png-201222151521.jpg","height":240},{"width":320,"value":"https://images.foody.vn/res/g13/126552/bg/s320x320/foody-upload-api-foody-logo-foody-upload-api-foo.png-201222151521.jpg","height":320},{"width":480,"value":"https://images.foody.vn/res/g13/126552/bg/s480x480/foody-upload-api-foody-logo-foody-upload-api-foo.png-201222151521.jpg","height":480}],"confirm_methods":{},"address":"126 Nguyễn Văn Khối, P. 9, Gò Vấp, TP. HCM","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"20:50:59","open_time":"07:00:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Cơm Tấm Cây Khế 3 - Nguyễn Văn Khối","promotion_groups":[{"group":4,"text":"Code 70k off","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":1,"id":19399632,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ho-chi-minh/com-tam-cay-khe-3-nguyen-van-khoi","display_order":13596,"delivery_id":14131,"district_id":2,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["34k"]},"position":{"latitude":10.8426835580551,"is_verified":true,"longitude":106.655891299408},"shipping_methods":[1]},{"total_order":0,"rating":{"total_review":1000,"avg":4.7,"display_total_review":"999+","app_link":"foody://foody.vn?action=reviewlist&id=702021"},"city_id":218,"phones":["0984190591"],"restaurant_id":702021,"restaurant_url":"tra-sua-tocotoco-thuong-dinh","brand_id":0,"is_open":true,"contract_type":1,"id":19361,"location_url":"ha-noi","has_contract":true,"is_quality_merchant":true,"merchant_time":12,"categories":["Coffee/Dessert"],"cuisines":["Asian","Taiwan"],"service_type":1,"url_rewrite_name":"tra-sua-tocotoco-thuong-dinh","is_foody_delivery":true,"rush_hour":[],"limit_distance":15000,"image_name":"foody-mobile-23376408_54246046275.jpg","restaurant_status":2,"campaigns":[],"photos":[{"width":180,"value":"https://images.foody.vn/res/g71/702021/bg/s180x180/beauty-upload-api-image-200803233213.jpeg","height":180},{"width":240,"value":"https://images.foody.vn/res/g71/702021/bg/s240x240/beauty-upload-api-image-200803233213.jpeg","height":240},{"width":320,"value":"https://images.foody.vn/res/g71/702021/bg/s320x320/beauty-upload-api-image-200803233213.jpeg","height":320},{"width":480,"value":"https://images.foody.vn/res/g71/702021/bg/s480x480/beauty-upload-api-image-200803233213.jpeg","height":480}],"confirm_methods":{},"address":"256 Thượng Đình, Thanh Xuân, Hà Nội","name_en":"","foody_service_id":1,"min_order_value":{"resource_name":"delivery_order_minimum","resource_args":["20k"]},"operating":{"status":1,"color":"#239839","close_time":"22:50:59","open_time":"07:30:00","text":{"resource_name":"delivery_restaurant_opening"}},"name":"Trà Sữa Tocotoco - Thượng Đình","promotion_groups":[{"group":1,"text":"50% off menu","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":5,"id":16208391,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"},{"group":4,"text":"Freeship","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_shipping_15.png","discount_type":1,"id":19403382,"icon":"https://images.foody.vn/icon/discount/s/voucher_shipping_15.png"},{"group":6,"text":"Freeship","browsing_icon":"https://images.foody.vn/icon/browsing_discount/s/voucher_14.png","discount_type":9,"id":19444944,"icon":"https://images.foody.vn/icon/discount/s/voucher_14.png"}],"url":"https://shopeefood.vn/ha-noi/tra-sua-tocotoco-thuong-dinh","display_order":18600,"delivery_id":19361,"district_id":29,"is_pickup":false,"price_range":{"resource_name":"avg_price_format","resource_args":["49k"]},"position":{"latitude":20.996072,"is_verified":false,"longitude":105.815031},"shipping_methods":[1]}]},"result":"success"}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetDeliveryListItem);
  }

  static int _count = 0;

  @override
  dynamic response() {
    switch ((++_count) % 4) {
      case 0:
        return jsonDecode(_json);
      case 1:
        return jsonDecode(_json2);
      case 2:
        return jsonDecode(_json3);
      case 4:
        return jsonDecode(_json4);
    }
    return jsonDecode(_json);
  }
}
