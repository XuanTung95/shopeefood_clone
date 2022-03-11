
import 'dart:convert';

import '../remote_url.dart';
import 'base_fake_api.dart';

class FakeHomeSquare extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"home_square_info": [{
			"title": "83k Off",
			"url": "https://shopee.vn/m/LPshopeefood-hn?hidebar=1",
			"display_order": 1,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-f68653a2-220301113937.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-f68653a2-220301113937.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-f68653a2-220301113937.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 356
		}, {
			"title": "Deal 0Đ",
			"url": "https://now.vn/bo-suu-tap/quan-moi-len-san-deal-0d",
			"display_order": 2,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-0ca989d9-220214225522.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-0ca989d9-220214225522.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-0ca989d9-220214225522.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 877
		}, {
			"title": "Hàng Thiết Yếu Giảm 99k",
			"url": "https://now.vn/fresh",
			"display_order": 3,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-1ab128f4-220207230435.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-1ab128f4-220207230435.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-1ab128f4-220207230435.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 24
		}, {
			"title": "Vạn Món Giá Hời",
			"url": "https://shopeefood.vn/bo-suu-tap/van-mon-gia-hoi-deal-giam-30k",
			"display_order": 4,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-2b12f0cb-220216143932.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-2b12f0cb-220216143932.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-2b12f0cb-220216143932.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 955
		}, {
			"title": "99k Off",
			"url": "https://now.vn/bo-suu-tap/sieu-tiec-giam-99k",
			"display_order": 5,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-d3bb34e9-220207225831.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-d3bb34e9-220207225831.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-d3bb34e9-220207225831.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 470
		}, {
			"title": "Món Ngọt Freeship",
			"url": "https://shopeefood.vn/bo-suu-tap/am-bung-mot-chut",
			"display_order": 6,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-11cd5998-220208083535.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-11cd5998-220208083535.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-11cd5998-220208083535.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 950
		}, {
			"title": "Freeship Xtra",
			"url": "https://now.vn/bo-suu-tap/freeship-0-dong",
			"display_order": 7,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-dc964c8b-220114222247.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-dc964c8b-220114222247.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-dc964c8b-220114222247.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 102
		}, {
			"title": "Flowers 8/3",
			"url": "https://now.vn/flowers",
			"display_order": 8,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-632d8453-220214230052.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-632d8453-220214230052.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-632d8453-220214230052.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 613
		}, {
			"title": "Delivery",
			"url": "https://now.vn/ship",
			"display_order": 9,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-44821605-211111224748.gif",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-44821605-211111224748.gif",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-44821605-211111224748.gif",
				"height": 168
			}],
			"gif_photos": [],
			"id": 229
		}, {
			"title": "50% Off",
			"url": "https://now.vn/bo-suu-tap/quan-moi-now-moi",
			"display_order": 10,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-4738670f-220214225626.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-4738670f-220214225626.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-4738670f-220214225626.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 69
		}, {
			"title": "Milk Tea",
			"url": " https://now.vn/recommendation-list/18",
			"display_order": 11,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-f7bd04c4-220214225347.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-f7bd04c4-220214225347.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-f7bd04c4-220214225347.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 595
		}, {
			"title": "Partner Deals",
			"url": "https://shopee.vn/m/Shopeefoodpartnership-deal?hidebar=1",
			"display_order": 12,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-1fe0e02b-220214225955.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-1fe0e02b-220214225955.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-1fe0e02b-220214225955.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 612
		}, {
			"title": "Rice",
			"url": " https://now.vn/recommendation-list/15",
			"display_order": 13,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-d0298c56-220214224710.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-d0298c56-220214224710.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-d0298c56-220214224710.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 596
		}, {
			"title": "ShopeePay Promotion",
			"url": "https://now.vn/bo-suu-tap/doc-quyen-tren-now",
			"display_order": 14,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-ff4a92b6-210817203500.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-ff4a92b6-210817203500.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-ff4a92b6-210817203500.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 86
		}, {
			"title": "Snack",
			"url": "https://now.vn/recommendation-list/11",
			"display_order": 15,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-c303f299-220214224139.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-c303f299-220214224139.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-c303f299-220214224139.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 597
		}, {
			"title": "Mart",
			"url": "https://now.vn/fmcg",
			"display_order": 16,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-264a7910-220214223813.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-264a7910-220214223813.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-264a7910-220214223813.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 611
		}, {
			"title": "Medicine",
			"url": "https://now.vn/medicine",
			"display_order": 17,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-ffd3d467-220214224011.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-ffd3d467-220214224011.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-ffd3d467-220214224011.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 730
		}, {
			"title": "Pets",
			"url": "https://now.vn/pets",
			"display_order": 18,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-8ef10317-220214223932.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-8ef10317-220214223932.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-8ef10317-220214223932.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 732
		}, {
			"title": "Beer",
			"url": "https://now.vn/liquor ",
			"display_order": 19,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-e5abe7f0-220214223851.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-e5abe7f0-220214223851.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-e5abe7f0-220214223851.png",
				"height": 168
			}],
			"gif_photos": [],
			"id": 728
		}, {
			"title": "Categories",
			"url": "https://now.vn/merchant-category",
			"display_order": 20,
			"photos": [{
				"width": 56,
				"value": "https://images.foody.vn/delivery/icon/s56x56/image-0da031b4-220214223702.png",
				"height": 56
			}, {
				"width": 112,
				"value": "https://images.foody.vn/delivery/icon/s112x112/image-0da031b4-220214223702.png",
				"height": 112
			}, {
				"width": 168,
				"value": "https://images.foody.vn/delivery/icon/s168x168/image-0da031b4-220214223702.png",
				"height": 168
			}],
			"pinned_position": 1000,
			"gif_photos": [],
			"id": 704
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetHomeSquareInfo);
  }

  @override
  dynamic response({String? url}) {
    return jsonDecode(_json);
  }

}