


import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeFlashSale extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"item_infos": [{
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g109/1089979/s120x120/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g109/1089979/s180x180/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g109/1089979/s570x570/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g109/1089979/s750x750/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g109/1089979/s1242x1242/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "50,000đ",
					"unit": "đ",
					"value": 50000.0
				},
				"dish_id": 38419369,
				"name": "Bánh bông lan sốt ruốc"
			},
			"flash_sale_info": {
				"sold": 2,
				"discount_price": {
					"text": "25,000đ",
					"unit": "đ",
					"value": 25000.0
				},
				"session_id": 1073,
				"stock": 100
			},
			"delivery_info": {
				"delivery_id": 199312,
				"name": "Tiệm Bánh Chie - Tôn Thất Tùng",
				"restaurant_id": 1089979,
				"prepare_time": 10,
				"longitude": 105.827187617,
				"latitude": 21.0019506,
				"rewrite_url": "tiem-banh-chie-ton-that-tung",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1092245/s120x120/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1092245/s180x180/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1092245/s570x570/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1092245/s750x750/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1092245/s1242x1242/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "26,000đ",
					"unit": "đ",
					"value": 26000.0
				},
				"dish_id": 44298404,
				"name": "Nấm Kim Châm"
			},
			"flash_sale_info": {
				"sold": 1,
				"discount_price": {
					"text": "13,000đ",
					"unit": "đ",
					"value": 13000.0
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 201634,
				"name": "Siêu Thị Lẩu - Thái Hà",
				"restaurant_id": 1092245,
				"prepare_time": 3,
				"longitude": 105.823053850968,
				"latitude": 21.0102255249892,
				"rewrite_url": "sieu-thi-lau-thai-ha",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1091371/s120x120/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1091371/s180x180/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1091371/s570x570/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1091371/s750x750/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1091371/s1242x1242/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "40,000đ",
					"unit": "đ",
					"value": 40000.0
				},
				"dish_id": 18150220,
				"name": "Chè Khúc Bạch Phomai "
			},
			"flash_sale_info": {
				"sold": 1,
				"discount_price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 200742,
				"name": "Tuấn MU Fresh - Thực Phẩm Rau Củ Quả Tươi - Tôn Đức Thắng",
				"restaurant_id": 1091371,
				"prepare_time": 24,
				"longitude": 105.832361496789,
				"latitude": 21.024501086008,
				"rewrite_url": "tuan-mu-fresh-thuc-pham-rau-cu-qua-tuoi-ton-duc-thang",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1098105/s120x120/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1098105/s180x180/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1098105/s570x570/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1098105/s750x750/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1098105/s1242x1242/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "35,000đ",
					"unit": "đ",
					"value": 35000.0
				},
				"dish_id": 23354150,
				"name": "Khay Roi Đỏ Đồng Tháp Gọt Sẵn"
			},
			"flash_sale_info": {
				"sold": 5,
				"discount_price": {
					"text": "17,500đ",
					"unit": "đ",
					"value": 17500.0
				},
				"session_id": 1073,
				"stock": 50
			},
			"delivery_info": {
				"delivery_id": 207558,
				"name": "Tiệm Hoa Quả & Rau Củ Tươi Sạch - Nguyễn Ngọc Vũ",
				"restaurant_id": 1098105,
				"prepare_time": 10,
				"longitude": 105.807393540329,
				"latitude": 21.0098968563028,
				"rewrite_url": "tiem-hoa-qua-rau-cu-tuoi-sach-nguyen-ngoc-vu",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1090442/s120x120/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1090442/s180x180/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1090442/s570x570/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1090442/s750x750/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1090442/s1242x1242/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "45,000đ",
					"unit": "đ",
					"value": 45000.0
				},
				"dish_id": 18187068,
				"name": "Khay Bưởi Da Xanh (Nửa Quả)"
			},
			"flash_sale_info": {
				"sold": 6,
				"discount_price": {
					"text": "17,500đ",
					"unit": "đ",
					"value": 17500.0
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 199783,
				"name": "Hoa Quả Đồng Quê - Nguyễn Ngọc Vũ",
				"restaurant_id": 1090442,
				"prepare_time": 10,
				"longitude": 105.807318666504,
				"latitude": 21.0099379416894,
				"rewrite_url": "hoa-qua-dong-que-nguyen-ngoc-vu",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1092038/s120x120/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1092038/s180x180/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1092038/s570x570/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1092038/s750x750/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1092038/s1242x1242/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 20183852,
				"name": "MÍA THẠCH LÁ DỨA"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "10,000đ",
					"unit": "đ",
					"value": 10000.0
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 201429,
				"name": "Hà - Hoa Quả Tươi & Đặc Sản 3 Miền",
				"restaurant_id": 1092038,
				"prepare_time": 10,
				"longitude": 105.827575082041,
				"latitude": 21.032598752921,
				"rewrite_url": "ha-hoa-qua-tuoi-dac-san-3-mien",
				"location_url": "ha-noi"
			}
		}],
		"session_info": {
			"start_time": 1645704000,
			"end_time": 1645714799,
			"session_id": 1073
		}
	},
	"result": "success"
}
  ''';

  final String _jsonOngoing = r'''
  {
	"reply": {
		"item_infos": [{
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g109/1089979/s120x120/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g109/1089979/s180x180/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g109/1089979/s570x570/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g109/1089979/s750x750/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g109/1089979/s1242x1242/0d98446e-bf2f-43d8-9987-4f7a2a62-f01c0fbc-220109103119.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "50,000đ",
					"value": 50000.0,
					"unit": "đ"
				},
				"dish_id": 38419369,
				"name": "Bánh bông lan sốt ruốc"
			},
			"flash_sale_info": {
				"sold": 2,
				"discount_price": {
					"text": "25,000đ",
					"value": 25000.0,
					"unit": "đ"
				},
				"session_id": 1073,
				"stock": 100
			},
			"delivery_info": {
				"delivery_id": 199312,
				"name": "Tiệm Bánh Chie - Tôn Thất Tùng",
				"restaurant_id": 1089979,
				"prepare_time": 10,
				"longitude": 105.827187617,
				"latitude": 21.0019506,
				"rewrite_url": "tiem-banh-chie-ton-that-tung",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1092245/s120x120/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1092245/s180x180/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1092245/s570x570/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1092245/s750x750/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1092245/s1242x1242/a027a6db-9362-42a3-b1c5-b5fc1042-99ff8f93-220114133849.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "26,000đ",
					"value": 26000.0,
					"unit": "đ"
				},
				"dish_id": 44298404,
				"name": "Nấm Kim Châm"
			},
			"flash_sale_info": {
				"sold": 1,
				"discount_price": {
					"text": "13,000đ",
					"value": 13000.0,
					"unit": "đ"
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 201634,
				"name": "Siêu Thị Lẩu - Thái Hà",
				"restaurant_id": 1092245,
				"prepare_time": 3,
				"longitude": 105.823053850968,
				"latitude": 21.0102255249892,
				"rewrite_url": "sieu-thi-lau-thai-ha",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1091371/s120x120/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1091371/s180x180/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1091371/s570x570/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1091371/s750x750/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1091371/s1242x1242/ad7af700-80c4-4e73-9bb7-69f3c547-b0a63954-211104201328.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "40,000đ",
					"value": 40000.0,
					"unit": "đ"
				},
				"dish_id": 18150220,
				"name": "Chè Khúc Bạch Phomai "
			},
			"flash_sale_info": {
				"sold": 1,
				"discount_price": {
					"text": "20,000đ",
					"value": 20000.0,
					"unit": "đ"
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 200742,
				"name": "Tuấn MU Fresh - Thực Phẩm Rau Củ Quả Tươi - Tôn Đức Thắng",
				"restaurant_id": 1091371,
				"prepare_time": 24,
				"longitude": 105.832361496789,
				"latitude": 21.024501086008,
				"rewrite_url": "tuan-mu-fresh-thuc-pham-rau-cu-qua-tuoi-ton-duc-thang",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1098105/s120x120/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1098105/s180x180/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1098105/s570x570/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1098105/s750x750/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1098105/s1242x1242/e1ad1e66-82b1-4d65-92fc-6d4217fd-bcd5798a-211213194551.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "35,000đ",
					"value": 35000.0,
					"unit": "đ"
				},
				"dish_id": 23354150,
				"name": "Khay Roi Đỏ Đồng Tháp Gọt Sẵn"
			},
			"flash_sale_info": {
				"sold": 5,
				"discount_price": {
					"text": "17,500đ",
					"value": 17500.0,
					"unit": "đ"
				},
				"session_id": 1073,
				"stock": 50
			},
			"delivery_info": {
				"delivery_id": 207558,
				"name": "Tiệm Hoa Quả & Rau Củ Tươi Sạch - Nguyễn Ngọc Vũ",
				"restaurant_id": 1098105,
				"prepare_time": 10,
				"longitude": 105.807393540329,
				"latitude": 21.0098968563028,
				"rewrite_url": "tiem-hoa-qua-rau-cu-tuoi-sach-nguyen-ngoc-vu",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1090442/s120x120/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1090442/s180x180/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1090442/s570x570/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1090442/s750x750/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1090442/s1242x1242/47b22311-558a-47f7-b45a-b6d2dcce-9a886acd-210808095251.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "45,000đ",
					"value": 45000.0,
					"unit": "đ"
				},
				"dish_id": 18187068,
				"name": "Khay Bưởi Da Xanh (Nửa Quả)"
			},
			"flash_sale_info": {
				"sold": 7,
				"discount_price": {
					"text": "17,500đ",
					"value": 17500.0,
					"unit": "đ"
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 199783,
				"name": "Hoa Quả Đồng Quê - Nguyễn Ngọc Vũ",
				"restaurant_id": 1090442,
				"prepare_time": 10,
				"longitude": 105.807318666504,
				"latitude": 21.0099379416894,
				"rewrite_url": "hoa-qua-dong-que-nguyen-ngoc-vu",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1092038/s120x120/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1092038/s180x180/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1092038/s570x570/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1092038/s750x750/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1092038/s1242x1242/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"value": 20000.0,
					"unit": "đ"
				},
				"dish_id": 20183852,
				"name": "MÍA THẠCH LÁ DỨA"
			},
			"flash_sale_info": {
				"sold": 1,
				"discount_price": {
					"text": "10,000đ",
					"value": 10000.0,
					"unit": "đ"
				},
				"session_id": 1073,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 201429,
				"name": "Hà - Hoa Quả Tươi & Đặc Sản 3 Miền",
				"restaurant_id": 1092038,
				"prepare_time": 10,
				"longitude": 105.827575082041,
				"latitude": 21.032598752921,
				"rewrite_url": "ha-hoa-qua-tuoi-dac-san-3-mien",
				"location_url": "ha-noi"
			}
		}]
	},
	"result": "success"
}
  ''';

  final String _jsonComingSoon = r'''
  {
	"reply": {
		"item_infos": [{
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g109/1089130/s120x120/7ecd458b-b946-4363-ac05-7cb4311a-e1e8d2cd-210808012810.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g109/1089130/s180x180/7ecd458b-b946-4363-ac05-7cb4311a-e1e8d2cd-210808012810.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g109/1089130/s570x570/7ecd458b-b946-4363-ac05-7cb4311a-e1e8d2cd-210808012810.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g109/1089130/s750x750/7ecd458b-b946-4363-ac05-7cb4311a-e1e8d2cd-210808012810.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g109/1089130/s1242x1242/7ecd458b-b946-4363-ac05-7cb4311a-e1e8d2cd-210808012810.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "24,000đ",
					"value": 24000.0,
					"unit": "đ"
				},
				"dish_id": 18186750,
				"name": "Cánh gà nướng"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?2,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1087,
				"stock": 50
			},
			"delivery_info": {
				"delivery_id": 198446,
				"name": "Tanka Quán - Chân & Cánh Gà Ướp Sẵn - Nguyên Hồng",
				"restaurant_id": 1089130,
				"prepare_time": 18,
				"longitude": 105.8116544,
				"latitude": 21.0207133,
				"rewrite_url": "tanka-quan-chan-canh-ga-uop-san-nguyen-hong",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1092038/s120x120/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1092038/s180x180/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1092038/s570x570/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1092038/s750x750/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1092038/s1242x1242/7fce613f-5809-4557-95e6-3a4f9ccb-00766289-210916020422.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"value": 20000.0,
					"unit": "đ"
				},
				"dish_id": 20183852,
				"name": "MÍA THẠCH LÁ DỨA"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?0,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1087,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 201429,
				"name": "Hà - Hoa Quả Tươi & Đặc Sản 3 Miền",
				"restaurant_id": 1092038,
				"prepare_time": 10,
				"longitude": 105.827575082041,
				"latitude": 21.032598752921,
				"rewrite_url": "ha-hoa-qua-tuoi-dac-san-3-mien",
				"location_url": "ha-noi"
			}
		}]
	},
	"result": "success"
}
  ''';

  final String _jsonTomorrow = r'''
  {
	"reply": {
		"item_infos": [{
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g90/896838/s120x120/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g90/896838/s180x180/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g90/896838/s570x570/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g90/896838/s750x750/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g90/896838/s1242x1242/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "30,000đ",
					"unit": "đ",
					"value": 30000.0
				},
				"dish_id": 48633799,
				"name": "Chả Cá Thu Chiên"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 10,
				"name": "Anh Béo - Bún & Bánh Đa Trộn - Minh Khai",
				"latitude": 20.995998,
				"rewrite_url": "anh-beo-bun-banh-da-tron",
				"restaurant_id": 896838,
				"delivery_id": 79818,
				"longitude": 105.852376,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g93/926283/s120x120/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g93/926283/s180x180/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g93/926283/s570x570/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g93/926283/s750x750/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g93/926283/s1242x1242/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 7574475,
				"name": "Bánh Mỳ Pate Trứng"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Bánh Mì Hội An - Kim Ngưu",
				"latitude": 20.999236,
				"rewrite_url": "banh-mi-hoi-an-kim-nguu",
				"restaurant_id": 926283,
				"delivery_id": 85551,
				"longitude": 105.861606,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1095417/s120x120/d2baab94-64c7-4d78-9099-baa66422-03d32379-211202131731.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1095417/s180x180/d2baab94-64c7-4d78-9099-baa66422-03d32379-211202131731.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1095417/s570x570/d2baab94-64c7-4d78-9099-baa66422-03d32379-211202131731.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1095417/s750x750/d2baab94-64c7-4d78-9099-baa66422-03d32379-211202131731.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1095417/s1242x1242/d2baab94-64c7-4d78-9099-baa66422-03d32379-211202131731.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 18668023,
				"name": "Dưa chuột 500g"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 20
			},
			"delivery_info": {
				"prepare_time": 20,
				"name": "Siêu Thị Giá Rẻ Trang Bồ -  Chợ Xanh Kim Liên",
				"latitude": 21.006058,
				"rewrite_url": "sieu-thi-gia-re-trang-bo-cho-xanh-kim-lien",
				"restaurant_id": 1095417,
				"delivery_id": 204813,
				"longitude": 105.835392,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g108/1075843/s120x120/b5c7b39a-4e4e-4e52-b1c1-6492e9c0-32846f8a-210825195514.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g108/1075843/s180x180/b5c7b39a-4e4e-4e52-b1c1-6492e9c0-32846f8a-210825195514.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g108/1075843/s570x570/b5c7b39a-4e4e-4e52-b1c1-6492e9c0-32846f8a-210825195514.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g108/1075843/s750x750/b5c7b39a-4e4e-4e52-b1c1-6492e9c0-32846f8a-210825195514.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g108/1075843/s1242x1242/b5c7b39a-4e4e-4e52-b1c1-6492e9c0-32846f8a-210825195514.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "28,000đ",
					"unit": "đ",
					"value": 28000.0
				},
				"dish_id": 18822668,
				"name": "Cà phê Sữa"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 20
			},
			"delivery_info": {
				"prepare_time": 20,
				"name": "Let's Café - Coldbrew - Trung Tự",
				"latitude": 21.009382,
				"rewrite_url": "let-s-cafe-coldbrew-trung-tu",
				"restaurant_id": 1075843,
				"delivery_id": 178251,
				"longitude": 105.833415,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g111/1103867/s120x120/26d72a7e-5fbf-4aeb-9470-f727070f-49235485-210921155912.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g111/1103867/s180x180/26d72a7e-5fbf-4aeb-9470-f727070f-49235485-210921155912.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g111/1103867/s570x570/26d72a7e-5fbf-4aeb-9470-f727070f-49235485-210921155912.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g111/1103867/s750x750/26d72a7e-5fbf-4aeb-9470-f727070f-49235485-210921155912.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g111/1103867/s1242x1242/26d72a7e-5fbf-4aeb-9470-f727070f-49235485-210921155912.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 23180977,
				"name": "Dưa chuột sạch tân lạc hoà bình - 500g "
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 20
			},
			"delivery_info": {
				"prepare_time": 5,
				"name": "Siêu Thị Nông Dân - Thái Thịnh 1",
				"latitude": 21.0101321193563,
				"rewrite_url": "sieu-thi-nong-dan-thai-thinh-1",
				"restaurant_id": 1103867,
				"delivery_id": 213501,
				"longitude": 105.816936768615,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1091371/s120x120/19fcf93e-aca5-4525-99ff-c3507e3f-f4e603d4-210804122050.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1091371/s180x180/19fcf93e-aca5-4525-99ff-c3507e3f-f4e603d4-210804122050.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1091371/s570x570/19fcf93e-aca5-4525-99ff-c3507e3f-f4e603d4-210804122050.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1091371/s750x750/19fcf93e-aca5-4525-99ff-c3507e3f-f4e603d4-210804122050.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1091371/s1242x1242/19fcf93e-aca5-4525-99ff-c3507e3f-f4e603d4-210804122050.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 17854117,
				"name": "Bắp cải"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 50
			},
			"delivery_info": {
				"prepare_time": 24,
				"name": "Tuấn MU Fresh - Thực Phẩm Rau Củ Quả Tươi - Tôn Đức Thắng",
				"latitude": 21.024501086008,
				"rewrite_url": "tuan-mu-fresh-thuc-pham-rau-cu-qua-tuoi-ton-duc-thang",
				"restaurant_id": 1091371,
				"delivery_id": 200742,
				"longitude": 105.832361496789,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1090442/s120x120/e5841902-a3dd-4f6a-ad5f-53b270af-235db95c-210905102119.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1090442/s180x180/e5841902-a3dd-4f6a-ad5f-53b270af-235db95c-210905102119.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1090442/s570x570/e5841902-a3dd-4f6a-ad5f-53b270af-235db95c-210905102119.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1090442/s750x750/e5841902-a3dd-4f6a-ad5f-53b270af-235db95c-210905102119.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1090442/s1242x1242/e5841902-a3dd-4f6a-ad5f-53b270af-235db95c-210905102119.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "35,000đ",
					"unit": "đ",
					"value": 35000.0
				},
				"dish_id": 19691119,
				"name": "Khay Xoài Bào Tử gọt sẵn Kèm Chấm Thần Thánh"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 20
			},
			"delivery_info": {
				"prepare_time": 10,
				"name": "Hoa Quả Đồng Quê - Nguyễn Ngọc Vũ",
				"latitude": 21.0099379416894,
				"rewrite_url": "hoa-qua-dong-que-nguyen-ngoc-vu",
				"restaurant_id": 1090442,
				"delivery_id": 199783,
				"longitude": 105.807318666504,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g104/1036430/s120x120/59bf91ae-1234-4a2f-9590-1be3b10c-ed614b4d-200917100754.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g104/1036430/s180x180/59bf91ae-1234-4a2f-9590-1be3b10c-ed614b4d-200917100754.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g104/1036430/s570x570/59bf91ae-1234-4a2f-9590-1be3b10c-ed614b4d-200917100754.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g104/1036430/s750x750/59bf91ae-1234-4a2f-9590-1be3b10c-ed614b4d-200917100754.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g104/1036430/s1242x1242/59bf91ae-1234-4a2f-9590-1be3b10c-ed614b4d-200917100754.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "24,000đ",
					"unit": "đ",
					"value": 24000.0
				},
				"dish_id": 11663655,
				"name": "Bánh Mỳ Gà Xé Bơ Tỏi"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 30
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Bánh Mỳ Việt",
				"latitude": 21.023153,
				"rewrite_url": "banh-my-viet",
				"restaurant_id": 1036430,
				"delivery_id": 124771,
				"longitude": 105.813988,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g106/1053888/s120x120/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g106/1053888/s180x180/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g106/1053888/s570x570/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g106/1053888/s750x750/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g106/1053888/s1242x1242/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "21,000đ",
					"unit": "đ",
					"value": 21000.0
				},
				"dish_id": 14444397,
				"name": "3 Bánh Mì Que Nướng Giòn"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 30
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Bánh Mì Que & Pate Gia Truyền - Trương Công Giai",
				"latitude": 21.0281884,
				"rewrite_url": "banh-mi-que-pate-gia-truyen-truong-cong-giai",
				"restaurant_id": 1071177,
				"delivery_id": 163766,
				"longitude": 105.7870456,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g106/1053888/s120x120/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g106/1053888/s180x180/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g106/1053888/s570x570/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g106/1053888/s750x750/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g106/1053888/s1242x1242/b41a5236-7dc1-4b61-9457-125bb3f0-fedc2b8d-201113103129.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "21,000đ",
					"unit": "đ",
					"value": 21000.0
				},
				"dish_id": 9231140,
				"name": "3 Bánh Mì Que Nướng Giòn"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 30
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Bánh Mì Que & Pate Gia Truyền - Duy Tân",
				"latitude": 21.02976,
				"rewrite_url": "banh-mi-que-pate-gia-truyen-duy-taan",
				"restaurant_id": 793174,
				"delivery_id": 64158,
				"longitude": 105.783538,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g108/1075843/s120x120/f3e4f153-7d7b-40a9-93bc-69fd2fba-7ac33165-210825203303.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g108/1075843/s180x180/f3e4f153-7d7b-40a9-93bc-69fd2fba-7ac33165-210825203303.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g108/1075843/s570x570/f3e4f153-7d7b-40a9-93bc-69fd2fba-7ac33165-210825203303.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g108/1075843/s750x750/f3e4f153-7d7b-40a9-93bc-69fd2fba-7ac33165-210825203303.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g108/1075843/s1242x1242/f3e4f153-7d7b-40a9-93bc-69fd2fba-7ac33165-210825203303.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "40,000đ",
					"unit": "đ",
					"value": 40000.0
				},
				"dish_id": 18822880,
				"name": "Cappucino"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1018,
				"stock": 20
			},
			"delivery_info": {
				"prepare_time": 20,
				"name": "Let's Café - Coldbrew - Trung Tự",
				"latitude": 21.009382,
				"rewrite_url": "let-s-cafe-coldbrew-trung-tu",
				"restaurant_id": 1075843,
				"delivery_id": 178251,
				"longitude": 105.833415,
				"location_url": "ha-noi"
			}
		}]
	},
	"result": "success"
}
  ''';

  final String _jsonTomorrow2 = r'''
  {
	"reply": {
		"item_infos": [{
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g100004/1000033412/s120x120/1c517244-b833-4036-bd7d-28720588-2a1cbff6-211113231524.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g100004/1000033412/s180x180/1c517244-b833-4036-bd7d-28720588-2a1cbff6-211113231524.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g100004/1000033412/s570x570/1c517244-b833-4036-bd7d-28720588-2a1cbff6-211113231524.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g100004/1000033412/s750x750/1c517244-b833-4036-bd7d-28720588-2a1cbff6-211113231524.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g100004/1000033412/s1242x1242/1c517244-b833-4036-bd7d-28720588-2a1cbff6-211113231524.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 30090935,
				"name": "Bánh Mì Viên Chiên "
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 15,
				"name": "Xôi Bánh Mỳ Bánh Bao Ăn Vặt Giáp Nhị - Đồ Ăn - Giáp Nhị",
				"latitude": 20.9741155,
				"rewrite_url": "xoi-banh-my-banh-bao-an-vat-giap-nhi-do-an-giap-nhi.lkvfxj",
				"restaurant_id": 1000033412,
				"delivery_id": 219221,
				"longitude": 105.8460589,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g73/727175/s120x120/e7998303-9ec4-4754-a0a7-8824b8a5-23dea50f-211213104355.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g73/727175/s180x180/e7998303-9ec4-4754-a0a7-8824b8a5-23dea50f-211213104355.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g73/727175/s570x570/e7998303-9ec4-4754-a0a7-8824b8a5-23dea50f-211213104355.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g73/727175/s750x750/e7998303-9ec4-4754-a0a7-8824b8a5-23dea50f-211213104355.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g73/727175/s1242x1242/e7998303-9ec4-4754-a0a7-8824b8a5-23dea50f-211213104355.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 35316141,
				"name": "Bưởi Dừa Non Size L"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Chè Dừa Thái Lan 365 - Trương Định",
				"latitude": 20.9919086662748,
				"rewrite_url": "che-dua-thai-lan-truong-dinh",
				"restaurant_id": 727175,
				"delivery_id": 32057,
				"longitude": 105.84928282624,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g90/896838/s120x120/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g90/896838/s180x180/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g90/896838/s570x570/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g90/896838/s750x750/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g90/896838/s1242x1242/34389a0c-47fa-4a64-ba98-6e766df8-b7e069b1-220220152957.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "30,000đ",
					"value": 30000.0,
					"unit": "đ"
				},
				"dish_id": 48633799,
				"name": "Chả Cá Thu Chiên"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"delivery_id": 79818,
				"name": "Anh Béo - Bún & Bánh Đa Trộn - Minh Khai",
				"restaurant_id": 896838,
				"prepare_time": 10,
				"longitude": 105.852376,
				"latitude": 20.995998,
				"rewrite_url": "anh-beo-bun-banh-da-tron",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g81/800274/s120x120/64f72597-e58d-4c34-930b-3459873650af.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g81/800274/s180x180/64f72597-e58d-4c34-930b-3459873650af.jpg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g81/800274/s570x570/64f72597-e58d-4c34-930b-3459873650af.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g81/800274/s750x750/64f72597-e58d-4c34-930b-3459873650af.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g81/800274/s1242x1242/64f72597-e58d-4c34-930b-3459873650af.jpg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"value": 20000.0,
					"unit": "đ"
				},
				"dish_id": 9414425,
				"name": "Cơm Rang Trứng"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 50
			},
			"delivery_info": {
				"delivery_id": 107300,
				"name": "Hoàng Huệ - Cơm Rang & Bún Bò Trộn - Ngõ Tự Do",
				"restaurant_id": 1002852,
				"prepare_time": 12,
				"longitude": 105.84635,
				"latitude": 20.997524,
				"rewrite_url": "hoang-hue-com-rang-bun-bo-tron-ngo-tu-do",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g109/1082369/s120x120/e58cbead-c401-43fc-8a89-4ae8ff17-3bb8e1ac-210614111635.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g109/1082369/s180x180/e58cbead-c401-43fc-8a89-4ae8ff17-3bb8e1ac-210614111635.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g109/1082369/s570x570/e58cbead-c401-43fc-8a89-4ae8ff17-3bb8e1ac-210614111635.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g109/1082369/s750x750/e58cbead-c401-43fc-8a89-4ae8ff17-3bb8e1ac-210614111635.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g109/1082369/s1242x1242/e58cbead-c401-43fc-8a89-4ae8ff17-3bb8e1ac-210614111635.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "25,000đ",
					"unit": "đ",
					"value": 25000.0
				},
				"dish_id": 16320199,
				"name": "Cơm Rang Trứng Chiên"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 5,
				"name": "Cơm Ngon Mẹ Nấu - Lĩnh Nam",
				"latitude": 20.9864155883699,
				"rewrite_url": "com-ngon-me-nau-linh-nam",
				"restaurant_id": 1082369,
				"delivery_id": 188957,
				"longitude": 105.86863084014,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g100/999294/s120x120/9b24ad99-c270-4d24-878a-c500f6d3-a9f5a8d8-211210121415.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g100/999294/s180x180/9b24ad99-c270-4d24-878a-c500f6d3-a9f5a8d8-211210121415.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g100/999294/s570x570/9b24ad99-c270-4d24-878a-c500f6d3-a9f5a8d8-211210121415.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g100/999294/s750x750/9b24ad99-c270-4d24-878a-c500f6d3-a9f5a8d8-211210121415.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g100/999294/s1242x1242/9b24ad99-c270-4d24-878a-c500f6d3-a9f5a8d8-211210121415.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 35066952,
				"name": "Combo 2 Xúc Xích Chiên"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Bánh Gà Hồng Mai",
				"latitude": 20.998892,
				"rewrite_url": "banh-ga-hong-mai",
				"restaurant_id": 999294,
				"delivery_id": 105996,
				"longitude": 105.85572,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g97/966686/s120x120/83a40a85-e930-470c-a632-266342cb-12b1fb42-211119000826.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g97/966686/s180x180/83a40a85-e930-470c-a632-266342cb-12b1fb42-211119000826.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g97/966686/s570x570/83a40a85-e930-470c-a632-266342cb-12b1fb42-211119000826.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g97/966686/s750x750/83a40a85-e930-470c-a632-266342cb-12b1fb42-211119000826.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g97/966686/s1242x1242/83a40a85-e930-470c-a632-266342cb-12b1fb42-211119000826.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 31261475,
				"name": "Dồi Sụn Chiên"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Bánh Gà & Nem Chua - Hồng Mai",
				"latitude": 20.998934,
				"rewrite_url": "banh-ga-nem-chua-hong-mai",
				"restaurant_id": 966686,
				"delivery_id": 96875,
				"longitude": 105.855834,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g108/1078898/s120x120/7696677f-ef03-4488-ac9d-6159f387-45329b59-210519163337.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g108/1078898/s180x180/7696677f-ef03-4488-ac9d-6159f387-45329b59-210519163337.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g108/1078898/s570x570/7696677f-ef03-4488-ac9d-6159f387-45329b59-210519163337.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g108/1078898/s750x750/7696677f-ef03-4488-ac9d-6159f387-45329b59-210519163337.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g108/1078898/s1242x1242/7696677f-ef03-4488-ac9d-6159f387-45329b59-210519163337.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "25,000đ",
					"value": 25000.0,
					"unit": "đ"
				},
				"dish_id": 15824983,
				"name": "Cơm Rang Trứng Chiên"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"delivery_id": 182768,
				"name": "Cơm Ngon Mẹ Nấu - Bạch Mai",
				"restaurant_id": 1078898,
				"prepare_time": 12,
				"longitude": 105.85120122666,
				"latitude": 21.0003124344001,
				"rewrite_url": "com-ngon-me-nau-bach-mai",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g97/968750/s120x120/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g97/968750/s180x180/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g97/968750/s570x570/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g97/968750/s750x750/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g97/968750/s1242x1242/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 1242
				}],
				"price": {
					"text": "35,000đ",
					"value": 35000.0,
					"unit": "đ"
				},
				"dish_id": 10219412,
				"name": "Cơm rang thập cẩm"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 97384,
				"name": "Duy Nhất - Phở Bò & Cơm Rang",
				"restaurant_id": 968750,
				"prepare_time": 12,
				"longitude": 105.843049,
				"latitude": 21.001692,
				"rewrite_url": "duy-nhat-pho-bo-com-rang",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g97/968750/s120x120/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g97/968750/s180x180/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g97/968750/s570x570/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g97/968750/s750x750/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g97/968750/s1242x1242/5d8a4ac2-a58b-4e2a-9968-67577c2c68b7.jpg",
					"height": 1242
				}],
				"price": {
					"text": "35,000đ",
					"value": 35000.0,
					"unit": "đ"
				},
				"dish_id": 10890115,
				"name": "Cơm rang thập cẩm"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 123392,
				"name": "Duy Nhất - Phở Bò & Cơm Rang - Lê Thanh Nghị",
				"restaurant_id": 1034579,
				"prepare_time": 12,
				"longitude": 105.843184,
				"latitude": 21.001751,
				"rewrite_url": "duy-nhat-pho-bo-com-rang-le-thanh-nghi",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g93/926283/s120x120/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g93/926283/s180x180/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g93/926283/s570x570/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g93/926283/s750x750/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g93/926283/s1242x1242/33d96365-c8e5-4d0a-8dbd-0bed5c732ae6.jpg",
					"height": 1242
				}],
				"price": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"dish_id": 7574475,
				"name": "Bánh Mỳ Pate Trứng"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1032,
				"stock": 100
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Bánh Mì Hội An - Kim Ngưu",
				"latitude": 20.999236,
				"rewrite_url": "banh-mi-hoi-an-kim-nguu",
				"restaurant_id": 926283,
				"delivery_id": 85551,
				"longitude": 105.861606,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g110/1095417/s120x120/cf1b7669-8716-434d-8244-f4770ba1-9885e45c-210819150508.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g110/1095417/s180x180/cf1b7669-8716-434d-8244-f4770ba1-9885e45c-210819150508.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g110/1095417/s570x570/cf1b7669-8716-434d-8244-f4770ba1-9885e45c-210819150508.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g110/1095417/s750x750/cf1b7669-8716-434d-8244-f4770ba1-9885e45c-210819150508.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g110/1095417/s1242x1242/cf1b7669-8716-434d-8244-f4770ba1-9885e45c-210819150508.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "16,000đ",
					"value": 16000.0,
					"unit": "đ"
				},
				"dish_id": 18668353,
				"name": "Cà chua 500g"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 204813,
				"name": "Siêu Thị Giá Rẻ Trang Bồ -  Chợ Xanh Kim Liên",
				"restaurant_id": 1095417,
				"prepare_time": 20,
				"longitude": 105.835392,
				"latitude": 21.006058,
				"rewrite_url": "sieu-thi-gia-re-trang-bo-cho-xanh-kim-lien",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g109/1080439/s120x120/091cc848-b725-4e0e-93e3-4ac1567d-78a4d6b2-210803141259.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g109/1080439/s180x180/091cc848-b725-4e0e-93e3-4ac1567d-78a4d6b2-210803141259.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g109/1080439/s570x570/091cc848-b725-4e0e-93e3-4ac1567d-78a4d6b2-210803141259.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g109/1080439/s750x750/091cc848-b725-4e0e-93e3-4ac1567d-78a4d6b2-210803141259.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g109/1080439/s1242x1242/091cc848-b725-4e0e-93e3-4ac1567d-78a4d6b2-210803141259.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "25,000đ",
					"unit": "đ",
					"value": 25000.0
				},
				"dish_id": 16013051,
				"name": "Cơm Gạo Lứt Rau Củ Luộc"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"unit": "đ",
					"value": 0
				},
				"session_id": 1032,
				"stock": 30
			},
			"delivery_info": {
				"prepare_time": 12,
				"name": "Chay Hạnh Phúc - Kim Giang",
				"latitude": 20.9813130754807,
				"rewrite_url": "chay-hanh-phuc-kim-giang",
				"restaurant_id": 1080439,
				"delivery_id": 185693,
				"longitude": 105.813104845848,
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g91/901023/s120x120/ace85028-399c-4b9e-81dd-597fc4ef-f751f1ce-210527234138.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g91/901023/s180x180/ace85028-399c-4b9e-81dd-597fc4ef-f751f1ce-210527234138.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g91/901023/s570x570/ace85028-399c-4b9e-81dd-597fc4ef-f751f1ce-210527234138.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g91/901023/s750x750/ace85028-399c-4b9e-81dd-597fc4ef-f751f1ce-210527234138.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g91/901023/s1242x1242/ace85028-399c-4b9e-81dd-597fc4ef-f751f1ce-210527234138.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "35,000đ",
					"value": 35000.0,
					"unit": "đ"
				},
				"dish_id": 15472366,
				"name": "Cơm Chay Rau Củ"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 136877,
				"name": "Quán 65 - Cơm Văn Phòng - Nguyễn Trãi",
				"restaurant_id": 1051676,
				"prepare_time": 12,
				"longitude": 105.817089,
				"latitude": 21.002217,
				"rewrite_url": "quan-65-com-van-phong-nguyen-trai",
				"location_url": "ha-noi"
			}
		}, {
			"dish_info": {
				"photos": [{
					"width": 120,
					"value": "https://images.foody.vn/res/g90/892102/s120x120/06ea4fd0-e4af-4c58-9f94-5ac102dc-a7fdd897-210527231141.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/res/g90/892102/s180x180/06ea4fd0-e4af-4c58-9f94-5ac102dc-a7fdd897-210527231141.jpeg",
					"height": 180
				}, {
					"width": 560,
					"value": "https://images.foody.vn/res/g90/892102/s570x570/06ea4fd0-e4af-4c58-9f94-5ac102dc-a7fdd897-210527231141.jpeg",
					"height": 560
				}, {
					"width": 750,
					"value": "https://images.foody.vn/res/g90/892102/s750x750/06ea4fd0-e4af-4c58-9f94-5ac102dc-a7fdd897-210527231141.jpeg",
					"height": 750
				}, {
					"width": 1242,
					"value": "https://images.foody.vn/res/g90/892102/s1242x1242/06ea4fd0-e4af-4c58-9f94-5ac102dc-a7fdd897-210527231141.jpeg",
					"height": 1242
				}],
				"price": {
					"text": "35,000đ",
					"value": 35000.0,
					"unit": "đ"
				},
				"dish_id": 15472388,
				"name": "Cơm Chay Rau Củ"
			},
			"flash_sale_info": {
				"sold": 0,
				"discount_price": {
					"text": "?1,000đ",
					"value": 0,
					"unit": "đ"
				},
				"session_id": 1032,
				"stock": 20
			},
			"delivery_info": {
				"delivery_id": 85808,
				"name": "Cơm 3 Miền - Cơm Văn Phòng - Nguyễn Trãi",
				"restaurant_id": 927144,
				"prepare_time": 12,
				"longitude": 105.817064,
				"latitude": 21.002464,
				"rewrite_url": "com-3-mien-com-van-phong-nguyen-trai",
				"location_url": "ha-noi"
			}
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetFlashSale);
  }

  @override
  response({String? url}) {
    return jsonDecode(_jsonOngoing);
  }
}