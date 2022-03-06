

import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeShopDetail extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"delivery_detail": {
			"total_order": 0,
			"rating": {
				"total_review": 1000,
				"avg": 4.7,
				"display_total_review": "999+",
				"app_link": "foody://foody.vn?action=reviewlist&id=100323"
			},
			"is_subscribe": false,
			"is_favorite": false,
			"city_id": 218,
			"phones": ["19006960", "02462925419"],
			"restaurant_id": 100323,
			"is_now_delivery": true,
			"district_id": 20,
			"brand_id": 3244,
			"video": null,
			"asap_is_available": true,
			"contract_type": 1,
			"id": 4844,
			"location_url": "ha-noi",
			"is_quality_merchant": true,
			"available_times": [{
				"date": "2022-03-02",
				"times": ["16:55", "17:00", "17:05", "17:10", "17:15", "17:20", "17:25", "17:30", "17:35", "17:40", "17:45", "17:50", "17:55", "18:00", "18:05", "18:10", "18:15", "18:20", "18:25", "18:30", "18:35", "18:40", "18:45", "18:50", "18:55", "19:00", "19:05", "19:10", "19:15", "19:20", "19:25", "19:30", "19:35", "19:40", "19:45", "19:50", "19:55", "20:00", "20:05", "20:10", "20:15", "20:20", "20:25", "20:30", "20:35", "20:40", "20:45", "20:50"]
			}, {
				"date": "2022-03-03",
				"times": ["10:20", "10:25", "10:30", "10:35", "10:40", "10:45", "10:50", "10:55", "11:00", "11:05", "11:10", "11:15", "11:20", "11:25", "11:30", "11:35", "11:40", "11:45", "11:50", "11:55", "12:00", "12:05", "12:10", "12:15", "12:20", "12:25", "12:30", "12:35", "12:40", "12:45", "12:50", "12:55", "13:00", "13:05", "13:10", "13:15", "13:20", "13:25", "13:30", "13:35", "13:40", "13:45", "13:50", "13:55", "14:00", "14:05", "14:10", "14:15", "14:20", "14:25", "14:30", "14:35", "14:40", "14:45", "14:50", "14:55", "15:00", "15:05", "15:10", "15:15", "15:20", "15:25", "15:30", "15:35", "15:40", "15:45", "15:50", "15:55", "16:00", "16:05", "16:10", "16:15", "16:20", "16:25", "16:30", "16:35", "16:40", "16:45", "16:50", "16:55", "17:00", "17:05", "17:10", "17:15", "17:20", "17:25", "17:30", "17:35", "17:40", "17:45", "17:50", "17:55", "18:00", "18:05", "18:10", "18:15", "18:20", "18:25", "18:30", "18:35", "18:40", "18:45", "18:50", "18:55", "19:00", "19:05", "19:10", "19:15", "19:20", "19:25", "19:30", "19:35", "19:40", "19:45", "19:50", "19:55", "20:00", "20:05", "20:10", "20:15", "20:20", "20:25", "20:30", "20:35", "20:40", "20:45", "20:50"]
			}, {
				"date": "2022-03-04",
				"times": ["10:20", "10:25", "10:30", "10:35", "10:40", "10:45", "10:50", "10:55", "11:00", "11:05", "11:10", "11:15", "11:20", "11:25", "11:30", "11:35", "11:40", "11:45", "11:50", "11:55", "12:00", "12:05", "12:10", "12:15", "12:20", "12:25", "12:30", "12:35", "12:40", "12:45", "12:50", "12:55", "13:00", "13:05", "13:10", "13:15", "13:20", "13:25", "13:30", "13:35", "13:40", "13:45", "13:50", "13:55", "14:00", "14:05", "14:10", "14:15", "14:20", "14:25", "14:30", "14:35", "14:40", "14:45", "14:50", "14:55", "15:00", "15:05", "15:10", "15:15", "15:20", "15:25", "15:30", "15:35", "15:40", "15:45", "15:50", "15:55", "16:00", "16:05", "16:10", "16:15", "16:20", "16:25", "16:30", "16:35", "16:40", "16:45", "16:50", "16:55", "17:00", "17:05", "17:10", "17:15", "17:20", "17:25", "17:30", "17:35", "17:40", "17:45", "17:50", "17:55", "18:00", "18:05", "18:10", "18:15", "18:20", "18:25", "18:30", "18:35", "18:40", "18:45", "18:50", "18:55", "19:00", "19:05", "19:10", "19:15", "19:20", "19:25", "19:30", "19:35", "19:40", "19:45", "19:50", "19:55", "20:00", "20:05", "20:10", "20:15", "20:20", "20:25", "20:30", "20:35", "20:40", "20:45", "20:50"]
			}],
			"is_city_alert": false,
			"categories": ["Restaurant"],
			"cuisines": ["International"],
			"short_description": null,
			"url_rewrite_name": "burger-king-giang-vo",
			"delivery_fees": [],
			"vat": null,
			"confirm_language": null,
			"service_type": 1,
			"brand": {
				"brand_id": 3244,
				"brand_url": "burger-king-ha-noi",
				"name": "Burger King - Hà Nội",
				"restaurant_count": 3
			},
			"limit_distance": 15000,
			"delivery_categories": [2481, 2458, 2591],
			"user_favorite_count": 0,
			"delivery": {
				"delivery_alert": null,
				"time": {
					"available": [],
					"week_days": [{
						"start_time": "09:45",
						"week_day": 6,
						"end_time": "20:50"
					}, {
						"start_time": "09:45",
						"week_day": 7,
						"end_time": "20:50"
					}, {
						"start_time": "10:00",
						"week_day": 1,
						"end_time": "20:50"
					}, {
						"start_time": "10:00",
						"week_day": 2,
						"end_time": "20:50"
					}, {
						"start_time": "10:00",
						"week_day": 3,
						"end_time": "20:50"
					}, {
						"start_time": "10:00",
						"week_day": 4,
						"end_time": "20:50"
					}, {
						"start_time": "10:00",
						"week_day": 5,
						"end_time": "20:50"
					}],
					"not_available": []
				},
				"service_by": "ShopeeFood",
				"service_fee": {
					"text": "0.0%",
					"value": 0.0
				},
				"merchant_limit_distance": -1,
				"payment_methods": [6, 1, 4, 8],
				"has_contract": true,
				"setting_limit_distance": 15000,
				"merchant_time": 12,
				"prepare_duration": 12,
				"ship_types": [],
				"avg_price": {
					"text": "66k",
					"format_text": {
						"resource_name": "avg_price_format",
						"resource_args": ["66k"]
					},
					"value": 65661.0,
					"unit": "đ"
				},
				"min_order_value": {
					"text": "20,000đ",
					"value": 20000.0,
					"unit": "đ"
				},
				"operating": {
					"status": 1,
					"color": "#239839",
					"close_time": "20:50:59",
					"open_time": "10:00:00",
					"text": {
						"resource_name": "delivery_restaurant_opening"
					}
				},
				"is_open": true,
				"shipping_fee": {
					"text": {
						"resource_name": "delivery_shipping_fee",
						"resource_args": ["6,000đ"]
					},
					"value": 6000.0,
					"is_increasing": 0,
					"rate": 1.0,
					"minimum_fee": "15,000đ",
					"unit": "đ"
				},
				"is_peak_mode": false,
				"min_charge": "3,000đ",
				"is_foody_delivery": true
			},
			"photos": [{
				"width": 750,
				"value": "https://images.foody.vn/res/g11/100323/prof/s750x400/image-50ed7ea0-220222131450.jpeg",
				"height": 400
			}],
			"is_display_cutlery": true,
			"confirm_methods": {},
			"address": "C4 Giảng Võ, P. Giảng Võ, Ba Đình, Hà Nội",
			"name_en": "",
			"foody_service_id": 1,
			"min_order_value": {
				"text": "20,000đ",
				"value": 20000.0,
				"unit": "đ"
			},
			"root_category_ids": [2418, 2387, 2546, 2414],
			"promotions": [{
				"min_order_amount": 140000,
				"max_discount_amount": 50000,
				"code": "SIEUTIEC50",
				"foody_service_ids": [1],
				"title": {
					"message": "Enter \"SIEUTIEC50\": 50k off, min order 140k"
				},
				"max_discount_value": {
					"message": "50,000đ"
				},
				"discount_value_type": 2,
				"discount_on_type": 2,
				"display_order": 2,
				"shipping_methods": [1],
				"discount_type": 1,
				"merchant_type": 2,
				"custom_condition": [{
					"content": "140,000đ",
					"label": "Minimum order"
				}, {
					"content": "01/03/2022-31/03/2022",
					"label": "Applicable delivery time"
				}, {
					"content": "Not apply for Pick-up order",
					"label": ""
				}, {
					"content": "Applicable for: Some selected Merchants",
					"label": ""
				}, {
					"content": "31/03/2022 23:59",
					"label": "Expiry date"
				}, {
					"content": "This promotion has limited offer",
					"label": ""
				}, {
					"content": "1 times/ user",
					"label": "Daily usage limit"
				}],
				"display_type": 2,
				"min_order_value": {
					"message": "140,000đ"
				},
				"discount_value": "50,000đ",
				"expired": "31/03/2022 23:59",
				"id": 19494147,
				"icon": "https://images.foody.vn/icon/discount/s/shopeefood_voucher_14.png"
			}, {
				"min_order_amount": 200000,
				"max_discount_amount": 70000,
				"code": "SIEUTIEC70",
				"foody_service_ids": [1],
				"title": {
					"message": "Enter \"SIEUTIEC70\": 70k off, min order 200k"
				},
				"max_discount_value": {
					"message": "70,000đ"
				},
				"discount_value_type": 2,
				"discount_on_type": 2,
				"display_order": 2,
				"shipping_methods": [1],
				"discount_type": 1,
				"merchant_type": 2,
				"custom_condition": [{
					"content": "200,000đ",
					"label": "Minimum order"
				}, {
					"content": "01/03/2022-31/03/2022",
					"label": "Applicable delivery time"
				}, {
					"content": "Not apply for Pick-up order",
					"label": ""
				}, {
					"content": "Applicable for: Some selected Merchants",
					"label": ""
				}, {
					"content": "31/03/2022 23:59",
					"label": "Expiry date"
				}, {
					"content": "This promotion has limited offer",
					"label": ""
				}, {
					"content": "1 times/ user",
					"label": "Daily usage limit"
				}],
				"display_type": 2,
				"min_order_value": {
					"message": "200,000đ"
				},
				"discount_value": "70,000đ",
				"expired": "31/03/2022 23:59",
				"id": 19494154,
				"icon": "https://images.foody.vn/icon/discount/s/shopeefood_voucher_14.png"
			}, {
				"min_order_amount": 45000,
				"max_discount_amount": 15000,
				"code": "THANG3",
				"foody_service_ids": [1],
				"title": {
					"message": "Enter \"THANG3\": 15k off on shipping fee"
				},
				"max_discount_value": {
					"message": "15,000đ"
				},
				"discount_value_type": 2,
				"discount_on_type": 3,
				"display_order": 99,
				"shipping_methods": [1],
				"discount_type": 1,
				"merchant_type": 4,
				"custom_condition": [{
					"content": "45,000đ",
					"label": "Minimum order"
				}, {
					"content": "01/03/2022-31/03/2022",
					"label": "Applicable delivery time"
				}, {
					"content": "Not apply for Pick-up order",
					"label": ""
				}, {
					"content": "Applicable for: Some selected Merchants",
					"label": ""
				}, {
					"content": "31/03/2022 23:59",
					"label": "Expiry date"
				}, {
					"content": "This promotion has limited offer",
					"label": ""
				}, {
					"content": "1 times/ user",
					"label": "Daily usage limit"
				}],
				"display_type": 2,
				"min_order_value": {
					"message": "45,000đ"
				},
				"discount_value": "15,000đ",
				"expired": "31/03/2022 23:59",
				"id": 19495557,
				"icon": "https://images.foody.vn/icon/discount/s/shopeefood_voucher_shipping_15.png"
			}, {
				"code": "PGQMUTKI",
				"title": "Discount on selected menu items",
				"formatted_title": {
					"message": "Discount on selected menu items"
				},
				"discount_value_type": 2,
				"display_order": 99,
				"shipping_methods": [1],
				"discount_type": 5,
				"custom_condition": [{
					"content": "31/03/2022 23:59",
					"label": "Expiry date"
				}, {
					"content": "This promotion has limited offer",
					"label": ""
				}],
				"display_type": 3,
				"expired": "31/03/2022 23:59",
				"id": 16264399,
				"icon": "https://images.foody.vn/icon/discount/s/shopeefood_voucher_14.png"
			}, {
				"code": "VHFK22QISJC7W7Q",
				"title": "Discount on selected menu items",
				"formatted_title": {
					"message": "Discount on selected menu items"
				},
				"discount_value_type": 2,
				"display_order": 99,
				"shipping_methods": [1],
				"discount_type": 5,
				"custom_condition": [{
					"content": "31/03/2022 23:59",
					"label": "Expiry date"
				}, {
					"content": "This promotion has limited offer",
					"label": ""
				}],
				"display_type": 3,
				"expired": "31/03/2022 23:59",
				"id": 16374432,
				"icon": "https://images.foody.vn/icon/discount/s/shopeefood_voucher_14.png"
			}],
			"name": "Burger King - Giảng Võ",
			"url": "https://shopeefood.vn/ha-noi/burger-king-giang-vo",
			"display_order": 4596,
			"delivery_id": 4844,
			"restaurant_url": "burger-king-giang-vo",
			"is_pickup": false,
			"price_range": {
				"min_price": 20000.0,
				"max_price": 100000.0
			},
			"parent_category_id": 2387,
			"position": {
				"latitude": 21.0274570115491,
				"is_verified": true,
				"longitude": 105.82397725584
			},
			"res_photos": [{
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/prof/s60x60/image-50ed7ea0-220222131450.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/prof/s120x120/image-50ed7ea0-220222131450.jpeg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/prof/s160x120/image-50ed7ea0-220222131450.jpeg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/prof/s160x160/image-50ed7ea0-220222131450.jpeg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/prof/s180x180/image-50ed7ea0-220222131450.jpeg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/prof/s240x240/image-50ed7ea0-220222131450.jpeg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/prof/s280x175/image-50ed7ea0-220222131450.jpeg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/prof/s400x216/image-50ed7ea0-220222131450.jpeg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/prof/s600x324/image-50ed7ea0-220222131450.jpeg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/prof/s640x400/image-50ed7ea0-220222131450.jpeg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/prof/s640x640/image-50ed7ea0-220222131450.jpeg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/prof/s750x400/image-50ed7ea0-220222131450.jpeg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/prof/s1242x600/image-50ed7ea0-220222131450.jpeg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-175-637454634201107144.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-465-637454634236623129.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-176-637454634247405357.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-395-637454634258198147.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-checkin-burger-king-giang-vo-928-637432793398209758.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-742-637196963698573460.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-674-637196963713705429.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-991-637196963716830712.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-857-637191827438408436.jpg",
					"height": 600
				}]
			}, {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/res/g11/100323/s60x60/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/res/g11/100323/s120x120/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x120/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 120
				}, {
					"width": 160,
					"value": "https://images.foody.vn/res/g11/100323/s160x160/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 160
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g11/100323/s180x180/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 180
				}, {
					"width": 240,
					"value": "https://images.foody.vn/res/g11/100323/s250x250/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 240
				}, {
					"width": 280,
					"value": "https://images.foody.vn/res/g11/100323/s280x175/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 175
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g11/100323/s400x400/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 216
				}, {
					"width": 600,
					"value": "https://images.foody.vn/res/g11/100323/s600x600/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 324
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x400/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 400
				}, {
					"width": 640,
					"value": "https://images.foody.vn/res/g11/100323/s640x640/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 640
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g11/100323/s750x400/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 400
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g11/100323/s1242x600/foody-burger-king-giang-vo-193-637191827441221173.jpg",
					"height": 600
				}]
			}]
		}
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetShopDetail);
  }

  @override
  response() {
    return jsonDecode(_json);
  }

}