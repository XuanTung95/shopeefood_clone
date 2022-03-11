

import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeShopMenu extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"menu_infos": [{
			"dish_type_id": -1,
			"display_order": -1000,
			"dish_type_name": "Món Đang Giảm",
			"dishes": [{
				"total_order": 10,
				"is_deleted": false,
				"description": "1 burger whopper tắm phô mai cỡ vừa + 1 burger Whopper cỡ vừa + 1 burger gà giòn phô mai + 4 chicken nuggets + Khoai tây chiên vừa + Coke x 3",
				"name": "Combo Ngọt Ngào",
				"display_total_order": "10+",
				"price": {
					"text": "287,000đ",
					"value": 287000.0,
					"unit": "đ"
				},
				"is_active": true,
				"discount_price": {
					"text": "195,000đ",
					"value": 195000.0,
					"unit": "đ"
				},
				"total_like": "1",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 583034,
					"option_items": {
						"min_select": 0,
						"max_select": 3,
						"items": [{
							"name": "Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236328
						}, {
							"name": "Coca",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236342
						}, {
							"name": "Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236355
						}, {
							"name": "Trà chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236369
						}, {
							"name": "Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"unit": "đ",
								"value": 2000.0
							},
							"id": 3236382
						}, {
							"name": "Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"unit": "đ",
								"value": 2000.0
							},
							"id": 3236396
						}, {
							"name": "Nước suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236410
						}, {
							"name": "Nước cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236425
						}]
					},
					"name": "Đổi nước "
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582997,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng bò WHOPPER 5 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"unit": "đ",
								"value": 57000.0
							},
							"id": 3235979
						}, {
							"name": "Miếng bò WHOPPER 4 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"unit": "đ",
								"value": 27000.0
							},
							"id": 3235991
						}, {
							"name": "Phô mai lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"unit": "đ",
								"value": 5000.0
							},
							"id": 3236003
						}, {
							"name": "Thịt xông khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"unit": "đ",
								"value": 15000.0
							},
							"id": 3236015
						}, {
							"name": "Miếng thị gà xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"unit": "đ",
								"value": 24000.0
							},
							"id": 3236027
						}, {
							"name": "Thêm 1 chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"unit": "đ",
								"value": 10000.0
							},
							"id": 3236075
						}]
					},
					"name": " Chọn phần ăn kèm"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582958,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Burger bò nướng Whopper Jr",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "53,000đ",
								"unit": "đ",
								"value": 53000.0
							},
							"id": 3235527
						}, {
							"name": "WHOPPER Jr Bò Tắm Phô Mai Cỡ Vừa",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "61,000đ",
								"unit": "đ",
								"value": 61000.0
							},
							"id": 3235539
						}, {
							"name": "Burger Bò Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"unit": "đ",
								"value": 51000.0
							},
							"id": 3235553
						}, {
							"name": " Burger Gà Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"unit": "đ",
								"value": 51000.0
							},
							"id": 3235567
						}, {
							"name": "Burger Cá",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"unit": "đ",
								"value": 48000.0
							},
							"id": 3235580
						}, {
							"name": "Gà Nuggets (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "36,000đ",
								"unit": "đ",
								"value": 36000.0
							},
							"id": 3235594
						}, {
							"name": "Gà Nuggets (6pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"unit": "đ",
								"value": 48000.0
							},
							"id": 3235608
						}, {
							"name": "Phô Mai Que (2pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"unit": "đ",
								"value": 27000.0
							},
							"id": 3235621
						}, {
							"name": "Mix wings 4 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "77,000đ",
								"unit": "đ",
								"value": 77000.0
							},
							"id": 3235635
						}, {
							"name": "Mix wings 6 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "111,000đ",
								"unit": "đ",
								"value": 111000.0
							},
							"id": 3235648
						}]
					},
					"name": "Món ngon bán chạy "
				}],
				"is_available": true,
				"is_searchable": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"id": 48959155,
				"display_order": 0,
				"is_group_discount_item": true,
				"quantity": 0
			}, {
				"total_order": 9,
				"is_deleted": false,
				"description": "2 burger whopper tắm phô mai cỡ vừa + 2 burger gà giòn phô mai + 4 chicken nuggets + Khoai tây chiên lớn + Coke x 4",
				"name": "Combo Say Đắm",
				"display_total_order": "9",
				"price": {
					"text": "375,000đ",
					"value": 375000.0,
					"unit": "đ"
				},
				"is_active": true,
				"discount_price": {
					"text": "285,000đ",
					"value": 285000.0,
					"unit": "đ"
				},
				"total_like": "0",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 583034,
					"option_items": {
						"min_select": 0,
						"max_select": 4,
						"items": [{
							"name": "Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236328
						}, {
							"name": "Coca",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236342
						}, {
							"name": "Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236355
						}, {
							"name": "Trà chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236369
						}, {
							"name": "Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"unit": "đ",
								"value": 2000.0
							},
							"id": 3236382
						}, {
							"name": "Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"unit": "đ",
								"value": 2000.0
							},
							"id": 3236396
						}, {
							"name": "Nước suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236410
						}, {
							"name": "Nước cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236425
						}]
					},
					"name": "Đổi nước "
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582997,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng bò WHOPPER 5 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"unit": "đ",
								"value": 57000.0
							},
							"id": 3235979
						}, {
							"name": "Miếng bò WHOPPER 4 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"unit": "đ",
								"value": 27000.0
							},
							"id": 3235991
						}, {
							"name": "Phô mai lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"unit": "đ",
								"value": 5000.0
							},
							"id": 3236003
						}, {
							"name": "Thịt xông khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"unit": "đ",
								"value": 15000.0
							},
							"id": 3236015
						}, {
							"name": "Miếng thị gà xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"unit": "đ",
								"value": 24000.0
							},
							"id": 3236027
						}, {
							"name": "Thêm 1 chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"unit": "đ",
								"value": 10000.0
							},
							"id": 3236075
						}]
					},
					"name": " Chọn phần ăn kèm"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582958,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Burger bò nướng Whopper Jr",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "53,000đ",
								"unit": "đ",
								"value": 53000.0
							},
							"id": 3235527
						}, {
							"name": "WHOPPER Jr Bò Tắm Phô Mai Cỡ Vừa",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "61,000đ",
								"unit": "đ",
								"value": 61000.0
							},
							"id": 3235539
						}, {
							"name": "Burger Bò Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"unit": "đ",
								"value": 51000.0
							},
							"id": 3235553
						}, {
							"name": " Burger Gà Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"unit": "đ",
								"value": 51000.0
							},
							"id": 3235567
						}, {
							"name": "Burger Cá",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"unit": "đ",
								"value": 48000.0
							},
							"id": 3235580
						}, {
							"name": "Gà Nuggets (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "36,000đ",
								"unit": "đ",
								"value": 36000.0
							},
							"id": 3235594
						}, {
							"name": "Gà Nuggets (6pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"unit": "đ",
								"value": 48000.0
							},
							"id": 3235608
						}, {
							"name": "Phô Mai Que (2pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"unit": "đ",
								"value": 27000.0
							},
							"id": 3235621
						}, {
							"name": "Mix wings 4 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "77,000đ",
								"unit": "đ",
								"value": 77000.0
							},
							"id": 3235635
						}, {
							"name": "Mix wings 6 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "111,000đ",
								"unit": "đ",
								"value": 111000.0
							},
							"id": 3235648
						}]
					},
					"name": "Món ngon bán chạy "
				}],
				"is_available": true,
				"is_searchable": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"id": 48959179,
				"display_order": 0,
				"is_group_discount_item": true,
				"quantity": 0
			}, {
				"total_order": 0,
				"is_deleted": false,
				"description": "4 burger whopper tắm phô mai cỡ vừa + 2 burger bò phô mai + 3 Khoai tây chiên cỡ lớn + 5 chicken nuggets + 8 phô mai que + Coke x 6",
				"name": "Combo Tương Tư",
				"display_total_order": "0",
				"price": {
					"text": "698,000đ",
					"value": 698000.0,
					"unit": "đ"
				},
				"is_active": true,
				"discount_price": {
					"text": "499,000đ",
					"value": 499000.0,
					"unit": "đ"
				},
				"total_like": "0",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 583034,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236328
						}, {
							"name": "Coca",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236342
						}, {
							"name": "Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236355
						}, {
							"name": "Trà chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236369
						}, {
							"name": "Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"unit": "đ",
								"value": 2000.0
							},
							"id": 3236382
						}, {
							"name": "Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"unit": "đ",
								"value": 2000.0
							},
							"id": 3236396
						}, {
							"name": "Nước suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236410
						}, {
							"name": "Nước cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 6,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0.0
							},
							"id": 3236425
						}]
					},
					"name": "Đổi nước "
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582997,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng bò WHOPPER 5 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"unit": "đ",
								"value": 57000.0
							},
							"id": 3235979
						}, {
							"name": "Miếng bò WHOPPER 4 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"unit": "đ",
								"value": 27000.0
							},
							"id": 3235991
						}, {
							"name": "Phô mai lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"unit": "đ",
								"value": 5000.0
							},
							"id": 3236003
						}, {
							"name": "Thịt xông khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"unit": "đ",
								"value": 15000.0
							},
							"id": 3236015
						}, {
							"name": "Miếng thị gà xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"unit": "đ",
								"value": 24000.0
							},
							"id": 3236027
						}, {
							"name": "Thêm 1 chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"unit": "đ",
								"value": 10000.0
							},
							"id": 3236075
						}]
					},
					"name": " Chọn phần ăn kèm"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582958,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Burger bò nướng Whopper Jr",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "53,000đ",
								"unit": "đ",
								"value": 53000.0
							},
							"id": 3235527
						}, {
							"name": "WHOPPER Jr Bò Tắm Phô Mai Cỡ Vừa",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "61,000đ",
								"unit": "đ",
								"value": 61000.0
							},
							"id": 3235539
						}, {
							"name": "Burger Bò Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"unit": "đ",
								"value": 51000.0
							},
							"id": 3235553
						}, {
							"name": " Burger Gà Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"unit": "đ",
								"value": 51000.0
							},
							"id": 3235567
						}, {
							"name": "Burger Cá",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"unit": "đ",
								"value": 48000.0
							},
							"id": 3235580
						}, {
							"name": "Gà Nuggets (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "36,000đ",
								"unit": "đ",
								"value": 36000.0
							},
							"id": 3235594
						}, {
							"name": "Gà Nuggets (6pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"unit": "đ",
								"value": 48000.0
							},
							"id": 3235608
						}, {
							"name": "Phô Mai Que (2pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"unit": "đ",
								"value": 27000.0
							},
							"id": 3235621
						}, {
							"name": "Mix wings 4 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "77,000đ",
								"unit": "đ",
								"value": 77000.0
							},
							"id": 3235635
						}, {
							"name": "Mix wings 6 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"unit": "đ",
								"value": 0
							},
							"max_quantity": 10,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "111,000đ",
								"unit": "đ",
								"value": 111000.0
							},
							"id": 3235648
						}]
					},
					"name": "Món ngon bán chạy "
				}],
				"is_available": true,
				"is_searchable": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"id": 48959191,
				"display_order": 0,
				"is_group_discount_item": true,
				"quantity": 0
			}],
			"is_group_discount": true
		}, {
			"dish_type_id": 2994088,
			"dish_type_name": "Women's Day",
			"dishes": [{
				"total_order": 10,
				"is_deleted": false,
				"description": "1 burger whopper tắm phô mai cỡ vừa + 1 burger Whopper cỡ vừa + 1 burger gà giòn phô mai + 4 chicken nuggets + Khoai tây chiên vừa + Coke x 3",
				"display_total_order": "10+",
				"price": {
					"text": "287,000đ",
					"unit": "đ",
					"value": 287000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "1",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/f5422683-616d-4d53-81d4-06d9aca0-9e3e4cd2-220214092332.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 583034,
					"option_items": {
						"min_select": 0,
						"max_select": 3,
						"items": [{
							"name": "Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236328,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Coca",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236342,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236355,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Trà chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236369,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236382,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236396,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Nước suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236410,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Nước cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236425,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "Đổi nước "
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582997,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng bò WHOPPER 5 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235979,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng bò WHOPPER 4 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235991,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô mai lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt xông khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236015,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng thị gà xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236027,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236075,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}]
					},
					"name": " Chọn phần ăn kèm"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582958,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Burger bò nướng Whopper Jr",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235527,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "53,000đ",
								"value": 53000.0,
								"unit": "đ"
							}
						}, {
							"name": "WHOPPER Jr Bò Tắm Phô Mai Cỡ Vừa",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "61,000đ",
								"value": 61000.0,
								"unit": "đ"
							}
						}, {
							"name": "Burger Bò Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235553,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"value": 51000.0,
								"unit": "đ"
							}
						}, {
							"name": " Burger Gà Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235567,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"value": 51000.0,
								"unit": "đ"
							}
						}, {
							"name": "Burger Cá",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235580,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"value": 48000.0,
								"unit": "đ"
							}
						}, {
							"name": "Gà Nuggets (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235594,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "36,000đ",
								"value": 36000.0,
								"unit": "đ"
							}
						}, {
							"name": "Gà Nuggets (6pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235608,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"value": 48000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Que (2pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235621,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Mix wings 4 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235635,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "77,000đ",
								"value": 77000.0,
								"unit": "đ"
							}
						}, {
							"name": "Mix wings 6 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235648,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "111,000đ",
								"value": 111000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "Món ngon bán chạy "
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"discount_price": {
					"text": "195,000đ",
					"unit": "đ",
					"value": 195000.0
				},
				"id": 48959155,
				"is_group_discount_item": true,
				"name": "Combo Ngọt Ngào"
			}, {
				"total_order": 9,
				"is_deleted": false,
				"description": "2 burger whopper tắm phô mai cỡ vừa + 2 burger gà giòn phô mai + 4 chicken nuggets + Khoai tây chiên lớn + Coke x 4",
				"display_total_order": "9",
				"price": {
					"text": "375,000đ",
					"unit": "đ",
					"value": 375000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "0",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/93a52905-ea73-44de-9996-d70ada76-33e68f1f-220214092406.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 583034,
					"option_items": {
						"min_select": 0,
						"max_select": 4,
						"items": [{
							"name": "Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236328,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Coca",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236342,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236355,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Trà chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236369,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236382,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236396,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Nước suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236410,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Nước cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236425,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "Đổi nước "
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582997,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng bò WHOPPER 5 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235979,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng bò WHOPPER 4 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235991,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô mai lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt xông khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236015,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng thị gà xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236027,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236075,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}]
					},
					"name": " Chọn phần ăn kèm"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582958,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Burger bò nướng Whopper Jr",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235527,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "53,000đ",
								"value": 53000.0,
								"unit": "đ"
							}
						}, {
							"name": "WHOPPER Jr Bò Tắm Phô Mai Cỡ Vừa",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "61,000đ",
								"value": 61000.0,
								"unit": "đ"
							}
						}, {
							"name": "Burger Bò Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235553,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"value": 51000.0,
								"unit": "đ"
							}
						}, {
							"name": " Burger Gà Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235567,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"value": 51000.0,
								"unit": "đ"
							}
						}, {
							"name": "Burger Cá",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235580,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"value": 48000.0,
								"unit": "đ"
							}
						}, {
							"name": "Gà Nuggets (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235594,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "36,000đ",
								"value": 36000.0,
								"unit": "đ"
							}
						}, {
							"name": "Gà Nuggets (6pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235608,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"value": 48000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Que (2pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235621,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Mix wings 4 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235635,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "77,000đ",
								"value": 77000.0,
								"unit": "đ"
							}
						}, {
							"name": "Mix wings 6 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235648,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "111,000đ",
								"value": 111000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "Món ngon bán chạy "
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"discount_price": {
					"text": "285,000đ",
					"unit": "đ",
					"value": 285000.0
				},
				"id": 48959179,
				"is_group_discount_item": true,
				"name": "Combo Say Đắm"
			}, {
				"total_order": 0,
				"is_deleted": false,
				"description": "4 burger whopper tắm phô mai cỡ vừa + 2 burger bò phô mai + 3 Khoai tây chiên cỡ lớn + 5 chicken nuggets + 8 phô mai que + Coke x 6",
				"display_total_order": "0",
				"price": {
					"text": "698,000đ",
					"unit": "đ",
					"value": 698000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "0",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/20201216-ce80-4c23-a061-df489fa6-bcf5c2d5-220214092427.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 583034,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236328,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Coca",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236342,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236355,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Trà chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236369,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236382,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236396,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Nước suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236410,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Nước cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 6,
							"id": 3236425,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "Đổi nước "
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582997,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng bò WHOPPER 5 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235979,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng bò WHOPPER 4 inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235991,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô mai lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt xông khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236015,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng thị gà xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236027,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3236075,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}]
					},
					"name": " Chọn phần ăn kèm"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 582958,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Burger bò nướng Whopper Jr",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235527,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "53,000đ",
								"value": 53000.0,
								"unit": "đ"
							}
						}, {
							"name": "WHOPPER Jr Bò Tắm Phô Mai Cỡ Vừa",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "61,000đ",
								"value": 61000.0,
								"unit": "đ"
							}
						}, {
							"name": "Burger Bò Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235553,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"value": 51000.0,
								"unit": "đ"
							}
						}, {
							"name": " Burger Gà Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235567,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "51,000đ",
								"value": 51000.0,
								"unit": "đ"
							}
						}, {
							"name": "Burger Cá",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235580,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"value": 48000.0,
								"unit": "đ"
							}
						}, {
							"name": "Gà Nuggets (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235594,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "36,000đ",
								"value": 36000.0,
								"unit": "đ"
							}
						}, {
							"name": "Gà Nuggets (6pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235608,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "48,000đ",
								"value": 48000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Que (2pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235621,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Mix wings 4 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235635,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "77,000đ",
								"value": 77000.0,
								"unit": "đ"
							}
						}, {
							"name": "Mix wings 6 miếng",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 10,
							"id": 3235648,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "111,000đ",
								"value": 111000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "Món ngon bán chạy "
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"discount_price": {
					"text": "499,000đ",
					"unit": "đ",
					"value": 499000.0
				},
				"id": 48959191,
				"is_group_discount_item": true,
				"name": "Combo Tương Tư"
			}]
		}, {
			"dish_type_id": 1237256,
			"dish_type_name": "BURGER COMBO (SIZE VỪA)",
			"dishes": [{
				"total_order": 1000,
				"is_deleted": false,
				"description": "COMBO EXTREME CHEESY WHOPPER JR + FF + Coke\nBurger WHOPPER Jr Bò Tắm Phô Mai cỡ vừa + Khoai tây chiên + Nước ngọt",
				"display_total_order": "999+",
				"price": {
					"text": "91,000đ",
					"unit": "đ",
					"value": 91000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/4bf26504-bd78-4e4d-96bd-3e9063ce3691.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/4bf26504-bd78-4e4d-96bd-3e9063ce3691.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/4bf26504-bd78-4e4d-96bd-3e9063ce3691.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/4bf26504-bd78-4e4d-96bd-3e9063ce3691.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/4bf26504-bd78-4e4d-96bd-3e9063ce3691.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/4bf26504-bd78-4e4d-96bd-3e9063ce3691.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9369367,
				"is_group_discount_item": true,
				"name": "Combo Whopper Bò Tắm Phô Mai cỡ vừa"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "CHEESE BURGER + FF + Coke\nBurger Bò Phô Mai + Khoai tây chiên + Nước ngọt",
				"display_total_order": "999+",
				"price": {
					"text": "78,000đ",
					"unit": "đ",
					"value": 78000.0
				},
				"is_active": true,
				"display_order": 12,
				"total_like": "7",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/6993ff08-9244-4d0c-901d-19612656-0dc5f3ec-200813150246.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/6993ff08-9244-4d0c-901d-19612656-0dc5f3ec-200813150246.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/6993ff08-9244-4d0c-901d-19612656-0dc5f3ec-200813150246.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/6993ff08-9244-4d0c-901d-19612656-0dc5f3ec-200813150246.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/6993ff08-9244-4d0c-901d-19612656-0dc5f3ec-200813150246.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/6993ff08-9244-4d0c-901d-19612656-0dc5f3ec-200813150246.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5209853,
				"is_group_discount_item": true,
				"name": "Combo Burger Bò Phô Mai"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "SINGLE BBQ BURGER + FF + Coke\nBurger Bò Thịt Heo Xông Khói + Khoai tây chiên + Nước ngọt",
				"display_total_order": "500+",
				"price": {
					"text": "101,000đ",
					"unit": "đ",
					"value": 101000.0
				},
				"is_active": true,
				"display_order": 15,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/8d447293-db21-45be-8835-a42ba09d-39116bd0-200813150454.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/8d447293-db21-45be-8835-a42ba09d-39116bd0-200813150454.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/8d447293-db21-45be-8835-a42ba09d-39116bd0-200813150454.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/8d447293-db21-45be-8835-a42ba09d-39116bd0-200813150454.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/8d447293-db21-45be-8835-a42ba09d-39116bd0-200813150454.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/8d447293-db21-45be-8835-a42ba09d-39116bd0-200813150454.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5208653,
				"is_group_discount_item": true,
				"name": "Combo Burger Bò Thịt Heo Xông Khói"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "CHIC'N CRISP CHEESE BURGER + FF + Coke\nBurger Gà Phô Mai + Khoai tây chiên + Nước ngọt",
				"display_total_order": "500+",
				"price": {
					"text": "72,000đ",
					"unit": "đ",
					"value": 72000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/84cd75ce-6bc8-4503-9f76-838088cf-9d292f4b-200813145740.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/84cd75ce-6bc8-4503-9f76-838088cf-9d292f4b-200813145740.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/84cd75ce-6bc8-4503-9f76-838088cf-9d292f4b-200813145740.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/84cd75ce-6bc8-4503-9f76-838088cf-9d292f4b-200813145740.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/84cd75ce-6bc8-4503-9f76-838088cf-9d292f4b-200813145740.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/84cd75ce-6bc8-4503-9f76-838088cf-9d292f4b-200813145740.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 10890242,
				"is_group_discount_item": true,
				"name": "Combo Burger Gà Phô Mai"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "SPICY TENDER CRISP BURGER + FF + Coke\nBurger Gà Giòn Cay+ Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "95,000đ",
					"unit": "đ",
					"value": 95000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "7",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/8f21ece6-1fda-46ba-b59b-066dc307-06c9c9a7-200813150002.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/8f21ece6-1fda-46ba-b59b-066dc307-06c9c9a7-200813150002.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/8f21ece6-1fda-46ba-b59b-066dc307-06c9c9a7-200813150002.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/8f21ece6-1fda-46ba-b59b-066dc307-06c9c9a7-200813150002.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/8f21ece6-1fda-46ba-b59b-066dc307-06c9c9a7-200813150002.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/8f21ece6-1fda-46ba-b59b-066dc307-06c9c9a7-200813150002.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 11216799,
				"is_group_discount_item": true,
				"name": "Combo Burger Gà Giòn Cay"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "DOUBLE CHEESE BURGER + FF + Coke\nBurger 2 miếng bò phô mai + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "102,000đ",
					"unit": "đ",
					"value": 102000.0
				},
				"is_active": true,
				"display_order": 8,
				"total_like": "6",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/0a260a38-5bbf-4fe0-8f1a-eef3389931a9.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/0a260a38-5bbf-4fe0-8f1a-eef3389931a9.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/0a260a38-5bbf-4fe0-8f1a-eef3389931a9.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/0a260a38-5bbf-4fe0-8f1a-eef3389931a9.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/0a260a38-5bbf-4fe0-8f1a-eef3389931a9.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/0a260a38-5bbf-4fe0-8f1a-eef3389931a9.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112547,
				"is_group_discount_item": true,
				"name": "Combo Burger 2 miếng bò phô mai"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "FISH BURGER + FF + Coke\nBurger Cá + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "72,000đ",
					"unit": "đ",
					"value": 72000.0
				},
				"is_active": true,
				"display_order": 14,
				"total_like": "9",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/e3242c7d-9da8-4d72-a979-0c99fee6aa80.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/e3242c7d-9da8-4d72-a979-0c99fee6aa80.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/e3242c7d-9da8-4d72-a979-0c99fee6aa80.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/e3242c7d-9da8-4d72-a979-0c99fee6aa80.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/e3242c7d-9da8-4d72-a979-0c99fee6aa80.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/e3242c7d-9da8-4d72-a979-0c99fee6aa80.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112632,
				"is_group_discount_item": true,
				"name": "Combo Burger Cá"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "SINGLE GRILL ONION BURGER + FF + Coke\nBurger Bò Nướng Hành Chiên + Khoai tây chiên + Nước ngọt\n",
				"display_total_order": "100+",
				"price": {
					"text": "80,000đ",
					"unit": "đ",
					"value": 80000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "5",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/b09101a1-12e2-4d47-a26f-c0932d70-523ff89a-200813145610.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/b09101a1-12e2-4d47-a26f-c0932d70-523ff89a-200813145610.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/b09101a1-12e2-4d47-a26f-c0932d70-523ff89a-200813145610.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/b09101a1-12e2-4d47-a26f-c0932d70-523ff89a-200813145610.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/b09101a1-12e2-4d47-a26f-c0932d70-523ff89a-200813145610.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/b09101a1-12e2-4d47-a26f-c0932d70-523ff89a-200813145610.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 11216746,
				"is_group_discount_item": true,
				"name": "Combo Burger Bò Nướng Hành Chiên"
			}]
		}, {
			"dish_type_id": 2343952,
			"dish_type_name": "Family Combo 2 - 4 Người (Combo Gia Đình 2 - 4pax)",
			"dishes": [{
				"total_order": 100,
				"is_deleted": false,
				"description": "2 Whopper Jr Extreme Cheesy + Cheesy Fries Bacon (M) + 2pcs Mexican Drumlets + 2 Coke\n2 Burger Whopper Jr Bò Tắm Phô Mai cỡ vừa + Khoai Tây Chiên Tắm Phô Mai Với Thịt Xông Khói (M) + 2 Mexican Drumlets + 2 Nước Ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "197,000đ",
					"unit": "đ",
					"value": 197000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/4911d3aa-11b7-4773-952c-f0e62026-c4dd2677-211104144511.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/4911d3aa-11b7-4773-952c-f0e62026-c4dd2677-211104144511.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/4911d3aa-11b7-4773-952c-f0e62026-c4dd2677-211104144511.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/4911d3aa-11b7-4773-952c-f0e62026-c4dd2677-211104144511.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/4911d3aa-11b7-4773-952c-f0e62026-c4dd2677-211104144511.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/4911d3aa-11b7-4773-952c-f0e62026-c4dd2677-211104144511.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 28423605,
				"is_group_discount_item": true,
				"name": "Combo \"Say Nắng\""
			}, {
				"total_order": 50,
				"is_deleted": false,
				"description": "2 Whopper Jr Extreme Cheesy + Cheesy Fries Bacon (M) + 4pcs Nugget + 2 Coke\n2 Burger Whopper Jr Bò Tắm Phô Mai cỡ vừa + Khoai Tây Chiên Tắm Phô Mai Với Thịt Xông Khói (M) + 4 Nuggets + 2 Nước ngọt",
				"display_total_order": "50+",
				"price": {
					"text": "253,000đ",
					"unit": "đ",
					"value": 253000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "3",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/2b476ea2-ad44-46e8-b42c-4d85bb2d-388702f2-211104144534.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/2b476ea2-ad44-46e8-b42c-4d85bb2d-388702f2-211104144534.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/2b476ea2-ad44-46e8-b42c-4d85bb2d-388702f2-211104144534.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/2b476ea2-ad44-46e8-b42c-4d85bb2d-388702f2-211104144534.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/2b476ea2-ad44-46e8-b42c-4d85bb2d-388702f2-211104144534.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/2b476ea2-ad44-46e8-b42c-4d85bb2d-388702f2-211104144534.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 28423630,
				"is_group_discount_item": true,
				"name": "Combo \"Say Yes!!\""
			}, {
				"total_order": 50,
				"is_deleted": false,
				"description": "4 Whopper Jr + 4 Mexican Drumlets + 2 FF + 4 Coke\n4 Burger Bò Nướng Whopper Jr + 4 gà Mexican Drumlet + 2 Khoai tây chiên + 4 Nước Ngọt",
				"display_total_order": "50+",
				"price": {
					"text": "309,000đ",
					"unit": "đ",
					"value": 309000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "4",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/dae71a38-b61b-40f1-bff3-5e4d59e5-d4d27d37-211104144620.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/dae71a38-b61b-40f1-bff3-5e4d59e5-d4d27d37-211104144620.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/dae71a38-b61b-40f1-bff3-5e4d59e5-d4d27d37-211104144620.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/dae71a38-b61b-40f1-bff3-5e4d59e5-d4d27d37-211104144620.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/dae71a38-b61b-40f1-bff3-5e4d59e5-d4d27d37-211104144620.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/dae71a38-b61b-40f1-bff3-5e4d59e5-d4d27d37-211104144620.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 28423651,
				"is_group_discount_item": true,
				"name": "Gia Đình Là Số 1"
			}, {
				"total_order": 10,
				"is_deleted": false,
				"description": "4 Cheese Burger + 4 Nuggets + 8 Cheese Sticks + 4 Coke\n4 Burger Bò Phô Mai + 4 gà Nuggets + 8 Phô Mai Que + 4 Nước ngọt",
				"display_total_order": "10+",
				"price": {
					"text": "305,000đ",
					"unit": "đ",
					"value": 305000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "1",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/86261f05-9985-48f7-b8f3-5a074471-d92eb2d7-211104144642.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/86261f05-9985-48f7-b8f3-5a074471-d92eb2d7-211104144642.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/86261f05-9985-48f7-b8f3-5a074471-d92eb2d7-211104144642.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/86261f05-9985-48f7-b8f3-5a074471-d92eb2d7-211104144642.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/86261f05-9985-48f7-b8f3-5a074471-d92eb2d7-211104144642.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/86261f05-9985-48f7-b8f3-5a074471-d92eb2d7-211104144642.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 28423680,
				"is_group_discount_item": true,
				"name": "Cả Nhà Là Số 2"
			}]
		}, {
			"dish_type_id": 1237326,
			"dish_type_name": "BURGER COMBO (SIZE LỚN)",
			"dishes": [{
				"total_order": 500,
				"is_deleted": false,
				"description": "Whopper Extreme Cheesy + FF + Coke\nBurger Bò Tắm Phô Mai cỡ lớn + Khoai Tây Chiên + Nước ngọt",
				"display_total_order": "500+",
				"price": {
					"text": "145,000đ",
					"unit": "đ",
					"value": 145000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/bc3ec963-8453-4e1e-9823-9dd4c2c4-0e5f551c-201027152458.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/bc3ec963-8453-4e1e-9823-9dd4c2c4-0e5f551c-201027152458.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/bc3ec963-8453-4e1e-9823-9dd4c2c4-0e5f551c-201027152458.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/bc3ec963-8453-4e1e-9823-9dd4c2c4-0e5f551c-201027152458.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/bc3ec963-8453-4e1e-9823-9dd4c2c4-0e5f551c-201027152458.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/bc3ec963-8453-4e1e-9823-9dd4c2c4-0e5f551c-201027152458.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 11887638,
				"is_group_discount_item": true,
				"name": "Combo Burger bò tắm phô mai Whopper"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Combo Singles BBQ Bacon Cheese Burger + FF + Coke\nBurger Bò Nướng Whopper Phô Mai thịt heo xông khói BBQ + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "160,000đ",
					"unit": "đ",
					"value": 160000.0
				},
				"is_active": true,
				"display_order": 3,
				"total_like": "6",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/9b1f60c0-2046-40d1-9df5-bf24e1f0e9a0.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/9b1f60c0-2046-40d1-9df5-bf24e1f0e9a0.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/9b1f60c0-2046-40d1-9df5-bf24e1f0e9a0.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/9b1f60c0-2046-40d1-9df5-bf24e1f0e9a0.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/9b1f60c0-2046-40d1-9df5-bf24e1f0e9a0.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/9b1f60c0-2046-40d1-9df5-bf24e1f0e9a0.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112501,
				"is_group_discount_item": true,
				"name": "Combo Burger Bò Nướng WHOPPER Phô Mai thịt heo xông khói BBQ"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Combo 1 Whopper Jr + FF + Coke\nBurger Bò Nướng Whopper + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "137,000đ",
					"unit": "đ",
					"value": 137000.0
				},
				"is_active": true,
				"display_order": 1,
				"total_like": "3",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/d2b03af5-ddec-4703-bbae-87104abaa733.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/d2b03af5-ddec-4703-bbae-87104abaa733.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/d2b03af5-ddec-4703-bbae-87104abaa733.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/d2b03af5-ddec-4703-bbae-87104abaa733.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/d2b03af5-ddec-4703-bbae-87104abaa733.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/d2b03af5-ddec-4703-bbae-87104abaa733.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 9,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112479,
				"is_group_discount_item": true,
				"name": "Combo Burger Bò Nướng Whopper"
			}]
		}, {
			"dish_type_id": 1010357,
			"dish_type_name": "CƠM VUA GIÁ HỜI",
			"dishes": [{
				"total_order": 100,
				"available_time": "2022-03-02 23:59:59",
				"is_deleted": false,
				"description": "COMBO RICE BBQ BEEF + Coke\nCơm Bò sốt BBQ + Nước Ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "63,000đ",
					"unit": "đ",
					"value": 63000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "2",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/af4a3970-c870-4c81-a02c-492394d2-0d871f8b-200813153133.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/af4a3970-c870-4c81-a02c-492394d2-0d871f8b-200813153133.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/af4a3970-c870-4c81-a02c-492394d2-0d871f8b-200813153133.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/af4a3970-c870-4c81-a02c-492394d2-0d871f8b-200813153133.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/af4a3970-c870-4c81-a02c-492394d2-0d871f8b-200813153133.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/af4a3970-c870-4c81-a02c-492394d2-0d871f8b-200813153133.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": true,
					"id": 302093,
					"option_items": {
						"min_select": 1,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": true,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9291116,
				"is_group_discount_item": true,
				"name": "Combo Cơm Bò sốt BBQ"
			}, {
				"total_order": 100,
				"available_time": "2022-03-02 23:59:59",
				"is_deleted": false,
				"description": "COMBO RICE CHEESY BEEF + Coke\nCơm Bò Tắm Phô Mai + Nước Ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "66,000đ",
					"unit": "đ",
					"value": 66000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "3",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/1391d60d-1526-4da1-9a05-b123d17e-8463a2e2-200813153049.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/1391d60d-1526-4da1-9a05-b123d17e-8463a2e2-200813153049.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/1391d60d-1526-4da1-9a05-b123d17e-8463a2e2-200813153049.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/1391d60d-1526-4da1-9a05-b123d17e-8463a2e2-200813153049.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/1391d60d-1526-4da1-9a05-b123d17e-8463a2e2-200813153049.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/1391d60d-1526-4da1-9a05-b123d17e-8463a2e2-200813153049.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9291107,
				"is_group_discount_item": true,
				"name": "Combo Cơm Bò Tắm Phô Mai"
			}, {
				"total_order": 50,
				"available_time": "2022-03-02 23:59:59",
				"is_deleted": false,
				"description": "RICE BBQ WING \nCơm cánh gà BBQW",
				"display_total_order": "50+",
				"price": {
					"text": "51,000đ",
					"unit": "đ",
					"value": 51000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "2",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/7eb66def-946f-4ffa-970d-21d3c732a8a3.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/7eb66def-946f-4ffa-970d-21d3c732a8a3.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/7eb66def-946f-4ffa-970d-21d3c732a8a3.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/7eb66def-946f-4ffa-970d-21d3c732a8a3.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/7eb66def-946f-4ffa-970d-21d3c732a8a3.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/7eb66def-946f-4ffa-970d-21d3c732a8a3.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9291090,
				"is_group_discount_item": true,
				"name": "Cơm cánh gà BBQW"
			}, {
				"total_order": 10,
				"available_time": "2022-03-02 23:59:59",
				"is_deleted": false,
				"description": "RICE LEMONGRASS BEEF + Coke\nCơm Bò sốt Xả Ớt + Nước Ngọt",
				"display_total_order": "10+",
				"price": {
					"text": "63,000đ",
					"unit": "đ",
					"value": 63000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "1",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/fdca7226-c094-425c-95eb-a76f1f4b-5fcb207d-200813153216.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/fdca7226-c094-425c-95eb-a76f1f4b-5fcb207d-200813153216.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/fdca7226-c094-425c-95eb-a76f1f4b-5fcb207d-200813153216.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/fdca7226-c094-425c-95eb-a76f1f4b-5fcb207d-200813153216.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/fdca7226-c094-425c-95eb-a76f1f4b-5fcb207d-200813153216.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/fdca7226-c094-425c-95eb-a76f1f4b-5fcb207d-200813153216.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9291125,
				"is_group_discount_item": true,
				"name": "Combo Cơm Bò sốt Xả Ớt"
			}, {
				"total_order": 10,
				"available_time": "2022-03-02 23:59:59",
				"is_deleted": false,
				"description": "RICE BBQ WING + Coke\nCơm cánh gà BBQW + Nước Ngọt",
				"display_total_order": "10+",
				"price": {
					"text": "61,000đ",
					"unit": "đ",
					"value": 61000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "1",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/7f33dd7a-5457-4f34-bcc5-9a05b65c8c41.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/7f33dd7a-5457-4f34-bcc5-9a05b65c8c41.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/7f33dd7a-5457-4f34-bcc5-9a05b65c8c41.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/7f33dd7a-5457-4f34-bcc5-9a05b65c8c41.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/7f33dd7a-5457-4f34-bcc5-9a05b65c8c41.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/7f33dd7a-5457-4f34-bcc5-9a05b65c8c41.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}, {
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": false,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9291133,
				"is_group_discount_item": true,
				"name": "Combo Cơm cánh gà BBQW"
			}]
		}, {
			"dish_type_id": 2367262,
			"dish_type_name": "CẢ TUẦN VUI VẺ",
			"dishes": [{
				"total_order": 100,
				"is_deleted": false,
				"description": "CHEESE BURGER + Coke\nBurger bò phô mai + Nước Ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "39,000đ",
					"unit": "đ",
					"value": 39000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "8",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/31d7d0c5-30de-4617-87ee-3b2cdf0e-8590be85-211110112844.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/31d7d0c5-30de-4617-87ee-3b2cdf0e-8590be85-211110112844.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/31d7d0c5-30de-4617-87ee-3b2cdf0e-8590be85-211110112844.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/31d7d0c5-30de-4617-87ee-3b2cdf0e-8590be85-211110112844.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/31d7d0c5-30de-4617-87ee-3b2cdf0e-8590be85-211110112844.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/31d7d0c5-30de-4617-87ee-3b2cdf0e-8590be85-211110112844.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 29119352,
				"is_group_discount_item": true,
				"name": "Cả tuần phấn khởi"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "CHIC'N CRISP CHEESE BURGER + Coke\nBurger gà phô mai + Nước Ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "39,000đ",
					"unit": "đ",
					"value": 39000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "2",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/90943129-67a5-400e-af85-bba9d6f7-6d0f1dd1-211110112822.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/90943129-67a5-400e-af85-bba9d6f7-6d0f1dd1-211110112822.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/90943129-67a5-400e-af85-bba9d6f7-6d0f1dd1-211110112822.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/90943129-67a5-400e-af85-bba9d6f7-6d0f1dd1-211110112822.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/90943129-67a5-400e-af85-bba9d6f7-6d0f1dd1-211110112822.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/90943129-67a5-400e-af85-bba9d6f7-6d0f1dd1-211110112822.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 29119304,
				"is_group_discount_item": true,
				"name": "Cả tuần no nê"
			}, {
				"total_order": 50,
				"is_deleted": false,
				"description": "FISH BURGER + Coke\nBurger cá + Nước Ngọt",
				"display_total_order": "50+",
				"price": {
					"text": "39,000đ",
					"unit": "đ",
					"value": 39000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "0",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/1e184275-3c0e-4cad-9905-c2edce75-ec5f6e98-211110112756.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/1e184275-3c0e-4cad-9905-c2edce75-ec5f6e98-211110112756.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/1e184275-3c0e-4cad-9905-c2edce75-ec5f6e98-211110112756.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/1e184275-3c0e-4cad-9905-c2edce75-ec5f6e98-211110112756.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/1e184275-3c0e-4cad-9905-c2edce75-ec5f6e98-211110112756.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/1e184275-3c0e-4cad-9905-c2edce75-ec5f6e98-211110112756.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 29119329,
				"is_group_discount_item": true,
				"name": "Cả tuần hào hứng"
			}]
		}, {
			"dish_type_id": 1236972,
			"dish_type_name": "BURGERS (SIZE VỪA)",
			"dishes": [{
				"total_order": 1000,
				"is_deleted": false,
				"description": "Cheese Burger \nBurger Bò Phô Mai",
				"display_total_order": "999+",
				"price": {
					"text": "51,000đ",
					"unit": "đ",
					"value": 51000.0
				},
				"is_active": true,
				"display_order": 12,
				"total_like": "100+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/26392dd6-7e5f-4ed6-9ff2-9aab1a21-ad778734-200813142750.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/26392dd6-7e5f-4ed6-9ff2-9aab1a21-ad778734-200813142750.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/26392dd6-7e5f-4ed6-9ff2-9aab1a21-ad778734-200813142750.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/26392dd6-7e5f-4ed6-9ff2-9aab1a21-ad778734-200813142750.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/26392dd6-7e5f-4ed6-9ff2-9aab1a21-ad778734-200813142750.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/26392dd6-7e5f-4ed6-9ff2-9aab1a21-ad778734-200813142750.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 33,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5208625,
				"is_group_discount_item": true,
				"name": "Burger Bò Phô Mai"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Whopper Jr Extreme Cheesy\nBurger Bò nướng tràn phô mai cỡ vừa",
				"display_total_order": "999+",
				"price": {
					"text": "61,000đ",
					"unit": "đ",
					"value": 61000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "100+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/06f8c403-b284-4b49-8b0c-1b23c8bbab1d.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/06f8c403-b284-4b49-8b0c-1b23c8bbab1d.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/06f8c403-b284-4b49-8b0c-1b23c8bbab1d.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/06f8c403-b284-4b49-8b0c-1b23c8bbab1d.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/06f8c403-b284-4b49-8b0c-1b23c8bbab1d.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/06f8c403-b284-4b49-8b0c-1b23c8bbab1d.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 33,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9369334,
				"is_group_discount_item": true,
				"name": "Burger Whopper bò nướng tràn phô mai cỡ vừa "
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Burger Whopper Jr\nMón Signature - Burger bò nướng lửa hồng",
				"display_total_order": "999+",
				"price": {
					"text": "53,000đ",
					"unit": "đ",
					"value": 53000.0
				},
				"is_active": true,
				"display_order": 11,
				"total_like": "100+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811112352-whopperjr.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811112352-whopperjr.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811112352-whopperjr.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811112352-whopperjr.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811112352-whopperjr.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811112352-whopperjr.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5208642,
				"is_group_discount_item": true,
				"name": "Burger bò nướng Whopper cỡ vừa"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Single BBQ Burger\nBurger Bò Thịt Heo Xông Khói",
				"display_total_order": "999+",
				"price": {
					"text": "71,000đ",
					"unit": "đ",
					"value": 71000.0
				},
				"is_active": true,
				"display_order": 15,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/d357cfd8-9965-4b0d-944e-0fecb395f2b1.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/d357cfd8-9965-4b0d-944e-0fecb395f2b1.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/d357cfd8-9965-4b0d-944e-0fecb395f2b1.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/d357cfd8-9965-4b0d-944e-0fecb395f2b1.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/d357cfd8-9965-4b0d-944e-0fecb395f2b1.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/d357cfd8-9965-4b0d-944e-0fecb395f2b1.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 33,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5208495,
				"is_group_discount_item": true,
				"name": "Burger Bò Thịt Heo Xông Khói"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "CHIC'N CRISP Cheese Burger\nBurger Gà Phô Mai",
				"display_total_order": "999+",
				"price": {
					"text": "51,000đ",
					"unit": "đ",
					"value": 51000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/2c6bca55-08ee-4f30-8069-b32186cf-71150de2-200813142240.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/2c6bca55-08ee-4f30-8069-b32186cf-71150de2-200813142240.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/2c6bca55-08ee-4f30-8069-b32186cf-71150de2-200813142240.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/2c6bca55-08ee-4f30-8069-b32186cf-71150de2-200813142240.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/2c6bca55-08ee-4f30-8069-b32186cf-71150de2-200813142240.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/2c6bca55-08ee-4f30-8069-b32186cf-71150de2-200813142240.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 11149890,
				"is_group_discount_item": true,
				"name": "Burger Gà Phô Mai"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Spicy Tendercrisp Burger\nBurger Gà Giòn Cay",
				"display_total_order": "999+",
				"price": {
					"text": "71,000đ",
					"unit": "đ",
					"value": 71000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/f0398229-b9d0-4862-9ecb-a2a3caeb-4cd846b1-200813142355.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/f0398229-b9d0-4862-9ecb-a2a3caeb-4cd846b1-200813142355.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/f0398229-b9d0-4862-9ecb-a2a3caeb-4cd846b1-200813142355.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/f0398229-b9d0-4862-9ecb-a2a3caeb-4cd846b1-200813142355.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/f0398229-b9d0-4862-9ecb-a2a3caeb-4cd846b1-200813142355.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/f0398229-b9d0-4862-9ecb-a2a3caeb-4cd846b1-200813142355.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 11215633,
				"is_group_discount_item": true,
				"name": "Burger Gà Giòn Cay"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "Fish Burger\nBurger cá chiên giòn rụm sốt mayonnaise",
				"display_total_order": "500+",
				"price": {
					"text": "48,000đ",
					"unit": "đ",
					"value": 48000.0
				},
				"is_active": true,
				"display_order": 14,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/093c5c69-0e5c-4fac-bcba-737635d37413.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/093c5c69-0e5c-4fac-bcba-737635d37413.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/093c5c69-0e5c-4fac-bcba-737635d37413.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/093c5c69-0e5c-4fac-bcba-737635d37413.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/093c5c69-0e5c-4fac-bcba-737635d37413.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/093c5c69-0e5c-4fac-bcba-737635d37413.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 30,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112056,
				"is_group_discount_item": true,
				"name": "Burger Cá"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "Single Grill Onion Burger\nBurger Bò Nướng hành chiên",
				"display_total_order": "500+",
				"price": {
					"text": "53,000đ",
					"unit": "đ",
					"value": 53000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/2475d6c5-d647-4519-ae7c-22ce7485c1f9.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/2475d6c5-d647-4519-ae7c-22ce7485c1f9.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/2475d6c5-d647-4519-ae7c-22ce7485c1f9.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/2475d6c5-d647-4519-ae7c-22ce7485c1f9.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/2475d6c5-d647-4519-ae7c-22ce7485c1f9.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/2475d6c5-d647-4519-ae7c-22ce7485c1f9.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9869111,
				"is_group_discount_item": true,
				"name": "Burger Bò Nướng hành chiên"
			}]
		}, {
			"dish_type_id": 1236904,
			"dish_type_name": "BURGER (SIZE LỚN) ",
			"dishes": [{
				"total_order": 1000,
				"is_deleted": false,
				"description": "Whopper Extreme Cheesy XL\nBurger Bò nướng tràn phô mai cỡ lớn",
				"display_total_order": "999+",
				"price": {
					"text": "121,000đ",
					"unit": "đ",
					"value": 121000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/da300941-fd29-4160-8903-0eb7f3869dd3.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/da300941-fd29-4160-8903-0eb7f3869dd3.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/da300941-fd29-4160-8903-0eb7f3869dd3.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/da300941-fd29-4160-8903-0eb7f3869dd3.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/da300941-fd29-4160-8903-0eb7f3869dd3.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/da300941-fd29-4160-8903-0eb7f3869dd3.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9369342,
				"is_group_discount_item": true,
				"name": "Burger Whopper bò nướng tràn phô mai cỡ lớn"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "Whopper Burger XL\nBurger Bò nướng cỡ lớn",
				"display_total_order": "500+",
				"price": {
					"text": "117,000đ",
					"unit": "đ",
					"value": 117000.0
				},
				"is_active": true,
				"display_order": 1,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/ec32985f-1421-4223-aadc-838405ee-dc3126f3-200813143506.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/ec32985f-1421-4223-aadc-838405ee-dc3126f3-200813143506.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/ec32985f-1421-4223-aadc-838405ee-dc3126f3-200813143506.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/ec32985f-1421-4223-aadc-838405ee-dc3126f3-200813143506.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/ec32985f-1421-4223-aadc-838405ee-dc3126f3-200813143506.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/ec32985f-1421-4223-aadc-838405ee-dc3126f3-200813143506.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9500602,
				"is_group_discount_item": true,
				"name": "Burger  Whopper bò nướng cỡ lớn"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Whopper BBQ Bacon Cheese  Burger XL\nBurger Bò nướng phô mai thịt heo xông khói sốt BBQ",
				"display_total_order": "100+",
				"price": {
					"text": "140,000đ",
					"unit": "đ",
					"value": 140000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/66c9523a-6a0f-4792-a8b8-ecfd7e4e-1ba64a20-200813140548.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/66c9523a-6a0f-4792-a8b8-ecfd7e4e-1ba64a20-200813140548.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/66c9523a-6a0f-4792-a8b8-ecfd7e4e-1ba64a20-200813140548.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/66c9523a-6a0f-4792-a8b8-ecfd7e4e-1ba64a20-200813140548.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/66c9523a-6a0f-4792-a8b8-ecfd7e4e-1ba64a20-200813140548.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/66c9523a-6a0f-4792-a8b8-ecfd7e4e-1ba64a20-200813140548.jpeg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302082,
					"option_items": {
						"min_select": 0,
						"max_select": 6,
						"items": [{
							"name": "Miếng Bò Whopper 5 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860451,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "57,000đ",
								"value": 57000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Bò Whopper 4 Inch",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860459,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "27,000đ",
								"value": 27000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thịt Xông Khói (4pcs)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860475,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "15,000đ",
								"value": 15000.0,
								"unit": "đ"
							}
						}, {
							"name": "Phô Mai Lát (1pc)",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 885988,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "5,000đ",
								"value": 5000.0,
								"unit": "đ"
							}
						}, {
							"name": "Thêm 1 Chén Sốt Phô Mai",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 886003,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "10,000đ",
								"value": 10000.0,
								"unit": "đ"
							}
						}, {
							"name": "Miếng Thịt Gà Xay",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1008366,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "24,000đ",
								"value": 24000.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP BURGER"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 11247117,
				"is_group_discount_item": true,
				"name": "Burger  Whopper bò nướng phô mai thịt heo xông khói sốt BBQ"
			}]
		}, {
			"dish_type_id": 1237128,
			"dish_type_name": "SIDE DISH - món lẻ",
			"dishes": [{
				"total_order": 1000,
				"is_deleted": false,
				"description": "Chicken Nuggets (6 pcs)",
				"display_total_order": "999+",
				"price": {
					"text": "48,000đ",
					"unit": "đ",
					"value": 48000.0
				},
				"is_active": true,
				"display_order": 18,
				"total_like": "100+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/4d4986d2-d77b-49c9-ad19-b7fd56d2-173c8d34-200813144527.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/4d4986d2-d77b-49c9-ad19-b7fd56d2-173c8d34-200813144527.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/4d4986d2-d77b-49c9-ad19-b7fd56d2-173c8d34-200813144527.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/4d4986d2-d77b-49c9-ad19-b7fd56d2-173c8d34-200813144527.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/4d4986d2-d77b-49c9-ad19-b7fd56d2-173c8d34-200813144527.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/4d4986d2-d77b-49c9-ad19-b7fd56d2-173c8d34-200813144527.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112094,
				"is_group_discount_item": true,
				"name": "Gà Nuggets (6pcs)"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Cheese Stick (2pcs)",
				"display_total_order": "999+",
				"price": {
					"text": "27,000đ",
					"unit": "đ",
					"value": 27000.0
				},
				"is_active": true,
				"display_order": 22,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811195920-pho-mai-que-cheesesticks-.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811195920-pho-mai-que-cheesesticks-.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811195920-pho-mai-que-cheesesticks-.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811195920-pho-mai-que-cheesesticks-.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811195920-pho-mai-que-cheesesticks-.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811195920-pho-mai-que-cheesesticks-.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204287,
				"is_group_discount_item": true,
				"name": "Phô Mai Que (2pcs)"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "French Fries (L)",
				"display_total_order": "999+",
				"price": {
					"text": "39,000đ",
					"unit": "đ",
					"value": 39000.0
				},
				"is_active": true,
				"display_order": 21,
				"total_like": "100+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/0eabf2ba-8273-4a1d-838e-6164ca82-388f018e-200813144630.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/0eabf2ba-8273-4a1d-838e-6164ca82-388f018e-200813144630.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/0eabf2ba-8273-4a1d-838e-6164ca82-388f018e-200813144630.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/0eabf2ba-8273-4a1d-838e-6164ca82-388f018e-200813144630.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/0eabf2ba-8273-4a1d-838e-6164ca82-388f018e-200813144630.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/0eabf2ba-8273-4a1d-838e-6164ca82-388f018e-200813144630.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112119,
				"is_group_discount_item": true,
				"name": "Khoai Tây Chiên (L)"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "French Fries (M)",
				"display_total_order": "999+",
				"price": {
					"text": "29,000đ",
					"unit": "đ",
					"value": 29000.0
				},
				"is_active": true,
				"display_order": 20,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/e361c259-9c01-4c32-869e-b2377c10-6981c405-200813144645.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/e361c259-9c01-4c32-869e-b2377c10-6981c405-200813144645.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/e361c259-9c01-4c32-869e-b2377c10-6981c405-200813144645.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/e361c259-9c01-4c32-869e-b2377c10-6981c405-200813144645.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/e361c259-9c01-4c32-869e-b2377c10-6981c405-200813144645.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/e361c259-9c01-4c32-869e-b2377c10-6981c405-200813144645.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112102,
				"is_group_discount_item": true,
				"name": "Khoai Tây Chiên (M)"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Chicken Nuggets (4 pcs)",
				"display_total_order": "999+",
				"price": {
					"text": "36,000đ",
					"unit": "đ",
					"value": 36000.0
				},
				"is_active": true,
				"display_order": 17,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/4c859efd-dddf-4b69-b5bf-f34c66aa-1b55e4d6-200813144512.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/4c859efd-dddf-4b69-b5bf-f34c66aa-1b55e4d6-200813144512.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/4c859efd-dddf-4b69-b5bf-f34c66aa-1b55e4d6-200813144512.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/4c859efd-dddf-4b69-b5bf-f34c66aa-1b55e4d6-200813144512.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/4c859efd-dddf-4b69-b5bf-f34c66aa-1b55e4d6-200813144512.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/4c859efd-dddf-4b69-b5bf-f34c66aa-1b55e4d6-200813144512.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112084,
				"is_group_discount_item": true,
				"name": "Gà Nuggets (4pcs)"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Cheesy Fries ",
				"display_total_order": "999+",
				"price": {
					"text": "34,000đ",
					"unit": "đ",
					"value": 34000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/3801ba69-63de-4952-b49c-2559dc1b-3189b6d8-200813144749.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/3801ba69-63de-4952-b49c-2559dc1b-3189b6d8-200813144749.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/3801ba69-63de-4952-b49c-2559dc1b-3189b6d8-200813144749.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/3801ba69-63de-4952-b49c-2559dc1b-3189b6d8-200813144749.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/3801ba69-63de-4952-b49c-2559dc1b-3189b6d8-200813144749.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/3801ba69-63de-4952-b49c-2559dc1b-3189b6d8-200813144749.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9369423,
				"is_group_discount_item": true,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "Cheese Stick (8pcs)",
				"display_total_order": "500+",
				"price": {
					"text": "77,000đ",
					"unit": "đ",
					"value": 77000.0
				},
				"is_active": true,
				"display_order": 23,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/365b6de6-839d-47a3-9c4d-37009a25-9e9dd6a6-200813145015.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/365b6de6-839d-47a3-9c4d-37009a25-9e9dd6a6-200813145015.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/365b6de6-839d-47a3-9c4d-37009a25-9e9dd6a6-200813145015.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/365b6de6-839d-47a3-9c4d-37009a25-9e9dd6a6-200813145015.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/365b6de6-839d-47a3-9c4d-37009a25-9e9dd6a6-200813145015.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/365b6de6-839d-47a3-9c4d-37009a25-9e9dd6a6-200813145015.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9112979,
				"is_group_discount_item": true,
				"name": "Phô Mai Que (8pcs)"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "Cheesy Fries Bacon",
				"display_total_order": "500+",
				"price": {
					"text": "47,000đ",
					"unit": "đ",
					"value": 47000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/cc0cf090-3056-4a20-a4f0-0e930686-b56aaafb-200813144816.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/cc0cf090-3056-4a20-a4f0-0e930686-b56aaafb-200813144816.jpeg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/cc0cf090-3056-4a20-a4f0-0e930686-b56aaafb-200813144816.jpeg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/cc0cf090-3056-4a20-a4f0-0e930686-b56aaafb-200813144816.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/cc0cf090-3056-4a20-a4f0-0e930686-b56aaafb-200813144816.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/cc0cf090-3056-4a20-a4f0-0e930686-b56aaafb-200813144816.jpeg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9369454,
				"is_group_discount_item": true,
				"name": "Khoai Tây Chiên Tắm Phô Mai Với Thịt Xông Khói"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "Mix wing (4pcs)",
				"display_total_order": "500+",
				"price": {
					"text": "77,000đ",
					"unit": "đ",
					"value": 77000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/b24ae10b-06ce-4d10-928b-a73f56c96a17.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/b24ae10b-06ce-4d10-928b-a73f56c96a17.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/b24ae10b-06ce-4d10-928b-a73f56c96a17.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/b24ae10b-06ce-4d10-928b-a73f56c96a17.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/b24ae10b-06ce-4d10-928b-a73f56c96a17.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/b24ae10b-06ce-4d10-928b-a73f56c96a17.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9641267,
				"is_group_discount_item": true,
				"name": "Mix wing (4pcs)"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Mix wing (6pcs)",
				"display_total_order": "100+",
				"price": {
					"text": "111,000đ",
					"unit": "đ",
					"value": 111000.0
				},
				"is_active": true,
				"display_order": 0,
				"total_like": "5",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/08fc07ec-ca47-4d7e-8cd4-cc8b4729c247.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/08fc07ec-ca47-4d7e-8cd4-cc8b4729c247.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/08fc07ec-ca47-4d7e-8cd4-cc8b4729c247.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/08fc07ec-ca47-4d7e-8cd4-cc8b4729c247.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/08fc07ec-ca47-4d7e-8cd4-cc8b4729c247.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/08fc07ec-ca47-4d7e-8cd4-cc8b4729c247.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 9641279,
				"is_group_discount_item": true,
				"name": "Mix wing (6pcs)"
			}]
		}, {
			"dish_type_id": 1237362,
			"dish_type_name": "GÀ RÁN",
			"dishes": [{
				"total_order": 1000,
				"is_deleted": false,
				"description": "Chiken Flamin' (1pc) ",
				"display_total_order": "999+",
				"price": {
					"text": "38,000đ",
					"unit": "đ",
					"value": 38000.0
				},
				"is_active": true,
				"display_order": -2,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/8751b3d9-6ad8-4abf-9802-4d98cca47dbf.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/8751b3d9-6ad8-4abf-9802-4d98cca47dbf.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/8751b3d9-6ad8-4abf-9802-4d98cca47dbf.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/8751b3d9-6ad8-4abf-9802-4d98cca47dbf.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/8751b3d9-6ad8-4abf-9802-4d98cca47dbf.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/8751b3d9-6ad8-4abf-9802-4d98cca47dbf.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5205199,
				"is_group_discount_item": true,
				"name": "Gà Giòn Cay - 1 Miếng"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Chicken BBQ (1pc)",
				"display_total_order": "999+",
				"price": {
					"text": "41,000đ",
					"unit": "đ",
					"value": 41000.0
				},
				"is_active": true,
				"display_order": -3,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/2018111101944-bbqwings.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/2018111101944-bbqwings.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/2018111101944-bbqwings.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/2018111101944-bbqwings.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/2018111101944-bbqwings.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/2018111101944-bbqwings.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5205215,
				"is_group_discount_item": true,
				"name": "Cánh Gà BBQ Nướng - 1 Miếng"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Chicken Crispy (1pc)",
				"display_total_order": "999+",
				"price": {
					"text": "38,000đ",
					"unit": "đ",
					"value": 38000.0
				},
				"is_active": true,
				"display_order": -1,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/3743115e-d012-40ff-9221-bde25c97d43e.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/3743115e-d012-40ff-9221-bde25c97d43e.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/3743115e-d012-40ff-9221-bde25c97d43e.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/3743115e-d012-40ff-9221-bde25c97d43e.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/3743115e-d012-40ff-9221-bde25c97d43e.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/3743115e-d012-40ff-9221-bde25c97d43e.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204990,
				"is_group_discount_item": true,
				"name": "Gà Giòn Không Cay - 1 Miếng"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Combo Chiken Flamin (2pcs) + FF + Coke \nCombo Gà Cay - 2 Miếng + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "92,000đ",
					"unit": "đ",
					"value": 92000.0
				},
				"is_active": true,
				"display_order": -5,
				"total_like": "8",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/4b8e1144-a6a8-4927-37f4-b20fd7f232d3.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/4b8e1144-a6a8-4927-37f4-b20fd7f232d3.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/4b8e1144-a6a8-4927-37f4-b20fd7f232d3.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/4b8e1144-a6a8-4927-37f4-b20fd7f232d3.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/4b8e1144-a6a8-4927-37f4-b20fd7f232d3.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/4b8e1144-a6a8-4927-37f4-b20fd7f232d3.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5205466,
				"is_group_discount_item": true,
				"name": "Combo Gà Cay - 2 Miếng"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Combo Chicken BBQ (2pcs) + FF + Coke\nCombo Cánh gà BBQ - 2 Miếng + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "101,000đ",
					"unit": "đ",
					"value": 101000.0
				},
				"is_active": true,
				"display_order": -6,
				"total_like": "7",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/6f45f5bf-95d4-4ff8-3b52-cb4fe770bcaa.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/6f45f5bf-95d4-4ff8-3b52-cb4fe770bcaa.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/6f45f5bf-95d4-4ff8-3b52-cb4fe770bcaa.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/6f45f5bf-95d4-4ff8-3b52-cb4fe770bcaa.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/6f45f5bf-95d4-4ff8-3b52-cb4fe770bcaa.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/6f45f5bf-95d4-4ff8-3b52-cb4fe770bcaa.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5205528,
				"is_group_discount_item": true,
				"name": "Combo Cánh gà BBQ - 2 Miếng"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Combo Chicken Crispy (2pcs) + FF + Coke\nCombo Gà Không Cay - 2 Miếng + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "92,000đ",
					"unit": "đ",
					"value": 92000.0
				},
				"is_active": true,
				"display_order": -4,
				"total_like": "5",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/d48a1968-6b81-4a00-23d1-66e2504b5380.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/d48a1968-6b81-4a00-23d1-66e2504b5380.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/d48a1968-6b81-4a00-23d1-66e2504b5380.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/d48a1968-6b81-4a00-23d1-66e2504b5380.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/d48a1968-6b81-4a00-23d1-66e2504b5380.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/d48a1968-6b81-4a00-23d1-66e2504b5380.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5205407,
				"is_group_discount_item": true,
				"name": "Combo Gà Không Cay - 2 Miếng"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Combo Chicken BBQ (3pcs) + FF + Coke\nCombo Cánh gà BBQ - 3 Miếng + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "121,000đ",
					"unit": "đ",
					"value": 121000.0
				},
				"is_active": true,
				"display_order": -13,
				"total_like": "3",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/26c49719-c480-4746-1a1c-128d768efa32.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/26c49719-c480-4746-1a1c-128d768efa32.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/26c49719-c480-4746-1a1c-128d768efa32.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/26c49719-c480-4746-1a1c-128d768efa32.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/26c49719-c480-4746-1a1c-128d768efa32.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/26c49719-c480-4746-1a1c-128d768efa32.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 10836472,
				"is_group_discount_item": true,
				"name": "Combo Cánh gà BBQ - 3 Miếng"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Combo Chiken Flamin (3pcs) + FF + Coke \nCombo Gà Cay - 3 Miếng + Khoai tây chiên + Nước ngọt",
				"display_total_order": "100+",
				"price": {
					"text": "121,000đ",
					"unit": "đ",
					"value": 121000.0
				},
				"is_active": true,
				"display_order": -14,
				"total_like": "5",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/dbb0ffa2-4929-423a-7aca-c87a6828acb3.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/dbb0ffa2-4929-423a-7aca-c87a6828acb3.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/dbb0ffa2-4929-423a-7aca-c87a6828acb3.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/dbb0ffa2-4929-423a-7aca-c87a6828acb3.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/dbb0ffa2-4929-423a-7aca-c87a6828acb3.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/dbb0ffa2-4929-423a-7aca-c87a6828acb3.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 10836625,
				"is_group_discount_item": true,
				"name": "Combo Gà Cay - 3 Miếng"
			}, {
				"total_order": 50,
				"is_deleted": false,
				"description": "Combo Chicken Crispy (3pcs) + FF + Coke\nCombo Gà Không Cay - 3 Miếng + Khoai tây chiên + Nước ngọt",
				"display_total_order": "50+",
				"price": {
					"text": "121,000đ",
					"unit": "đ",
					"value": 121000.0
				},
				"is_active": true,
				"display_order": -15,
				"total_like": "4",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/c26df9a7-28c4-4b36-2dc6-e0fa47426d46.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/c26df9a7-28c4-4b36-2dc6-e0fa47426d46.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/c26df9a7-28c4-4b36-2dc6-e0fa47426d46.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/c26df9a7-28c4-4b36-2dc6-e0fa47426d46.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/c26df9a7-28c4-4b36-2dc6-e0fa47426d46.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/c26df9a7-28c4-4b36-2dc6-e0fa47426d46.jpg",
					"height": 1242
				}],
				"options": [{
					"ntop": "",
					"mandatory": false,
					"id": 302093,
					"option_items": {
						"min_select": 0,
						"max_select": 1,
						"items": [{
							"name": "Đổi Nước Fanta",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860531,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Sprite",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860539,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Trà Chanh",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860550,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Milo",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860576,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke Light",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860585,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "2,000đ",
								"value": 2000.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Suối",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860593,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Cam",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 860601,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}, {
							"name": "Đổi Nước Coke",
							"weight": 1,
							"ntop_price": {
								"text": "0đ",
								"value": 0,
								"unit": "đ"
							},
							"max_quantity": 1,
							"id": 1155365,
							"is_default": false,
							"top_order": 0,
							"price": {
								"text": "0đ",
								"value": 0.0,
								"unit": "đ"
							}
						}]
					},
					"name": "POP-UP DRINK"
				}],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 10836617,
				"is_group_discount_item": true,
				"name": "Combo Gà Không Cay - 3 Miếng"
			}]
		}, {
			"dish_type_id": 1237433,
			"dish_type_name": "NƯỚC UỐNG",
			"dishes": [{
				"total_order": 1000,
				"is_deleted": false,
				"description": "Milo",
				"display_total_order": "999+",
				"price": {
					"text": "21,000đ",
					"unit": "đ",
					"value": 21000.0
				},
				"is_active": true,
				"display_order": -11,
				"total_like": "50+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811110817-milo.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811110817-milo.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811110817-milo.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811110817-milo.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811110817-milo.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811110817-milo.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204632,
				"is_group_discount_item": true,
				"name": "Milo"
			}, {
				"total_order": 1000,
				"is_deleted": false,
				"description": "Coca Cola",
				"display_total_order": "999+",
				"price": {
					"text": "19,000đ",
					"unit": "đ",
					"value": 19000.0
				},
				"is_active": true,
				"display_order": -15,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811110919-coke.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811110919-coke.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811110919-coke.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811110919-coke.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811110919-coke.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811110919-coke.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204689,
				"is_group_discount_item": true,
				"name": "Coca Cola"
			}, {
				"total_order": 500,
				"is_deleted": false,
				"description": "Nestea",
				"display_total_order": "500+",
				"price": {
					"text": "19,000đ",
					"unit": "đ",
					"value": 19000.0
				},
				"is_active": true,
				"display_order": -12,
				"total_like": "10+",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811110836-nesttea.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811110836-nesttea.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811110836-nesttea.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811110836-nesttea.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811110836-nesttea.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811110836-nesttea.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204641,
				"is_group_discount_item": true,
				"name": "Trà Chanh"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Sprite",
				"display_total_order": "100+",
				"price": {
					"text": "19,000đ",
					"unit": "đ",
					"value": 19000.0
				},
				"is_active": true,
				"display_order": -13,
				"total_like": "3",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811110853-sprite.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811110853-sprite.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811110853-sprite.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811110853-sprite.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811110853-sprite.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811110853-sprite.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204658,
				"is_group_discount_item": true,
				"name": "Sprite"
			}, {
				"total_order": 100,
				"is_deleted": false,
				"description": "Coke Light",
				"display_total_order": "100+",
				"price": {
					"text": "21,000đ",
					"unit": "đ",
					"value": 21000.0
				},
				"is_active": true,
				"display_order": -10,
				"total_like": "2",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811110741-cokelight.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811110741-cokelight.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811110741-cokelight.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811110741-cokelight.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811110741-cokelight.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811110741-cokelight.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204610,
				"is_group_discount_item": true,
				"name": "Coke Light"
			}, {
				"total_order": 50,
				"is_deleted": false,
				"description": "Fanta",
				"display_total_order": "50+",
				"price": {
					"text": "19,000đ",
					"unit": "đ",
					"value": 19000.0
				},
				"is_active": true,
				"display_order": -14,
				"total_like": "1",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/20181111094-fanta.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/20181111094-fanta.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/20181111094-fanta.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/20181111094-fanta.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/20181111094-fanta.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/20181111094-fanta.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204667,
				"is_group_discount_item": true,
				"name": "Fanta"
			}, {
				"total_order": 10,
				"is_deleted": false,
				"description": "Minute Maid ",
				"display_total_order": "10+",
				"price": {
					"text": "19,000đ",
					"unit": "đ",
					"value": 19000.0
				},
				"is_active": true,
				"display_order": -9,
				"total_like": "0",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811110724-minutemaid.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811110724-minutemaid.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811110724-minutemaid.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811110724-minutemaid.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811110724-minutemaid.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811110724-minutemaid.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204591,
				"is_group_discount_item": true,
				"name": "Nước Cam (Teppy)"
			}, {
				"total_order": 10,
				"is_deleted": false,
				"description": "Dasani",
				"display_total_order": "10+",
				"price": {
					"text": "19,000đ",
					"unit": "đ",
					"value": 19000.0
				},
				"is_active": true,
				"display_order": -7,
				"total_like": "2",
				"properties": [],
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g16/152325/s120x120/201811110624-nuoc-suoi.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g16/152325/s180x180/201811110624-nuoc-suoi.jpg",
					"height": 180
				}, {
					"width": 400,
					"value": "https://images.foody.vn/res/g16/152325/s400x400/201811110624-nuoc-suoi.jpg",
					"height": 400
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g16/152325/s570x570/201811110624-nuoc-suoi.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g16/152325/s750x750/201811110624-nuoc-suoi.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g16/152325/s1242x1242/201811110624-nuoc-suoi.jpg",
					"height": 1242
				}],
				"options": [],
				"is_available": true,
				"time": {
					"available": [],
					"week_days": [{
						"start": "00:00",
						"week_day": 1,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 2,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 3,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 4,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 5,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 6,
						"end": "23:59"
					}, {
						"start": "00:00",
						"week_day": 7,
						"end": "23:59"
					}],
					"not_available": []
				},
				"quantity": 0,
				"id": 5204545,
				"is_group_discount_item": true,
				"name": "Nước Suối"
			}]
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetMenu);
  }

  @override
  response({String? url}) {
    return jsonDecode(_json);
  }

}