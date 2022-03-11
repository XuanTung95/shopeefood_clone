


import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class FakeNotification extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"notification_infos": [{
			"title_color": "#000000",
			"title": "Host Submitted Order",
			"uri": "action=deliveryorder&order_code=10022-407214348&action_redirect=grouporder_host_done&target_screen=1",
			"id": 959357269,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g96/955315/prof/s70x70/foody-upload-api-foody-mobile-foody-upload-api-foo-190911111419.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g96/955315/prof/s140x140/foody-upload-api-foody-mobile-foody-upload-api-foo-190911111419.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/ongoing-order/10022-407214348",
			"created_time": "2022-02-10 11:18:41",
			"message": "<span style='font-size: 12px'>Your order at <b>Cơm Tấm Dương - Trần Huy Liệu</b> has been successfully placed by <b>Quỳnh Kul</b>. Thank you for joining the group order on ShopeeFood.</span>",
			"latest_activity_time": "2022-02-10 11:18:41",
			"is_unread": false
		}, {
			"title_color": "#000000",
			"title": "Host Submitted Order",
			"uri": "action=deliveryorder&order_code=09022-415440953&action_redirect=grouporder_host_done&target_screen=1",
			"id": 958597671,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g103/1027565/prof/s70x70/foody-upload-api-foody-mobile-16-200629141201.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g103/1027565/prof/s140x140/foody-upload-api-foody-mobile-16-200629141201.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/ongoing-order/09022-415440953",
			"created_time": "2022-02-09 11:32:35",
			"message": "<span style='font-size: 12px'>Your order at <b>Chaebon - Kimbap Ngon Số 1 - Trần Huy Liệu</b> has been successfully placed by <b>Quỳnh Kul</b>. Thank you for joining the group order on ShopeeFood.</span>",
			"latest_activity_time": "2022-02-09 11:32:35",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Host Submitted Order",
			"uri": "action=deliveryorder&order_code=08022-553295055&action_redirect=grouporder_host_done&target_screen=1",
			"id": 958070405,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g90/894234/prof/s70x70/foody-upload-api-foody-mobile-avar-191009093623.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g90/894234/prof/s140x140/foody-upload-api-foody-mobile-avar-191009093623.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/ongoing-order/08022-553295055",
			"created_time": "2022-02-08 15:22:10",
			"message": "<span style='font-size: 12px'>Your order at <b>Ích Hòa Đường - Taiwan Tea - Ô Chợ Dừa</b> has been successfully placed by <b>Ximmm</b>. Thank you for joining the group order on ShopeeFood.</span>",
			"latest_activity_time": "2022-02-08 15:22:10",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Order Completed from Halloween - Fastfood & Drinks - Trương Định",
			"uri": "action=deliveryorder&id=2571804205&status=7&order_code=27012-709034298&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 953248093,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s70x70/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s140x140/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/27012-709034298",
			"created_time": "2022-01-27 20:01:35",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-27 20:01:35",
			"is_unread": false
		}, {
			"title_color": "#000000",
			"title": "Order Completed from KOMBO - Cơm Niêu Singapore - Kim Đồng",
			"uri": "action=deliveryorder&id=2874146495&status=7&order_code=16012-711784488&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 943441634,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g73/722778/prof/s70x70/foody-upload-api-foody-mobile-avar52-190410114847.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g73/722778/prof/s140x140/foody-upload-api-foody-mobile-avar52-190410114847.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/16012-711784488",
			"created_time": "2022-01-16 20:03:28",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-16 20:03:28",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Order Completed from Halloween - Fastfood & Drinks - Trương Định",
			"uri": "action=deliveryorder&id=2537219976&status=7&order_code=15012-473575965&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 941930039,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s70x70/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s140x140/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/15012-473575965",
			"created_time": "2022-01-15 13:22:59",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-15 13:22:59",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Order Completed from Cơm Ngon Mẹ Nấu - Kim Mã",
			"uri": "action=deliveryorder&id=2527908454&status=7&order_code=12012-414993703&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 938864483,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g108/1076498/prof/s70x70/foody-upload-api-foody-mobile-image-5f06df9e-20091-210504095418.jpeg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g108/1076498/prof/s140x140/foody-upload-api-foody-mobile-image-5f06df9e-20091-210504095418.jpeg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/12012-414993703",
			"created_time": "2022-01-12 11:58:11",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-12 11:58:11",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Host Submitted Order",
			"uri": "action=deliveryorder&order_code=10012-396743025&action_redirect=grouporder_host_done&target_screen=1",
			"id": 936851808,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g105/1041852/prof/s70x70/file_restaurant_photo_kuc6_16025-d844d48c-201012204652.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g105/1041852/prof/s140x140/file_restaurant_photo_kuc6_16025-d844d48c-201012204652.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/ongoing-order/10012-396743025",
			"created_time": "2022-01-10 11:01:14",
			"message": "<span style='font-size: 12px'>Your order at <b>Comi ChefHome - Ẩm Thực Trung Hoa Phong Vị Việt</b> has been successfully placed by <b>Quỳnh Kul</b>. Thank you for joining the group order on ShopeeFood.</span>",
			"latest_activity_time": "2022-01-10 11:01:14",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Order Completed from Halloween - Fastfood & Drinks - Trương Định",
			"uri": "action=deliveryorder&id=2405902666&status=7&order_code=08012-432976158&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 935198035,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s70x70/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s140x140/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/08012-432976158",
			"created_time": "2022-01-08 12:20:17",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-08 12:20:17",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Order Completed from Halloween - Fastfood & Drinks - Trương Định",
			"uri": "action=deliveryorder&id=2068563833&status=7&order_code=03012-389935566&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 930493132,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s70x70/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s140x140/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/03012-389935566",
			"created_time": "2022-01-03 11:06:01",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-03 11:06:01",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Order Completed from Halloween - Fastfood & Drinks - Trương Định",
			"uri": "action=deliveryorder&id=2280989136&status=7&order_code=02012-704999028&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 930209621,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s70x70/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g103/1026335/prof/s140x140/foody-upload-api-foody-mobile-ma-dui-ga-nuong-mat-200609142705.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/02012-704999028",
			"created_time": "2022-01-02 19:47:23",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-02 19:47:23",
			"is_unread": true
		}, {
			"title_color": "#000000",
			"title": "Order Completed from Cơm Sài Gòn - Thịnh Liệt",
			"uri": "action=deliveryorder&id=2612929185&status=7&order_code=02012-436117792&target_screen=1&foody_service_id=1&is_end_status=True",
			"id": 929748743,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g105/1049175/prof/s70x70/foody-upload-api-foody-mobile-received_26143284255-201001161010.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g105/1049175/prof/s140x140/foody-upload-api-foody-mobile-received_26143284255-201001161010.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/order-details/02012-436117792",
			"created_time": "2022-01-02 12:17:17",
			"message": "<span style='font-size: 12px'>Thank you for using ShopeeFood. Your feedback matters to others. Rate your experience now!</span>",
			"latest_activity_time": "2022-01-02 12:17:17",
			"is_unread": false
		}, {
			"title_color": "#000000",
			"title": "Host Submitted Order",
			"uri": "action=deliveryorder&order_code=23121-555978981&action_redirect=grouporder_host_done&target_screen=1",
			"id": 920457656,
			"photos": [{
				"width": 70,
				"value": "http://media.foody.vn/res/g91/901968/prof/s70x70/foody-upload-api-foody-mobile-foody-upload-api-foo-190404140337.jpg",
				"height": 70
			}, {
				"width": 140,
				"value": "http://media.foody.vn/res/g91/901968/prof/s140x140/foody-upload-api-foody-mobile-foody-upload-api-foo-190404140337.jpg",
				"height": 140
			}],
			"action_url": "https://now.vn/ongoing-order/23121-555978981",
			"created_time": "2021-12-23 15:26:38",
			"message": "<span style='font-size: 12px'>Your order at <b>The Alley - Trà Sữa Đài Loan - Giảng Võ</b> has been successfully placed by <b>Ximm Xim</b>. Thank you for joining the group order on ShopeeFood.</span>",
			"latest_activity_time": "2021-12-23 15:26:38",
			"is_unread": true
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetNotifications);
  }

  @override
  response({String? url}) {
    return json.decode(_json);
  }

}