


import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class FakeAddress extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"addresses": [{
			"building": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
			"is_favourite": false,
			"parking_fee": 0,
			"delivery_option": 1,
			"city_id": 0,
			"district_id": 0,
			"note_icons": [],
			"email": "",
			"note": "",
			"phone": {
				"status": false,
				"text": "0963195999"
			},
			"is_far_away": false,
			"work_address": "Số 8, ngách 141/92 Giáp Nhị, Thịnh Liệt",
			"address": "P. Giáp Nhị, Thịnh Liệt, Hoàng Mai, Hà Nội, Việt Nam",
			"position": {
				"latitude": 20.9756866,
				"longitude": 105.8482423
			},
			"contact_name": "Tung Xuan",
			"label": "",
			"type": 1,
			"id": 37750587,
			"gate": ""
		}, {
			"building": "MB Bank Hà Nội",
			"is_favourite": false,
			"parking_fee": 0,
			"delivery_option": 1,
			"city_id": 0,
			"district_id": 0,
			"note_icons": [],
			"email": "",
			"note": "",
			"phone": {
				"status": false,
				"text": "0963195999"
			},
			"is_far_away": false,
			"work_address": "MB Bank Hà Nội",
			"address": " 21 Cát Linh, Hoàn Kiếm,, Hoàn Kiếm, Hà Nội",
			"position": {
				"latitude": 21.0286,
				"longitude": 105.83167
			},
			"contact_name": "Tung Xuan",
			"label": "",
			"type": 1,
			"id": 38020885,
			"gate": ""
		}, {
			"building": "Location bla",
			"is_favourite": false,
			"parking_fee": 0,
			"delivery_option": 1,
			"city_id": 0,
			"district_id": 0,
			"note_icons": [],
			"email": "",
			"note": "Note Note Note",
			"phone": {
				"status": false,
				"text": "0963195999"
			},
			"is_far_away": false,
			"work_address": "Work",
			"address": "21 P. Cát Linh, Cát Linh, Đống Đa, Hà Nội, Việt Nam",
			"position": {
				"latitude": 21.0286601,
				"longitude": 105.8315904
			},
			"contact_name": "Tung Xuan",
			"label": "Work",
			"type": 3,
			"id": 39402615,
			"gate": "bla"
		}]
	},
	"result": "success"
}
  ''';
  @override
  bool accept(String url) {
    return url.contains(urlGetAddress);
  }

  @override
  response() {
    return jsonDecode(_json);
  }

}