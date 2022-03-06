

import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeOrderHistory extends BaseFakeApi {
  final _json = r'''
  {
	"reply": {
		"orders": [{
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-02-10 11:36:33",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"feedback": {
				"shipper": {
					"rate": 105,
					"feedbacks": [],
					"reason_ids": [],
					"is_incognito": false
				},
				"order_items": [],
				"restaurant": {
					"rate": 105,
					"feedbacks": [],
					"reason_ids": [],
					"is_incognito": false
				}
			},
			"order_time": "2022-02-10 11:18:41",
			"order_items": {
				"total_item": 7,
				"total_user": 2
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0943681868"],
				"restaurant_id": 955315,
				"has_contract": true,
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
				"address": "116B D1 Trần Huy Liệu, Ba Đình, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 94683,
				"name": "Cơm Tấm Dương - Trần Huy Liệu",
				"restaurant_url": "ha-noi/com-tam-duong-tran-huy-lieu",
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
					"latitude": 21.027321,
					"is_verified": false,
					"longitude": 105.822093
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s60x60/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s140x140/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s200x200/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 180
				}],
				"allowed_payment_methods": [6],
				"uid": 2319629,
				"name": "Quỳnh Kul",
				"foody_uid": 2252923
			},
			"order_code": "10022-407214348",
			"sharing_token": "10022-407214348575619b1cd94",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "347,800đ",
					"unit": "đ",
					"value": 347800.0
				}
			},
			"id": 2714723019,
			"final_value": {
				"text": "347,800đ",
				"unit": "đ",
				"value": 347800.0
			},
			"order_type": 2,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 6,
				"card_type": "",
				"airpay_source": {
					"source_id": 2,
					"channel_id": 13408,
					"source_text": "ShopeePay · MB",
					"account_id": "105516226"
				},
				"card_number": "6962"
			},
			"order_note": "",
			"order_value": {
				"text": "392,800đ",
				"unit": "đ",
				"value": 392800.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0967957237",
					"address": "21 Cát Linh, Đống Đa, Hà Nội, Việt Nam",
					"contact_name": "Vũ Hương Quỳnh",
					"id": 69262281,
					"building": "MBBank - Hội sở",
					"label": "Work",
					"note": "",
					"work_address": "Work",
					"position": {
						"latitude": 21.0285476,
						"longitude": 105.8306948
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-02-09 12:09:35",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"feedback": {
				"shipper": {
					"rate": 105,
					"feedbacks": [],
					"reason_ids": [],
					"is_incognito": false
				},
				"order_items": [],
				"restaurant": {
					"rate": 105,
					"feedbacks": [],
					"reason_ids": [],
					"is_incognito": false
				}
			},
			"order_time": "2022-02-09 11:32:23",
			"order_items": {
				"total_item": 4,
				"total_user": 4
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0369447236"],
				"restaurant_id": 1027565,
				"has_contract": true,
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
				"address": "108A5 Trần Huy Liệu, Ba Đình, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 118154,
				"name": "Chaebon - Kimbap Ngon Số 1 - Trần Huy Liệu",
				"restaurant_url": "ha-noi/chaebon-kimbap-ngon-so-1-tran-huy-lieu",
				"is_quality_merchant": true,
				"service_type": 1,
				"position": {
					"latitude": 21.0298557215657,
					"is_verified": false,
					"longitude": 105.82039892639
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s60x60/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s140x140/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s200x200/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 180
				}],
				"allowed_payment_methods": [],
				"uid": 2319629,
				"name": "Quỳnh Kul",
				"foody_uid": 2252923
			},
			"order_code": "09022-415440953",
			"sharing_token": "09022-415440953dbb8caf51c35",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "167,000đ",
					"unit": "đ",
					"value": 167000.0
				}
			},
			"id": 2479001216,
			"final_value": {
				"text": "167,000đ",
				"unit": "đ",
				"value": 167000.0
			},
			"order_type": 2,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 6,
				"card_number": ""
			},
			"order_note": "",
			"order_value": {
				"text": "212,000đ",
				"unit": "đ",
				"value": 212000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0967957237",
					"address": "21 P. Cát Linh, Cát Linh, Đống Đa, Hà Nội, Việt Nam",
					"contact_name": "Quỳnh Kul",
					"id": 71972148,
					"building": "",
					"label": "",
					"note": "",
					"work_address": "",
					"position": {
						"latitude": 21.028634,
						"longitude": 105.8308576
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-02-08 15:48:07",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-02-08 15:22:09",
			"order_items": {
				"total_item": 8,
				"total_user": 6
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0948688692"],
				"restaurant_id": 894234,
				"has_contract": true,
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
				"address": "24 Ô Chợ Dừa, Đống Đa, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 78659,
				"name": "Ích Hòa Đường - Taiwan Tea - Ô Chợ Dừa",
				"restaurant_url": "ha-noi/ich-hoa-duong-taiwan-tea",
				"is_quality_merchant": true,
				"service_type": 1,
				"position": {
					"latitude": 21.0192522354237,
					"is_verified": false,
					"longitude": 105.828180212801
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g1507/15069676/avt/s60x60/beauty-upload-api-foody-avatar-d13bfddd-76ba-41f5-8fa1-f42045a1b6e5-191221115308.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g1507/15069676/avt/s140x140/beauty-upload-api-foody-avatar-d13bfddd-76ba-41f5-8fa1-f42045a1b6e5-191221115308.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g1507/15069676/avt/s200x200/beauty-upload-api-foody-avatar-d13bfddd-76ba-41f5-8fa1-f42045a1b6e5-191221115308.jpg",
					"height": 180
				}],
				"allowed_payment_methods": [6],
				"uid": 9525605,
				"name": "ximmm",
				"foody_uid": 15069676
			},
			"order_code": "08022-553295055",
			"sharing_token": "08022-553295055763d0c1245f7",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "248,000đ",
					"unit": "đ",
					"value": 248000.0
				}
			},
			"id": 2477200154,
			"final_value": {
				"text": "248,000đ",
				"unit": "đ",
				"value": 248000.0
			},
			"order_type": 2,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "296,000đ",
				"unit": "đ",
				"value": 296000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0962029615",
					"address": " 21 Cát Linh, Hoàn Kiếm,, Hoàn Kiếm, Hà Nội",
					"contact_name": "Ximmm",
					"id": 74299540,
					"building": "",
					"label": "",
					"note": "",
					"work_address": "",
					"position": {
						"latitude": 21.0286,
						"longitude": 105.83167
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-27 20:01:34",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-27 19:41:43",
			"order_items": {
				"total_item": 3,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0988743258"],
				"restaurant_id": 1026335,
				"has_contract": true,
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
				"address": "Tầng 1, Tòa Nhà Thiên Sơn Plaza, 609 Trương Định, P. Thịnh Liệt, Hoàng Mai, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 117217,
				"name": "Halloween - Fastfood & Drinks - Trương Định",
				"restaurant_url": "ha-noi/halloween-fastfood-drinks-truong-dinh",
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
					"latitude": 20.9795511453831,
					"is_verified": false,
					"longitude": 105.844326700653
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "27012-709034298",
			"sharing_token": "27012-7090342981c921fae883e",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "97,000đ",
					"unit": "đ",
					"value": 97000.0
				}
			},
			"id": 2571804205,
			"final_value": {
				"text": "97,000đ",
				"unit": "đ",
				"value": 97000.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "75,000đ",
				"unit": "đ",
				"value": 75000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
					"contact_name": "Tung Xuan",
					"id": 72787623,
					"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"label": "",
					"note": "",
					"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"position": {
						"latitude": 20.9756866,
						"longitude": 105.8482423
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-16 20:03:27",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-16 19:46:18",
			"order_items": {
				"total_item": 1,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0949701010"],
				"restaurant_id": 722778,
				"has_contract": true,
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
				"address": "26 Kim Đồng, Hoàng Mai, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 28133,
				"name": "KOMBO - Cơm Niêu Singapore - Kim Đồng",
				"restaurant_url": "ha-noi/kombo-com-nieu-singapore-kim-dong",
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
					"latitude": 20.98351,
					"is_verified": false,
					"longitude": 105.843898
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "16012-711784488",
			"sharing_token": "16012-711784488344625350efc",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "65,900đ",
					"unit": "đ",
					"value": 65900.0
				}
			},
			"id": 2874146495,
			"final_value": {
				"text": "65,900đ",
				"unit": "đ",
				"value": 65900.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "64,900đ",
				"unit": "đ",
				"value": 64900.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
					"contact_name": "Tung Xuan",
					"id": 72787623,
					"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"label": "",
					"note": "",
					"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"position": {
						"latitude": 20.9756866,
						"longitude": 105.8482423
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-15 13:22:58",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-15 13:09:17",
			"order_items": {
				"total_item": 3,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0988743258"],
				"restaurant_id": 1026335,
				"has_contract": true,
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
				"address": "Tầng 1, Tòa Nhà Thiên Sơn Plaza, 609 Trương Định, P. Thịnh Liệt, Hoàng Mai, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 117217,
				"name": "Halloween - Fastfood & Drinks - Trương Định",
				"restaurant_url": "ha-noi/halloween-fastfood-drinks-truong-dinh",
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
					"latitude": 20.9795511453831,
					"is_verified": false,
					"longitude": 105.844326700653
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "15012-473575965",
			"sharing_token": "15012-473575965fd1953275cd5",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "69,000đ",
					"unit": "đ",
					"value": 69000.0
				}
			},
			"id": 2537219976,
			"final_value": {
				"text": "69,000đ",
				"unit": "đ",
				"value": 69000.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "53,000đ",
				"unit": "đ",
				"value": 53000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
					"contact_name": "Tung Xuan",
					"id": 72787623,
					"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"label": "",
					"note": "",
					"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"position": {
						"latitude": 20.9756866,
						"longitude": 105.8482423
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-12 11:58:10",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-12 11:31:39",
			"order_items": {
				"total_item": 1,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0338887030"],
				"restaurant_id": 1076498,
				"has_contract": true,
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
				"address": "11 Ngõ 192 Kim Mã, Ba Đình, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 179188,
				"name": "Cơm Ngon Mẹ Nấu - Kim Mã",
				"restaurant_url": "ha-noi/com-ngon-me-nau-kim-ma",
				"is_quality_merchant": true,
				"service_type": 1,
				"position": {
					"latitude": 21.0323172000139,
					"is_verified": false,
					"longitude": 105.824757174191
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "12012-414993703",
			"sharing_token": "12012-414993703a7a0fa94af22",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "44,000đ",
					"unit": "đ",
					"value": 44000.0
				}
			},
			"id": 2527908454,
			"final_value": {
				"text": "44,000đ",
				"unit": "đ",
				"value": 44000.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "35,000đ",
				"unit": "đ",
				"value": 35000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": " 21 Cát Linh, Hoàn Kiếm,, Hoàn Kiếm, Hà Nội",
					"contact_name": "Tung Xuan",
					"id": 73235621,
					"building": "MB Bank Hà Nội",
					"label": "",
					"note": "",
					"work_address": "MB Bank Hà Nội",
					"position": {
						"latitude": 21.0286,
						"longitude": 105.83167
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-10 11:29:02",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"feedback": {
				"shipper": {
					"rate": 105,
					"feedbacks": [],
					"reason_ids": [],
					"is_incognito": false
				},
				"order_items": [],
				"restaurant": {
					"rate": 105,
					"feedbacks": [],
					"reason_ids": [],
					"is_incognito": false
				}
			},
			"order_time": "2022-01-10 11:01:14",
			"order_items": {
				"total_item": 10,
				"total_user": 7
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0969836838"],
				"restaurant_id": 1041852,
				"has_contract": true,
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
				"address": "34 Ngọc Khánh, P. Ngọc Khánh, Ba Đình, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 128915,
				"name": "Comi ChefHome - Ẩm Thực Trung Hoa Phong Vị Việt",
				"restaurant_url": "ha-noi/comi-chefhome-am-thuc-trung-hoa-phong-vi-viet",
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
					"latitude": 21.029595,
					"is_verified": false,
					"longitude": 105.817311
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s60x60/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s140x140/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g226/2252923/avt/s200x200/foody-avatar-d1b39761-6286-45f0--895443f0-220208153708.jpeg",
					"height": 180
				}],
				"allowed_payment_methods": [6],
				"uid": 2319629,
				"name": "Quỳnh Kul",
				"foody_uid": 2252923
			},
			"order_code": "10012-396743025",
			"sharing_token": "10012-3967430250ce9c652e354",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "631,000đ",
					"unit": "đ",
					"value": 631000.0
				}
			},
			"id": 2855442688,
			"final_value": {
				"text": "631,000đ",
				"unit": "đ",
				"value": 631000.0
			},
			"order_type": 2,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 6,
				"card_type": "",
				"airpay_source": {
					"source_id": 2,
					"channel_id": 13408,
					"source_text": "ShopeePay · MB",
					"account_id": "105516226"
				},
				"card_number": "6962"
			},
			"order_note": "",
			"order_value": {
				"text": "660,000đ",
				"unit": "đ",
				"value": 660000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0967957237",
					"address": "21 Cát Linh, Đống Đa, Hà Nội, Việt Nam",
					"contact_name": "Vũ Hương Quỳnh",
					"id": 69262281,
					"building": "MBBank - Hội sở",
					"label": "Work",
					"note": "",
					"work_address": "Work",
					"position": {
						"latitude": 21.0285476,
						"longitude": 105.8306948
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-08 12:20:16",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-08 12:01:37",
			"order_items": {
				"total_item": 3,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0988743258"],
				"restaurant_id": 1026335,
				"has_contract": true,
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
				"address": "Tầng 1, Tòa Nhà Thiên Sơn Plaza, 609 Trương Định, P. Thịnh Liệt, Hoàng Mai, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 117217,
				"name": "Halloween - Fastfood & Drinks - Trương Định",
				"restaurant_url": "ha-noi/halloween-fastfood-drinks-truong-dinh",
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
					"latitude": 20.9795511453831,
					"is_verified": false,
					"longitude": 105.844326700653
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "08012-432976158",
			"sharing_token": "08012-4329761589d9bae556083",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "74,000đ",
					"unit": "đ",
					"value": 74000.0
				}
			},
			"id": 2405902666,
			"final_value": {
				"text": "74,000đ",
				"unit": "đ",
				"value": 74000.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "58,000đ",
				"unit": "đ",
				"value": 58000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
					"contact_name": "Tung Xuan",
					"id": 72787623,
					"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"label": "",
					"note": "",
					"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"position": {
						"latitude": 20.9756866,
						"longitude": 105.8482423
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-03 11:05:59",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-03 10:49:53",
			"order_items": {
				"total_item": 2,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0988743258"],
				"restaurant_id": 1026335,
				"has_contract": true,
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
				"address": "Tầng 1, Tòa Nhà Thiên Sơn Plaza, 609 Trương Định, P. Thịnh Liệt, Hoàng Mai, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 117217,
				"name": "Halloween - Fastfood & Drinks - Trương Định",
				"restaurant_url": "ha-noi/halloween-fastfood-drinks-truong-dinh",
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
					"latitude": 20.9795511453831,
					"is_verified": false,
					"longitude": 105.844326700653
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "03012-389935566",
			"sharing_token": "03012-38993556630c38d558d16",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "67,000đ",
					"unit": "đ",
					"value": 67000.0
				}
			},
			"id": 2068563833,
			"final_value": {
				"text": "67,000đ",
				"unit": "đ",
				"value": 67000.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "48,000đ",
				"unit": "đ",
				"value": 48000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
					"contact_name": "Tung Xuan",
					"id": 72787623,
					"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"label": "",
					"note": "",
					"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"position": {
						"latitude": 20.9756866,
						"longitude": 105.8482423
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-02 19:47:22",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-02 19:34:59",
			"order_items": {
				"total_item": 2,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0988743258"],
				"restaurant_id": 1026335,
				"has_contract": true,
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
				"address": "Tầng 1, Tòa Nhà Thiên Sơn Plaza, 609 Trương Định, P. Thịnh Liệt, Hoàng Mai, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 117217,
				"name": "Halloween - Fastfood & Drinks - Trương Định",
				"restaurant_url": "ha-noi/halloween-fastfood-drinks-truong-dinh",
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
					"latitude": 20.9795511453831,
					"is_verified": false,
					"longitude": 105.844326700653
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "02012-704999028",
			"sharing_token": "02012-7049990284a11185c0290",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "67,000đ",
					"unit": "đ",
					"value": 67000.0
				}
			},
			"id": 2280989136,
			"final_value": {
				"text": "67,000đ",
				"unit": "đ",
				"value": 67000.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "48,000đ",
				"unit": "đ",
				"value": 48000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
					"contact_name": "Tung Xuan",
					"id": 72815234,
					"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"label": "",
					"note": "",
					"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"position": {
						"latitude": 20.9756866,
						"longitude": 105.8482423
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2022-01-02 12:17:17",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2022-01-02 12:06:51",
			"order_items": {
				"total_item": 1,
				"total_user": 1
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0823995766"],
				"restaurant_id": 1049175,
				"has_contract": true,
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
				"address": "19 Ngõ 42/185 Thịnh Liệt, Hoàng Mai, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 134696,
				"name": "Cơm Sài Gòn - Thịnh Liệt",
				"restaurant_url": "ha-noi/com-sai-gon-thinh-liet",
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
					"latitude": 20.971718,
					"is_verified": false,
					"longitude": 105.849411
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
				"allowed_payment_methods": [],
				"uid": 20126124,
				"name": "Tung Xuan",
				"foody_uid": 25126124
			},
			"order_code": "02012-436117792",
			"sharing_token": "02012-436117792ec68c666e43b",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "46,000đ",
					"unit": "đ",
					"value": 46000.0
				}
			},
			"id": 2612929185,
			"final_value": {
				"text": "46,000đ",
				"unit": "đ",
				"value": 46000.0
			},
			"order_type": 1,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "42,000đ",
				"unit": "đ",
				"value": 42000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0963195999",
					"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
					"contact_name": "Tung Xuan",
					"id": 72787623,
					"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"label": "",
					"note": "",
					"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
					"position": {
						"latitude": 20.9756866,
						"longitude": 105.8482423
					}
				}
			}
		}, {
			"status": {
				"status": 3,
				"text": {
					"text": "Completed"
				},
				"update_time": "2021-12-23 16:18:07",
				"is_pending_payment": false
			},
			"submit_app_type": 1004,
			"order_time": "2021-12-23 15:26:37",
			"order_items": {
				"total_item": 20,
				"total_user": 10
			},
			"delivery": {
				"city_id": 218,
				"phones": ["0763700886"],
				"restaurant_id": 901968,
				"has_contract": true,
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
				"address": "163 Giảng Võ, Đống Đa, Hà Nội",
				"min_order_value": {
					"text": "20,000đ",
					"unit": "đ",
					"value": 20000.0
				},
				"foody_service_id": 1,
				"id": 80542,
				"name": "The Alley - Trà Sữa Đài Loan - Giảng Võ",
				"restaurant_url": "ha-noi/the-alley-tra-sua-dai-loan-giang-vo",
				"is_quality_merchant": false,
				"service_type": 1,
				"position": {
					"latitude": 21.0281865913265,
					"is_verified": false,
					"longitude": 105.825552729426
				},
				"is_foody_delivery": true
			},
			"host": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/user-default-female.png",
					"height": 180
				}],
				"allowed_payment_methods": [],
				"uid": 10791119,
				"name": "Ximm Xim",
				"foody_uid": 16323979
			},
			"order_code": "23121-555978981",
			"sharing_token": "23121-5559789817868af78ccd3",
			"paid_status": {
				"is_success": true,
				"fee": {
					"text": "0đ",
					"unit": "đ",
					"value": 0
				},
				"amount": {
					"text": "1,287,000đ",
					"unit": "đ",
					"value": 1287000.0
				}
			},
			"id": 2583626042,
			"final_value": {
				"text": "1,287,000đ",
				"unit": "đ",
				"value": 1287000.0
			},
			"order_type": 2,
			"source_submit": 0,
			"paid_option": {
				"payment_method": 1
			},
			"order_note": "",
			"order_value": {
				"text": "1,321,000đ",
				"unit": "đ",
				"value": 1321000.0
			},
			"shipping_info": {
				"shipping_type": {
					"id": 1,
					"name": "Standard Service"
				},
				"delivery_address": {
					"gate": "",
					"parking_fee": 0,
					"delivery_option": 1,
					"phone": "0962029615",
					"address": "21 P. Cát Linh, Cát Linh, Đống Đa, Hà Nội, Việt Nam",
					"contact_name": "Ximm Xim",
					"id": 71921269,
					"building": "",
					"label": "",
					"note": "",
					"work_address": "",
					"position": {
						"latitude": 21.028634,
						"longitude": 105.8308576
					}
				}
			}
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetOrderHistory);
  }

  @override
  response() {
    return jsonDecode(_json);
  }

}