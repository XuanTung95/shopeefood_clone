import 'dart:convert';

import 'package:shopeefood_clone/models/model_collection.dart';
import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';

import '../remote_url.dart';

class FakeCollectionsApi extends BaseFakeApi {
  final String _json = r'''
{
	"reply": {
		"collections": [{
			"description": "Bữa trưa ngon lành và cực nhanh chóng, tiện lợi cùng ShopeeFood.\n👉Nhập mã: ANTRUAVUIVE giảm 15k phí vận chuyển cho đơn hàng từ 30k\nSố lượng có hạn mỗi ngày.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-93309804-220215092824.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-93309804-220215092824.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-93309804-220215092824.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-93309804-220215092824.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14454,
			"count": 200,
			"name": "Bữa trưa tiện lợi",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/bua-trua-tien-loi",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "bua-trua-tien-loi"
		}, {
			"description": "Thứ 2 deal hời chỉ 1Đ. Món ngon giá hời ngại gì không đặt\nSố lượng có hạn. \bShopeeFood ngay!",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-e7db3ef5-220221092843.png",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-e7db3ef5-220221092843.png",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-e7db3ef5-220221092843.png",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-e7db3ef5-220221092843.png",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14465,
			"count": 200,
			"name": "Thứ 2 hứng khởi mời deal 1Đ",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/thu-2-hung-khoi-moi-deal-1d",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "thu-2-hung-khoi-moi-deal-1d"
		}, {
			"description": "Với màu sắc rực rỡ cùng với hương vị ngọt ngào chắc chắn sẽ đánh thức vị giác và làm tan chảy trái tim của bất kỳ ai. Đây cũng là một món quà ý nghĩa và lãng mạn gửi đến người thân trong mùa yêu thương đầu năm.\n👉Nhập mã: NGOTNGAO giảm 15k phí vận chuyển cho đơn hàng từ 30k\nSố lượng có hạn. Ưu đãi độc quyền trên ứng dụng Shopee.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-67fdfeee-220221090947.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-67fdfeee-220221090947.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-67fdfeee-220221090947.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-67fdfeee-220221090947.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14455,
			"count": 200,
			"name": "Mùa yêu thương, món ngọt ngào",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/am-bung-mot-chut",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "am-bung-mot-chut"
		}, {
			"description": "Quán mới lên sàn, món ngon deal 0Đ ngập tràn lại còn Freeship\n👉Nhập mã: XINCHAO giảm 20k cho đơn từ 20k\nÁp dụng cho khách hàng lần đầu đặt đơn tại quán\n👉Nhập mã: QUANMOI30 giảm 30k cho đơn từ 30k\nÁp dụng cho mọi khách hàng\nSố lượng có hạn. ShopeeFood ngay!",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-484b050a-220215092422.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-484b050a-220215092422.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-484b050a-220215092422.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-484b050a-220215092422.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14624,
			"count": 200,
			"name": "Quán mới lên sàn deal 0Đ",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/quan-moi-len-san-deal-0d",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "quan-moi-len-san-deal-0d"
		}, {
			"description": "Ăn uống thả ga với bộ Siêu tiệc giảm 99k.\n👉Nhập mã: SIEUTIEC99 giảm 99k cho đơn từ 250k, số lượng mã ưu đãi có hạn, áp dụng cho quán chọn lọc, ShopeeFood ngay.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-9672ff4b-220215092248.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-9672ff4b-220215092248.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-9672ff4b-220215092248.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-9672ff4b-220215092248.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 12451,
			"count": 200,
			"name": "Siêu tiệc giảm 99k",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/sieu-tiec-giam-99k-spf",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "sieu-tiec-giam-99k-spf"
		}, {
			"description": "Đầu tuần rau, quả giảm 99k, đặt ngay thôi\nNhập mã SALEDINH99 để được giảm 99k, áp dụng cho đơn từ 529k, số lượng mã ưu đãi có hạn mỗi ngày, Fresh ngay.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-a5a44474-211230164540.png",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-a5a44474-211230164540.png",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-a5a44474-211230164540.png",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-a5a44474-211230164540.png",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14532,
			"count": 200,
			"name": "T2 Rau, Quả Giảm 99k",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/cho-tuoi-gia-hoi-giam-99k",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "cho-tuoi-gia-hoi-giam-99k"
		}, {
			"description": "Săn ngay deal hot, giảm tới 30k cùng ShopeeFood.\nNhập mã MOIBAN30K để được giảm 50%, giảm tối đa 30k, áp dụng cho đơn từ 0Đ, số lượng mã có hạn mỗi ngày.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-c0f8e7e0-220215002912.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-c0f8e7e0-220215002912.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-c0f8e7e0-220215002912.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-c0f8e7e0-220215002912.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14800,
			"count": 33,
			"name": "Vạn món giá hời deal giảm 30K",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/van-mon-gia-hoi-deal-giam-30k",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "van-mon-gia-hoi-deal-giam-30k"
		}, {
			"description": "Đặt ngay những quán ngon, hấp dẫn tại ShopeeFood.\nNhập mã ALLFREE miễn phí vận chuyển tới 3km cho đơn hàng từ 40k, 2 lần/người dùng/tuần. Áp dụng cho quán chọn lọc.\n\n",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-c068a973-220215091949.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-c068a973-220215091949.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-c068a973-220215091949.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-c068a973-220215091949.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 10895,
			"count": 200,
			"name": "Freeship Xtra",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/freeship-0-dong",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "freeship-0-dong"
		}, {
			"description": "Đặt ShopeeFood không lo phí vận chuyển.\nNhập mã THANG2 để được giảm 15k phí vận chuyển, áp dụng cho hóa đơn từ 45k, số lượng mã có hạn mỗi ngày.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-43ede698-220215092313.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-43ede698-220215092313.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-43ede698-220215092313.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-43ede698-220215092313.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14799,
			"count": 200,
			"name": "Vui tháng 2, bao phí ship",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/vui-thang-2-bao-phi-ship",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "vui-thang-2-bao-phi-ship"
		}, {
			"description": "Nhập mã BANMOI để được giảm 40k, áp dụng cho khách hàng mới sử dụng ShopeeFood, số lượng ưu đãi có hạn.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-c749530a-220215092425.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-c749530a-220215092425.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-c749530a-220215092425.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-c749530a-220215092425.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 13386,
			"count": 200,
			"name": "Chào Bạn Mới - Giảm 40k",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/chao-ban-moi---giam-40k-all",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "chao-ban-moi---giam-40k-all"
		}, {
			"description": "Ăn ngon giữ dáng với món ngon giao tận nhà cực tiện lợi và ưu đãi\n👉Nhập mã: ANHEALTHY để được giảm 15K, áp dụng cho hóa đơn từ 30K.\nSố lượng mã ưu đãi có hạn mỗi ngày. ShopeeFood ngay!",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-7b05c820-220215092906.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-7b05c820-220215092906.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-7b05c820-220215092906.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-7b05c820-220215092906.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14456,
			"count": 200,
			"name": "Ăn healthy ngon hết ý",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/21-ngay-healthy-an-ngon-het-y",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "21-ngay-healthy-an-ngon-het-y"
		}, {
			"description": "",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-f96c1916-211001112738.png",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-f96c1916-211001112738.png",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-f96c1916-211001112738.png",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-f96c1916-211001112738.png",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14080,
			"count": 200,
			"name": "Gà Ngon Thơm Lừng",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/ga-ngon-thom-lung",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "ga-ngon-thom-lung"
		}, {
			"description": "",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-05716c90-211001112624.png",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-05716c90-211001112624.png",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-05716c90-211001112624.png",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-05716c90-211001112624.png",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14082,
			"count": 200,
			"name": "Tuyển Tập Bún Nóng Hổi",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/tuyen-tap-bun-nong-hoi",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "tuyen-tap-bun-nong-hoi"
		}, {
			"description": "Thưởng thức ngay những món Hàn ngon tuyệt cùng ShopeeFood.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-f3090031-211001112454.png",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-f3090031-211001112454.png",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-f3090031-211001112454.png",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-f3090031-211001112454.png",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14085,
			"count": 200,
			"name": "Món Hàn Cay Nóng",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/mon-han-cay-nong",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "mon-han-cay-nong"
		}, {
			"description": "",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-19049eff-211001112830.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-19049eff-211001112830.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-19049eff-211001112830.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-19049eff-211001112830.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14236,
			"count": 200,
			"name": "Bánh ngon ăn liền - Khỏi cần nấu nướng",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/banh-ngon-an-lien---khoi-can-nau-nuong",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "banh-ngon-an-lien---khoi-can-nau-nuong"
		}, {
			"description": "Thứ 2 tràn đầy năng lượng với đủ món ngon mà bạn thích. \n👉Nhập mã: T2VUIVE miễn phí vận chuyển 15k cho đơn từ 0Đ\nSố lượng có hạn. ShopeeFood ngay! Chương trình độc quyền trên Shopee",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-403a133b-220213223642.png",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-403a133b-220213223642.png",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-403a133b-220213223642.png",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-403a133b-220213223642.png",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 14464,
			"count": 200,
			"name": "Thứ 2 nạp năng lượng freeship 0Đ",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/thu-2-nap-nang-luong-freeship-0d",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "thu-2-nap-nang-luong-freeship-0d"
		}, {
			"description": "Đặt ngay những món ngon, đang giảm giá tại ShopeeFood.",
			"photos": [{
				"width": 320,
				"value": "https://images.foody.vn/delivery/collection/s320x320/image-418b34ad-211001112029.jpeg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/delivery/collection/s480x480/image-418b34ad-211001112029.jpeg",
				"height": 480
			}, {
				"width": 640,
				"value": "https://images.foody.vn/delivery/collection/s640x640/image-418b34ad-211001112029.jpeg",
				"height": 640
			}, {
				"width": 800,
				"value": "https://images.foody.vn/delivery/collection/s800x800/image-418b34ad-211001112029.jpeg",
				"height": 800
			}],
			"foody_service_id": 1,
			"id": 10334,
			"count": 200,
			"name": "Bữa trưa vui vẻ",
			"cover_video": null,
			"is_indexable": false,
			"url": "https://shopeefood.vn/bo-suu-tap/bua-trua-vui-ve",
			"canonical_url": "",
			"item_type": 1,
			"url_rewrite_name": "bua-trua-vui-ve"
		}]
	},
	"result": "success"
}
  ''';

  Map<String, dynamic> getCollections() {
    return jsonDecode(_json);
  }

  @override
  bool accept(String url) {
    return url.contains(urlGetCollectionInfo);
  }

  @override
  dynamic response({String? url}) {
    return getCollections();
  }
}
