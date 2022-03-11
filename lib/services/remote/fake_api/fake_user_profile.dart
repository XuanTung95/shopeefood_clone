


import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeUserProfile extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"username": "foodee_muel6r9e",
		"last_name": "xuan",
		"uid": 20126124,
		"phones": [{
			"is_verified": true,
			"number": "0963195670",
			"primary": true,
			"id": 12194317
		}],
		"is_merchant": false,
		"is_completed_profile": true,
		"total_user_promotions": 12,
		"photos": [{
			"width": 160,
			"value": "https://images.foody.vn/usr/g2513/25126124/avt/s200x200/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
			"height": 160
		}, {
			"width": 240,
			"value": "https://images.foody.vn/usr/g2513/25126124/avt/s200x200/foody-avatar-c42edb2f-de2b-49ef--1ea5f17d-210921152603.jpg",
			"height": 240
		}],
		"birthday": "1995-01-04",
		"total_delivered_order": 8,
		"first_name": "tung",
		"name": "Xuan Tung",
		"shopee_account_binding": {
			"is_link_account": false,
			"reward_coin_amount": 2000
		},
		"foody_uid": 25126124,
		"no_password": true,
		"gender": 1,
		"occupation_id": 2,
		"fastflow_delay": 5,
		"is_has_verified_phone": true,
		"reminder": {
			"notification": {
				"action_text": "Turn on",
				"description": "Turn on notifications to receive exclusive offers from ShopeeFood!"
			}
		},
		"is_verified": true,
		"email": "xuantung4195@gmail.com",
		"is_enable_coin_reward": true
	},
	"result": "success"
}
  ''';


  @override
  bool accept(String url) {
    return url.contains(urlGetUserProfile);
  }

  @override
  response({String? url}) {
    return jsonDecode(_json);
  }
  
}