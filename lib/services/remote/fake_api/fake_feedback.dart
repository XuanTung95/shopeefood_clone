import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeFeedback extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"user_feedbacks": [{
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1161/11605561/report/s70x70/delivery-feedback-11605561-15d59-88af1c69-220216114336.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1161/11605561/report/s214x214/delivery-feedback-11605561-15d59-88af1c69-220216114336.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1161/11605561/report/s414x414/delivery-feedback-11605561-15d59-88af1c69-220216114336.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1161/11605561/report/s600x600/delivery-feedback-11605561-15d59-88af1c69-220216114336.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-16 11:42:50",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Bánh ngon đã mua nhiều lần, tuy xa nhưng bạn ship khá nhanh",
			"merchant_id": 100323,
			"id": 67388153,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1159/11585522/report/s70x70/delivery-feedback-11585522-87f15-b294eaef-220215104154.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1159/11585522/report/s214x214/delivery-feedback-11585522-87f15-b294eaef-220215104154.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1159/11585522/report/s414x414/delivery-feedback-11585522-87f15-b294eaef-220215104154.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1159/11585522/report/s600x600/delivery-feedback-11585522-87f15-b294eaef-220215104154.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-15 10:41:15",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Njkhgffhk nhffhmmncghmbvf nhđfh mhcghj nvcgjjb ngtfđbjjk",
			"merchant_id": 100323,
			"id": 67306279,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2131/21303192/avt/s60x60/foody-avatar-8c63b4ee-553b-4c5d--e1757675-211022093828.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2131/21303192/avt/s140x140/foody-avatar-8c63b4ee-553b-4c5d--e1757675-211022093828.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2131/21303192/avt/s200x200/foody-avatar-8c63b4ee-553b-4c5d--e1757675-211022093828.jpeg",
					"height": 180
				}],
				"first_name": "Nhài",
				"name": "Nhài Nguyễn",
				"id": 16303192
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1159/11582731/report/s70x70/delivery-feedback-11582731-56306-0f298e84-220215005207.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1159/11582731/report/s214x214/delivery-feedback-11582731-56306-0f298e84-220215005207.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1159/11582731/report/s414x414/delivery-feedback-11582731-56306-0f298e84-220215005207.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1159/11582731/report/s600x600/delivery-feedback-11582731-56306-0f298e84-220215005207.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-15 00:51:09",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Review nhận xu review nhận xu review nhận xu review nhận xuuu",
			"merchant_id": 100323,
			"id": 67295327,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1159/11581673/report/s70x70/delivery-feedback-11581673-72601-a41c1b9d-220214222819.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1159/11581673/report/s214x214/delivery-feedback-11581673-72601-a41c1b9d-220214222819.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1159/11581673/report/s414x414/delivery-feedback-11581673-72601-a41c1b9d-220214222819.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1159/11581673/report/s600x600/delivery-feedback-11581673-72601-a41c1b9d-220214222819.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-14 22:26:36",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Thật sự burger hơi ít nhân vs mình, lần đầu đặt thử xem sao chứ sẽ ko đặt thêm lần sau",
			"merchant_id": 100323,
			"id": 67291950,
			"is_anonymous": false,
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
			"merchant_rate": 4,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "nguyễn minh ánh",
				"name": "Nguyễn Minh Ánh",
				"id": 6719038
			}
		}, {
			"is_featured": false,
			"photos": [],
			"create_time": "2022-02-14 22:12:35",
			"reason_ids": [115, 141],
			"like_dishes": [],
			"is_pr": false,
			"message": "Món gà chụp hình long lanh, to đoành khi về to đúng bằng đầu đũa.",
			"merchant_id": 100323,
			"id": 67291251,
			"is_anonymous": false,
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
			"merchant_rate": 1,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g1469/14685078/avt/s60x60/foody-avatar-220-637244060866003389.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g1469/14685078/avt/s140x140/foody-avatar-220-637244060866003389.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g1469/14685078/avt/s200x200/foody-avatar-220-637244060866003389.jpg",
					"height": 180
				}],
				"first_name": "Đức Phúc",
				"name": "Đức Phúc Lê",
				"id": 9136800
			}
		}, {
			"is_featured": false,
			"photos": [],
			"create_time": "2022-02-14 17:29:14",
			"reason_ids": [112],
			"like_dishes": [],
			"is_pr": false,
			"message": "Shipper giao hàng nhầm sản phẩm, burger bò thành burger gà tẩm bột không có thịt xông khói",
			"merchant_id": 100323,
			"id": 67267294,
			"is_anonymous": true,
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
			"merchant_rate": 2,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1156/11556881/report/s70x70/delivery-feedback-11556881-ec79a-9f4b0e9d-220213170418.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1156/11556881/report/s214x214/delivery-feedback-11556881-ec79a-9f4b0e9d-220213170418.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1156/11556881/report/s414x414/delivery-feedback-11556881-ec79a-9f4b0e9d-220213170418.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1156/11556881/report/s600x600/delivery-feedback-11556881-ec79a-9f4b0e9d-220213170418.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-13 17:03:56",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "#nuochoa\n  Khui chiết em Jo Malone 😍😍\n#Hanoi\n\n  🌸Jo Malone English Pear and Freesia Cologne 100ml\n\n    Jo Malone - Dòng nước hoa cao cấp nổi tiếng từ nước Anh xinh đẹp. Một chai nước hoa cực sang không thể thiếu trong BST các nàng. Ad cũng không thoát khỏi sức quyến rũ của em này 😍#jomalone #jomaloneenglishpear #englishpear\n   💋English Pear - tinh hoa của mùa thu lấy cảm hứng từ bài thơ \"Ode to Autumn\" John Keat. Mùi hương thuần khiết, vô cùng sang trọng hoà quyện bởi trái cây chín mọng và",
			"merchant_id": 100323,
			"id": 67189394,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g180/1796108/avt/s60x60/anhquynhle1999-avatar-203-637133301466614059.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g180/1796108/avt/s140x140/anhquynhle1999-avatar-203-637133301466614059.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g180/1796108/avt/s200x200/anhquynhle1999-avatar-203-637133301466614059.jpg",
					"height": 180
				}],
				"first_name": "Qa",
				"name": "Qa Le",
				"id": 1778976
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1155/11549976/report/s70x70/delivery-feedback-11549976-4641d-f7ca6abf-220213112251.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1155/11549976/report/s214x214/delivery-feedback-11549976-4641d-f7ca6abf-220213112251.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1155/11549976/report/s414x414/delivery-feedback-11549976-4641d-f7ca6abf-220213112251.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1155/11549976/report/s600x600/delivery-feedback-11549976-4641d-f7ca6abf-220213112251.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-13 11:21:24",
			"reason_ids": [91],
			"like_dishes": [{
				"id": 48305527,
				"name": "Combo Couple 8/3"
			}],
			"is_pr": false,
			"message": "Bánh cùng nước hay đồ ăn kèm đều đầy đủ và ngon miệng. Hơi ít rau dưa🤣",
			"merchant_id": 100323,
			"id": 67160338,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 48305527,
				"name": "Combo Couple 8/3"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g1426/14252887/avt/s60x60/foody-avatar-b4df700c-0d0c-4214--6b75c018-211207143912.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g1426/14252887/avt/s140x140/foody-avatar-b4df700c-0d0c-4214--6b75c018-211207143912.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g1426/14252887/avt/s200x200/foody-avatar-b4df700c-0d0c-4214--6b75c018-211207143912.jpeg",
					"height": 180
				}],
				"first_name": "Thư",
				"name": "Thư Nguyễn",
				"id": 8698722
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1155/11544335/report/s70x70/delivery-feedback-11544335-287aa-0b213e5a-220212203705.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1155/11544335/report/s214x214/delivery-feedback-11544335-287aa-0b213e5a-220212203705.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1155/11544335/report/s414x414/delivery-feedback-11544335-287aa-0b213e5a-220212203705.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1155/11544335/report/s600x600/delivery-feedback-11544335-287aa-0b213e5a-220212203705.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-12 20:36:29",
			"reason_ids": [],
			"like_dishes": [{
				"id": 28423651,
				"name": "Gia Đình Là Số 1"
			}],
			"is_pr": false,
			"message": "Ngonnnnnnnnnnnnnnnnnnnnnnnnn kinh khủnggggggggggggggg",
			"merchant_id": 100323,
			"id": 67137979,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 28423651,
				"name": "Gia Đình Là Số 1"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1155/11542410/report/s70x70/delivery-feedback-11542410-65493-381a5f54-220212191022.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1155/11542410/report/s214x214/delivery-feedback-11542410-65493-381a5f54-220212191022.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1155/11542410/report/s414x414/delivery-feedback-11542410-65493-381a5f54-220212191022.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1155/11542410/report/s600x600/delivery-feedback-11542410-65493-381a5f54-220212191022.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-12 19:09:03",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Ngon miệng, chuẩn bị nhanh nhẹn, đang có deal hợp lý, nói chung ổn lắm",
			"merchant_id": 100323,
			"id": 67129990,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1153/11527607/report/s70x70/delivery-feedback-11527607-abed3-19c5cc15-220211202625.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1153/11527607/report/s214x214/delivery-feedback-11527607-abed3-19c5cc15-220211202625.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1153/11527607/report/s414x414/delivery-feedback-11527607-abed3-19c5cc15-220211202625.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1153/11527607/report/s600x600/delivery-feedback-11527607-abed3-19c5cc15-220211202625.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-11 20:25:11",
			"reason_ids": [91, 92, 145],
			"like_dishes": [],
			"is_pr": false,
			"message": "Thiếu sốt chấm chicken nugget, các món ăn còn lại thì ổn",
			"merchant_id": 100323,
			"id": 67069095,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Yumi-kito",
				"name": "Yumi-Kito",
				"id": 3960998
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1152/11518465/report/s70x70/delivery-feedback-11518465-9eb8f-5573ff06-220211123102.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1152/11518465/report/s214x214/delivery-feedback-11518465-9eb8f-5573ff06-220211123102.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1152/11518465/report/s414x414/delivery-feedback-11518465-9eb8f-5573ff06-220211123102.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1152/11518465/report/s600x600/delivery-feedback-11518465-9eb8f-5573ff06-220211123102.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-11 12:29:41",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Very ngon, đã đặt nhiều lần và rất ưng ý khi đạt món. Sẽ đặt lại lần nữa",
			"merchant_id": 100323,
			"id": 67029587,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1148/11479242/report/s70x70/delivery-feedback-11479242-c4cd3-a9e06243-220208151544.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1148/11479242/report/s214x214/delivery-feedback-11479242-c4cd3-a9e06243-220208151544.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1148/11479242/report/s414x414/delivery-feedback-11479242-c4cd3-a9e06243-220208151544.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1148/11479242/report/s600x600/delivery-feedback-11479242-c4cd3-a9e06243-220208151544.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-08 15:15:11",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Món ngon, giá hơi cao nhưng nói chung là cũng tạm chấp nhận được",
			"merchant_id": 100323,
			"id": 66859119,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g162/1617583/avt/s60x60/foody-avatar-e51d44a6-aa33-4f11--37a2e84f-210607181954.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g162/1617583/avt/s140x140/foody-avatar-e51d44a6-aa33-4f11--37a2e84f-210607181954.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g162/1617583/avt/s200x200/foody-avatar-e51d44a6-aa33-4f11--37a2e84f-210607181954.jpeg",
					"height": 180
				}],
				"first_name": "Phong",
				"name": "Phong Đoàn",
				"id": 1633518
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1148/11478250/report/s70x70/delivery-feedback-11478250-4cbee-98a8cb82-220208141144.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1148/11478250/report/s214x214/delivery-feedback-11478250-4cbee-98a8cb82-220208141144.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1148/11478250/report/s414x414/delivery-feedback-11478250-4cbee-98a8cb82-220208141144.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1148/11478250/report/s600x600/delivery-feedback-11478250-4cbee-98a8cb82-220208141144.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-08 14:10:44",
			"reason_ids": [],
			"like_dishes": [{
				"id": 29119352,
				"name": "Cả tuần phấn khởi"
			}, {
				"id": 9369454,
				"name": "Khoai Tây Chiên Tắm Phô Mai Với Thịt Xông Khói"
			}],
			"is_pr": false,
			"message": "Trời ơi khoai Tây chiên sốt phô mai cực kỳ ngon, đóng gói cẩn thận giao hàng nhanh",
			"merchant_id": 100323,
			"id": 66854701,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 29119352,
				"name": "Cả tuần phấn khởi"
			}, {
				"name_en": "",
				"id": 9369454,
				"name": "Khoai Tây Chiên Tắm Phô Mai Với Thịt Xông Khói"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2248/22470651/avt/s60x60/foody-avatar-80efd3de-5935-4999--92258765-201203140248.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2248/22470651/avt/s140x140/foody-avatar-80efd3de-5935-4999--92258765-201203140248.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2248/22470651/avt/s200x200/foody-avatar-80efd3de-5935-4999--92258765-201203140248.jpeg",
					"height": 180
				}],
				"first_name": "Chanbae",
				"name": "Chanbae Linh",
				"id": 17470651
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1147/11462941/report/s70x70/delivery-feedback-11462941-44b15-68216505-220206195057.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1147/11462941/report/s214x214/delivery-feedback-11462941-44b15-68216505-220206195057.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1147/11462941/report/s414x414/delivery-feedback-11462941-44b15-68216505-220206195057.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1147/11462941/report/s600x600/delivery-feedback-11462941-44b15-68216505-220206195057.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-06 19:50:19",
			"reason_ids": [],
			"like_dishes": [{
				"id": 11215633,
				"name": "Burger Gà Giòn Cay"
			}, {
				"id": 9112119,
				"name": "Khoai Tây Chiên (L)"
			}],
			"is_pr": false,
			"message": "👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍",
			"merchant_id": 100323,
			"id": 66783394,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 11215633,
				"name": "Burger Gà Giòn Cay"
			}, {
				"name_en": "",
				"id": 9112119,
				"name": "Khoai Tây Chiên (L)"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1146/11458102/report/s70x70/delivery-feedback-11458102-78b4a-d5ab08bb-220206000437.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1146/11458102/report/s214x214/delivery-feedback-11458102-78b4a-d5ab08bb-220206000437.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1146/11458102/report/s414x414/delivery-feedback-11458102-78b4a-d5ab08bb-220206000437.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1146/11458102/report/s600x600/delivery-feedback-11458102-78b4a-d5ab08bb-220206000437.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-06 00:02:57",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Thịt bò mỏng, khô, đối với cá nhân mình thì không hợp khẩu vị, giao hàng nhanh",
			"merchant_id": 100323,
			"id": 66757355,
			"is_anonymous": true,
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
			"merchant_rate": 4,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s70x70/delivery-feedback-11457403-e7e19-30fe0d50-220205212005.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s214x214/delivery-feedback-11457403-e7e19-30fe0d50-220205212005.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s414x414/delivery-feedback-11457403-e7e19-30fe0d50-220205212005.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s600x600/delivery-feedback-11457403-e7e19-30fe0d50-220205212005.jpeg",
					"height": 600
				}],
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s70x70/delivery-feedback-11457403-dfef8-615102e8-220205212005.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s214x214/delivery-feedback-11457403-dfef8-615102e8-220205212005.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s414x414/delivery-feedback-11457403-dfef8-615102e8-220205212005.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1146/11457403/report/s600x600/delivery-feedback-11457403-dfef8-615102e8-220205212005.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-05 21:17:02",
			"reason_ids": [116],
			"like_dishes": [],
			"is_pr": false,
			"message": "Ngày tết các b làm vội hay ntnao mà bánh mì thì cháy vửa mở bánh ra đã thấy mùi- miếng bò thực sự mỏng và bé - đã ăn rất rất nh lần ở đây chưa lần nào bị ntnay",
			"merchant_id": 100323,
			"id": 66754086,
			"is_anonymous": false,
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
			"merchant_rate": 1,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Yuki",
				"name": "Yuki Gà",
				"id": 14851208
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1147/11464184/report/s70x70/delivery-feedback-11464184-22daa-d982b412-220206225906.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1147/11464184/report/s214x214/delivery-feedback-11464184-22daa-d982b412-220206225906.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1147/11464184/report/s414x414/delivery-feedback-11464184-22daa-d982b412-220206225906.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1147/11464184/report/s600x600/delivery-feedback-11464184-22daa-d982b412-220206225906.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-05 17:20:03",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 5208642,
				"name": "Burger bò nướng Whopper cỡ vừa"
			}, {
				"id": 9291656,
				"name": "Burger Khoai Tây Lát (tên cũ New Me)"
			}, {
				"id": 9369334,
				"name": "Burger Whopper bò nướng tràn phô mai cỡ vừa "
			}],
			"is_pr": false,
			"message": "Mình mua 3 burger và 1 khoai tây chiên lần đầu ăn burger king thấy rất ngon và thik gói tươg ớt ỏe đây",
			"merchant_id": 100323,
			"id": 66744671,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 9291656,
				"name": "Burger Khoai Tây Lát (tên cũ New Me)"
			}, {
				"name_en": "",
				"id": 5208642,
				"name": "Burger bò nướng Whopper cỡ vừa"
			}, {
				"name_en": "",
				"id": 9369334,
				"name": "Burger Whopper bò nướng tràn phô mai cỡ vừa "
			}, {
				"name_en": "CHEESY FRIES ",
				"id": 9369423,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1146/11451448/report/s70x70/delivery-feedback-11451448-2be58-6a2b5612-220204201841.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1146/11451448/report/s214x214/delivery-feedback-11451448-2be58-6a2b5612-220204201841.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1146/11451448/report/s414x414/delivery-feedback-11451448-2be58-6a2b5612-220204201841.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1146/11451448/report/s600x600/delivery-feedback-11451448-2be58-6a2b5612-220204201841.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-04 20:17:37",
			"reason_ids": [90, 91, 145],
			"like_dishes": [{
				"id": 5208642,
				"name": "Burger bò nướng Whopper cỡ vừa"
			}, {
				"id": 11149890,
				"name": "Burger Gà Phô Mai"
			}],
			"is_pr": false,
			"message": "Bánh rất ngon, nhân đỉnh, giá cả phải chăng, phù hợp",
			"merchant_id": 100323,
			"id": 66722346,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 5208642,
				"name": "Burger bò nướng Whopper cỡ vừa"
			}, {
				"name_en": "",
				"id": 11149890,
				"name": "Burger Gà Phô Mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1145/11446800/report/s70x70/delivery-feedback-11446800-f43de-e7b1544f-220203200222.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1145/11446800/report/s214x214/delivery-feedback-11446800-f43de-e7b1544f-220203200222.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1145/11446800/report/s414x414/delivery-feedback-11446800-f43de-e7b1544f-220203200222.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1145/11446800/report/s600x600/delivery-feedback-11446800-f43de-e7b1544f-220203200222.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-03 20:01:34",
			"reason_ids": [],
			"like_dishes": [{
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"is_pr": false,
			"message": "Đồ ăn ok, đã order nhiều lần, rất ngonnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn",
			"merchant_id": 100323,
			"id": 66696857,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "COMBO CRUNCHY CHEESY BURGER",
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Hai Anh",
				"name": "Hai Anh",
				"id": 7730271
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1145/11446790/report/s70x70/delivery-feedback-11446790-37407-4c0cd431-220203200121.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1145/11446790/report/s214x214/delivery-feedback-11446790-37407-4c0cd431-220203200121.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1145/11446790/report/s414x414/delivery-feedback-11446790-37407-4c0cd431-220203200121.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1145/11446790/report/s600x600/delivery-feedback-11446790-37407-4c0cd431-220203200121.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-03 20:00:43",
			"reason_ids": [],
			"like_dishes": [{
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"is_pr": false,
			"message": "Ngonnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn",
			"merchant_id": 100323,
			"id": 66696833,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "COMBO CRUNCHY CHEESY BURGER",
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Hai Anh",
				"name": "Hai Anh",
				"id": 7730271
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1145/11446780/report/s70x70/delivery-feedback-11446780-fec98-b133c06d-220203195953.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1145/11446780/report/s214x214/delivery-feedback-11446780-fec98-b133c06d-220203195953.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1145/11446780/report/s414x414/delivery-feedback-11446780-fec98-b133c06d-220203195953.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1145/11446780/report/s600x600/delivery-feedback-11446780-fec98-b133c06d-220203195953.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-03 19:59:19",
			"reason_ids": [],
			"like_dishes": [{
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"is_pr": false,
			"message": "Đồ ăn ngon 😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆",
			"merchant_id": 100323,
			"id": 66696793,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "COMBO CRUNCHY CHEESY BURGER",
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Hai Anh",
				"name": "Hai Anh",
				"id": 7730271
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1145/11446776/report/s70x70/delivery-feedback-11446776-25db2-0bf29119-220203195900.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1145/11446776/report/s214x214/delivery-feedback-11446776-25db2-0bf29119-220203195900.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1145/11446776/report/s414x414/delivery-feedback-11446776-25db2-0bf29119-220203195900.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1145/11446776/report/s600x600/delivery-feedback-11446776-25db2-0bf29119-220203195900.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-03 19:56:05",
			"reason_ids": [],
			"like_dishes": [{
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"is_pr": false,
			"message": "Đã order rất nhiều lần, đồ ăn vẫn ngon như mọi khi 😆 😆 😆 😆 😆 😆",
			"merchant_id": 100323,
			"id": 66696702,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "COMBO CRUNCHY CHEESY BURGER",
				"id": 11110840,
				"name": "Combo Burger Bò khoai giòn tràn phô mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Hai Anh",
				"name": "Hai Anh",
				"id": 7730271
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1145/11444910/report/s70x70/delivery-feedback-11444910-ee968-bc11f682-220203125217.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1145/11444910/report/s214x214/delivery-feedback-11444910-ee968-bc11f682-220203125217.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1145/11444910/report/s414x414/delivery-feedback-11444910-ee968-bc11f682-220203125217.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1145/11444910/report/s600x600/delivery-feedback-11444910-ee968-bc11f682-220203125217.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-02-03 12:51:30",
			"reason_ids": [90, 91],
			"like_dishes": [{
				"id": 9369423,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}, {
				"id": 9291656,
				"name": "Burger Khoai Tây Lát (tên cũ New Me)"
			}, {
				"id": 9112084,
				"name": "Gà Nuggets (4pcs)"
			}],
			"is_pr": false,
			"message": "Món ngon, nóng, khoai tây thơm giond",
			"merchant_id": 100323,
			"id": 66685949,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 9291656,
				"name": "Burger Khoai Tây Lát (tên cũ New Me)"
			}, {
				"name_en": "",
				"id": 9112084,
				"name": "Gà Nuggets (4pcs)"
			}, {
				"name_en": "",
				"id": 9112102,
				"name": "Khoai Tây Chiên (M)"
			}, {
				"name_en": "CHEESY FRIES ",
				"id": 9369423,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g27/264204/avt/s60x60/beauty-upload-api-foody-avatar-0e4cc3e7-cbe7-4ad1-8f62-c54eff46a2c8-190624224057.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g27/264204/avt/s140x140/beauty-upload-api-foody-avatar-0e4cc3e7-cbe7-4ad1-8f62-c54eff46a2c8-190624224057.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g27/264204/avt/s200x200/beauty-upload-api-foody-avatar-0e4cc3e7-cbe7-4ad1-8f62-c54eff46a2c8-190624224057.jpg",
					"height": 180
				}],
				"first_name": "Thu",
				"name": "Thu Nguyễn Hà",
				"id": 264204
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1144/11436231/report/s70x70/delivery-feedback-11436231-108c7-124be4f3-220131162459.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1144/11436231/report/s214x214/delivery-feedback-11436231-108c7-124be4f3-220131162459.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1144/11436231/report/s414x414/delivery-feedback-11436231-108c7-124be4f3-220131162459.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1144/11436231/report/s600x600/delivery-feedback-11436231-108c7-124be4f3-220131162459.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-31 16:22:00",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Đồ ăn ship đến đây còn nóng, mọi thứ đều oke, ảnh minh hoạaaaaa",
			"merchant_id": 100323,
			"id": 66638644,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1144/11432759/report/s70x70/delivery-feedback-11432759-ded0c-53a32ab3-220130210944.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1144/11432759/report/s214x214/delivery-feedback-11432759-ded0c-53a32ab3-220130210944.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1144/11432759/report/s414x414/delivery-feedback-11432759-ded0c-53a32ab3-220130210944.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1144/11432759/report/s600x600/delivery-feedback-11432759-ded0c-53a32ab3-220130210944.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-30 21:09:26",
			"reason_ids": [],
			"like_dishes": [{
				"id": 11215633,
				"name": "Burger Gà Giòn Cay"
			}],
			"is_pr": false,
			"message": "lhxluclhxydlhxmhxhxkyxyskyzjyzkyskysysktsktsjyxktsktzktzjt",
			"merchant_id": 100323,
			"id": 66621877,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 11215633,
				"name": "Burger Gà Giòn Cay"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1143/11429138/report/s70x70/delivery-feedback-11429138-e8e66-d843dbe5-220130132740.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1143/11429138/report/s214x214/delivery-feedback-11429138-e8e66-d843dbe5-220130132740.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1143/11429138/report/s414x414/delivery-feedback-11429138-e8e66-d843dbe5-220130132740.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1143/11429138/report/s600x600/delivery-feedback-11429138-e8e66-d843dbe5-220130132740.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-30 13:26:17",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"is_pr": false,
			"message": "giao hàng nhanh, đóng gói tốt, burger ngon lắm ạ, sẽ ủng hộ thêm",
			"merchant_id": 100323,
			"id": 66604203,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "bhgiang198",
				"name": "Bhgiang198",
				"id": 13175991
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1143/11423745/report/s70x70/delivery-feedback-11423745-a9991-f7baa4b3-220129180255.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1143/11423745/report/s214x214/delivery-feedback-11423745-a9991-f7baa4b3-220129180255.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1143/11423745/report/s414x414/delivery-feedback-11423745-a9991-f7baa4b3-220129180255.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1143/11423745/report/s600x600/delivery-feedback-11423745-a9991-f7baa4b3-220129180255.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-29 18:02:55",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Rất ngon , ăn rất nhiều lần tại quán rồi . Khá hợp khẩu vị , nói chung là okii",
			"merchant_id": 100323,
			"id": 66578490,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1143/11428138/report/s70x70/delivery-feedback-11428138-2bfbd-0db5fd18-220130114419.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1143/11428138/report/s214x214/delivery-feedback-11428138-2bfbd-0db5fd18-220130114419.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1143/11428138/report/s414x414/delivery-feedback-11428138-2bfbd-0db5fd18-220130114419.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1143/11428138/report/s600x600/delivery-feedback-11428138-2bfbd-0db5fd18-220130114419.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-29 13:32:12",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Đồ ăn ngon , vừa miệng. Khi giao đến vẫn còn ấm nóng. Sẽ tiếp tục ủng hộ quán thêm",
			"merchant_id": 100323,
			"id": 66567236,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "_ngthutrang112233",
				"name": "_Ngthutrang112233",
				"id": 18756066
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1143/11421373/report/s70x70/delivery-feedback-11421373-c3ca2-7bdd2d92-220129132850.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1143/11421373/report/s214x214/delivery-feedback-11421373-c3ca2-7bdd2d92-220129132850.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1143/11421373/report/s414x414/delivery-feedback-11421373-c3ca2-7bdd2d92-220129132850.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1143/11421373/report/s600x600/delivery-feedback-11421373-c3ca2-7bdd2d92-220129132850.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-29 13:03:03",
			"reason_ids": [],
			"like_dishes": [{
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"is_pr": false,
			"message": "Sốt pho mai ngon, gà tẩm ướp đông lạnh công nghiệp lâu năm nhưng ngon🤗, đặt thêm 1 slide phomai  ko biet để đâu rồi",
			"merchant_id": 100323,
			"id": 66565468,
			"is_anonymous": true,
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
			"merchant_rate": 4,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}]
	},
	"result": "success"
}
  ''';

  final String _json2 = r'''
  {
	"reply": {
		"user_feedbacks": [{
			"is_featured": false,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1142/11414232/report/s70x70/delivery-feedback-11414232-55dbb-4380c191-220128181820.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1142/11414232/report/s214x214/delivery-feedback-11414232-55dbb-4380c191-220128181820.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1142/11414232/report/s414x414/delivery-feedback-11414232-55dbb-4380c191-220128181820.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1142/11414232/report/s600x600/delivery-feedback-11414232-55dbb-4380c191-220128181820.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-28 18:18:00",
			"reason_ids": [],
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"like_dishes": [{
				"id": 9641267,
				"name": "Mix wing (4pcs)"
			}, {
				"id": 9369367,
				"name": "Combo Whopper Bò Tắm Phô Mai cỡ vừa"
			}],
			"is_pr": false,
			"message": "kabagahakssnnsnsnsnsnbsbsvsvsgsgshshsjsnsbsbsbsbsbsbbs",
			"merchant_id": 100323,
			"id": 66534214,
			"liked_dishes": [{
				"name_en": "MIX WING (4PCS)",
				"id": 9641267,
				"name": "Mix wing (4pcs)"
			}, {
				"name_en": "COMBO EXTREME CHEESY WHOPPER  JR",
				"id": 9369367,
				"name": "Combo Whopper Bò Tắm Phô Mai cỡ vừa"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1142/11413807/report/s70x70/delivery-feedback-11413807-21043-9b8ddb86-220128174224.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1142/11413807/report/s214x214/delivery-feedback-11413807-21043-9b8ddb86-220128174224.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1142/11413807/report/s414x414/delivery-feedback-11413807-21043-9b8ddb86-220128174224.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1142/11413807/report/s600x600/delivery-feedback-11413807-21043-9b8ddb86-220128174224.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-28 17:39:55",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 9112094,
				"name": "Gà Nuggets (6pcs)"
			}, {
				"id": 9369334,
				"name": "Burger Whopper bò nướng tràn phô mai cỡ vừa "
			}],
			"is_pr": false,
			"message": "Gà và bánh ngon, nóng hổi, sốt chấm của gà nudget vị lạ và ngon. Tiếc là không mua burger size lớn.",
			"merchant_id": 100323,
			"id": 66532181,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 9369334,
				"name": "Burger Whopper bò nướng tràn phô mai cỡ vừa "
			}, {
				"name_en": "",
				"id": 9112094,
				"name": "Gà Nuggets (6pcs)"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [],
			"create_time": "2022-01-27 19:18:02",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 9112094,
				"name": "Gà Nuggets (6pcs)"
			}, {
				"id": 9369454,
				"name": "Khoai Tây Chiên Tắm Phô Mai Với Thịt Xông Khói"
			}, {
				"id": 5204632,
				"name": "Milo"
			}],
			"is_pr": false,
			"message": "Sau 1 tháng ko quay lại quán Ko baO giờ làm mìnb thất vọng😋",
			"merchant_id": 100323,
			"id": 66479780,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 5204632,
				"name": "Milo"
			}, {
				"name_en": "",
				"id": 9369334,
				"name": "Burger Whopper bò nướng tràn phô mai cỡ vừa "
			}, {
				"name_en": "",
				"id": 9112094,
				"name": "Gà Nuggets (6pcs)"
			}, {
				"name_en": "",
				"id": 9369454,
				"name": "Khoai Tây Chiên Tắm Phô Mai Với Thịt Xông Khói"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1141/11402056/report/s70x70/delivery-feedback-11402056-8d0c8-0dc262cc-220127191212.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1141/11402056/report/s214x214/delivery-feedback-11402056-8d0c8-0dc262cc-220127191212.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1141/11402056/report/s414x414/delivery-feedback-11402056-8d0c8-0dc262cc-220127191212.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1141/11402056/report/s600x600/delivery-feedback-11402056-8d0c8-0dc262cc-220127191212.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-27 19:10:13",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "mình rất thích ăn cơm của quán, vừa ngon vừa mềm, ăn vừa khẩu vị. nhưng không hiểu sao lần này ăn cơm cứng, khô, ko dẻo, ăn như cơm sống, nguội, ăn rất chán. khá thất vọng",
			"merchant_id": 100323,
			"id": 66479221,
			"is_anonymous": true,
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
			"merchant_rate": 4,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s70x70/delivery-feedback-11395347-6e77e-4172461c-220127121113.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s214x214/delivery-feedback-11395347-6e77e-4172461c-220127121113.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s414x414/delivery-feedback-11395347-6e77e-4172461c-220127121113.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s600x600/delivery-feedback-11395347-6e77e-4172461c-220127121113.jpeg",
					"height": 600
				}],
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s70x70/delivery-feedback-11395347-75ab5-f5753420-220127121113.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s214x214/delivery-feedback-11395347-75ab5-f5753420-220127121113.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s414x414/delivery-feedback-11395347-75ab5-f5753420-220127121113.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s600x600/delivery-feedback-11395347-75ab5-f5753420-220127121113.jpeg",
					"height": 600
				}],
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s70x70/delivery-feedback-11395347-a6a01-6ab56ff7-220127121113.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s214x214/delivery-feedback-11395347-a6a01-6ab56ff7-220127121113.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s414x414/delivery-feedback-11395347-a6a01-6ab56ff7-220127121113.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1140/11395347/report/s600x600/delivery-feedback-11395347-a6a01-6ab56ff7-220127121113.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-27 12:08:51",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 9112084,
				"name": "Gà Nuggets (4pcs)"
			}, {
				"id": 43921198,
				"name": "Combo Lộc Phát tặng cặp nón đôi"
			}],
			"is_pr": false,
			"message": "Đồ ăn ở burger king rất ngon, đặc biệt là gà nuggets !!!!!!!!!!",
			"merchant_id": 100323,
			"id": 66448420,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 9112084,
				"name": "Gà Nuggets (4pcs)"
			}, {
				"name_en": "",
				"id": 43921198,
				"name": "Combo Lộc Phát tặng cặp nón đôi"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1139/11386017/report/s70x70/delivery-feedback-11386017-84493-1352c762-220126170621.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1139/11386017/report/s214x214/delivery-feedback-11386017-84493-1352c762-220126170621.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1139/11386017/report/s414x414/delivery-feedback-11386017-84493-1352c762-220126170621.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1139/11386017/report/s600x600/delivery-feedback-11386017-84493-1352c762-220126170621.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-26 17:03:43",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "ngon xỉu, sẽ tiếp tục ủng hộ quánnnnnnnnnnnnnnnnnnnnn",
			"merchant_id": 100323,
			"id": 66408349,
			"is_anonymous": true,
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
			"merchant_rate": 4,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1139/11385395/report/s70x70/delivery-feedback-11385395-cf6e7-2d81094a-220126162006.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1139/11385395/report/s214x214/delivery-feedback-11385395-cf6e7-2d81094a-220126162006.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1139/11385395/report/s414x414/delivery-feedback-11385395-cf6e7-2d81094a-220126162006.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1139/11385395/report/s600x600/delivery-feedback-11385395-cf6e7-2d81094a-220126162006.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-26 16:19:16",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [],
			"is_pr": false,
			"message": "No căng, siuuuu ngonnnn, tuyệt vờiiiiiiiiiiiiiiiiiiii",
			"merchant_id": 100323,
			"id": 66405714,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "huynmyt",
				"name": "Huynmyt",
				"id": 21332382
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1137/11368709/report/s70x70/delivery-feedback-11368709-d59a4-0a6165ff-220125151435.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1137/11368709/report/s214x214/delivery-feedback-11368709-d59a4-0a6165ff-220125151435.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1137/11368709/report/s414x414/delivery-feedback-11368709-d59a4-0a6165ff-220125151435.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1137/11368709/report/s600x600/delivery-feedback-11368709-d59a4-0a6165ff-220125151435.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-25 15:14:14",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "siêu ngon.............................................",
			"merchant_id": 100323,
			"id": 66335292,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g917/9163231/avt/s60x60/foody-avatar-15a0e663-ef63-4ba8--90d99310-220224220154.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g917/9163231/avt/s140x140/foody-avatar-15a0e663-ef63-4ba8--90d99310-220224220154.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g917/9163231/avt/s200x200/foody-avatar-15a0e663-ef63-4ba8--90d99310-220224220154.jpeg",
					"height": 180
				}],
				"first_name": "ThuyNguyen",
				"name": "Thuynguyen",
				"id": 4641770
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1136/11356828/report/s70x70/delivery-feedback-11356828-b0a82-faa2967a-220124193731.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1136/11356828/report/s214x214/delivery-feedback-11356828-b0a82-faa2967a-220124193731.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1136/11356828/report/s414x414/delivery-feedback-11356828-b0a82-faa2967a-220124193731.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1136/11356828/report/s600x600/delivery-feedback-11356828-b0a82-faa2967a-220124193731.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-24 19:36:34",
			"reason_ids": [],
			"like_dishes": [{
				"id": 5208495,
				"name": "Burger Bò Thịt Heo Xông Khói"
			}, {
				"id": 9112119,
				"name": "Khoai Tây Chiên (L)"
			}],
			"is_pr": false,
			"message": "Hình ảnh mang tính chất nhận xu 👍👍👍👍👍👍👍👍👍",
			"merchant_id": 100323,
			"id": 66286335,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 9112119,
				"name": "Khoai Tây Chiên (L)"
			}, {
				"name_en": "",
				"id": 5208495,
				"name": "Burger Bò Thịt Heo Xông Khói"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1135/11340063/report/s70x70/delivery-feedback-11340063-5f7d7-87229354-220123210731.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1135/11340063/report/s214x214/delivery-feedback-11340063-5f7d7-87229354-220123210731.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1135/11340063/report/s414x414/delivery-feedback-11340063-5f7d7-87229354-220123210731.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1135/11340063/report/s600x600/delivery-feedback-11340063-5f7d7-87229354-220123210731.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-23 21:06:08",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "H bn gvbcvanajabajahahahahahahabbaabbababaababbabaaba",
			"merchant_id": 100323,
			"id": 66219112,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1134/11335274/report/s70x70/delivery-feedback-11335274-da433-ba886313-220123171652.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1134/11335274/report/s214x214/delivery-feedback-11335274-da433-ba886313-220123171652.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1134/11335274/report/s414x414/delivery-feedback-11335274-da433-ba886313-220123171652.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1134/11335274/report/s600x600/delivery-feedback-11335274-da433-ba886313-220123171652.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-23 17:16:14",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "LOTTE DEPARTMENT STORE *** Bản quyền thuộc về công ty TNHH Lotte Shopping Plaza *** tầng 1 đến tầng 6, tòa nhà Lotte Center Hanoi, \n54 Liễu Giai, quận Ba Đình, Hà Nội | Hotline: 024 3333 2500\nCopyrights by Lotte Department Store ***",
			"merchant_id": 100323,
			"id": 66199272,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1134/11335005/report/s70x70/delivery-feedback-11335005-7e42c-e19fb80e-220123165925.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1134/11335005/report/s214x214/delivery-feedback-11335005-7e42c-e19fb80e-220123165925.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1134/11335005/report/s414x414/delivery-feedback-11335005-7e42c-e19fb80e-220123165925.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1134/11335005/report/s600x600/delivery-feedback-11335005-7e42c-e19fb80e-220123165925.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-23 16:58:50",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Ngon, đã ăn nhiều lần rồi, đồ ăn chất lượng, làm nhanh",
			"merchant_id": 100323,
			"id": 66198115,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g136/1356180/avt/s60x60/beauty-upload-api-foody-avatar-2b30fa87-8d4f-4a15-bc7c-b4717804f013-190725210839.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g136/1356180/avt/s140x140/beauty-upload-api-foody-avatar-2b30fa87-8d4f-4a15-bc7c-b4717804f013-190725210839.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g136/1356180/avt/s200x200/beauty-upload-api-foody-avatar-2b30fa87-8d4f-4a15-bc7c-b4717804f013-190725210839.jpg",
					"height": 180
				}],
				"first_name": "Phương",
				"name": "Phương Linh",
				"id": 1356180
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1132/11318234/report/s70x70/delivery-feedback-11318234-aea5e-d693d2dd-220122182656.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1132/11318234/report/s214x214/delivery-feedback-11318234-aea5e-d693d2dd-220122182656.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1132/11318234/report/s414x414/delivery-feedback-11318234-aea5e-d693d2dd-220122182656.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1132/11318234/report/s600x600/delivery-feedback-11318234-aea5e-d693d2dd-220122182656.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-22 18:25:48",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [],
			"is_pr": false,
			"message": "Gà nugget rất ngon, burger thì khỏi phải nói rồi quá xuất sắc nma khoai tây nên cho ít bột hơn",
			"merchant_id": 100323,
			"id": 66132114,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "vesau090304",
				"name": "Vesau090304",
				"id": 12971759
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1131/11301198/report/s70x70/delivery-feedback-11301198-6dee7-f410c222-220121200305.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1131/11301198/report/s214x214/delivery-feedback-11301198-6dee7-f410c222-220121200305.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1131/11301198/report/s414x414/delivery-feedback-11301198-6dee7-f410c222-220121200305.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1131/11301198/report/s600x600/delivery-feedback-11301198-6dee7-f410c222-220121200305.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-21 20:03:04",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Giao hàng lâu - nguội ngắt hết đồ",
			"merchant_id": 100323,
			"id": 66065470,
			"is_anonymous": false,
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
			"merchant_rate": 2,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g2300/22996296/avt/s60x60/foody-avatar-e3c44ad8-788e-4e28--eb84aa91-210127152958.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g2300/22996296/avt/s140x140/foody-avatar-e3c44ad8-788e-4e28--eb84aa91-210127152958.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g2300/22996296/avt/s200x200/foody-avatar-e3c44ad8-788e-4e28--eb84aa91-210127152958.jpeg",
					"height": 180
				}],
				"first_name": "Supply",
				"name": "Supply Long",
				"id": 17996296
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1128/11272521/report/s70x70/delivery-feedback-11272521-fe805-00731f24-220120131008.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1128/11272521/report/s214x214/delivery-feedback-11272521-fe805-00731f24-220120131008.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1128/11272521/report/s414x414/delivery-feedback-11272521-fe805-00731f24-220120131008.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1128/11272521/report/s600x600/delivery-feedback-11272521-fe805-00731f24-220120131008.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-20 13:09:25",
			"reason_ids": [],
			"like_dishes": [{
				"id": 43921198,
				"name": "Combo Lộc Phát tặng cặp nón đôi"
			}, {
				"id": 5204287,
				"name": "Phô Mai Que (2pcs)"
			}],
			"is_pr": false,
			"message": "Khs hôm nay bên nhà hàng lại không cho nước sốt chấm kiểu cà *** … chán ghê",
			"merchant_id": 100323,
			"id": 65949288,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 43921198,
				"name": "Combo Lộc Phát tặng cặp nón đôi"
			}, {
				"name_en": "Cheese Stick 2PCS",
				"id": 5204287,
				"name": "Phô Mai Que (2pcs)"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1128/11271419/report/s70x70/delivery-feedback-11271419-5f6ea-2956a8ea-220120123911.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1128/11271419/report/s214x214/delivery-feedback-11271419-5f6ea-2956a8ea-220120123911.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1128/11271419/report/s414x414/delivery-feedback-11271419-5f6ea-2956a8ea-220120123911.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1128/11271419/report/s600x600/delivery-feedback-11271419-5f6ea-2956a8ea-220120123911.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-20 12:35:49",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Đồ bị nguội. Các món đều hơi nhạt, ít sốt. Giá dc app mã nên còn khá rẻ. 😎😎😎😎😎😎😎😎😎😎",
			"merchant_id": 100323,
			"id": 65944822,
			"is_anonymous": true,
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
			"merchant_rate": 3,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [],
			"create_time": "2022-01-19 02:03:25",
			"reason_ids": [115],
			"like_dishes": [],
			"is_pr": false,
			"message": "Ko ngon ,bánh cứng,thịt cứng ,ko có rau, cà ***  Sẽ ko mua nữa",
			"merchant_id": 100323,
			"id": 65835380,
			"is_anonymous": false,
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
			"merchant_rate": 1,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "rin9xrin",
				"name": "Rin9Xrin",
				"id": 3307729
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1124/11236629/report/s70x70/delivery-feedback-11236629-bc052-ab823c2f-220118175335.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1124/11236629/report/s214x214/delivery-feedback-11236629-bc052-ab823c2f-220118175335.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1124/11236629/report/s414x414/delivery-feedback-11236629-bc052-ab823c2f-220118175335.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1124/11236629/report/s600x600/delivery-feedback-11236629-bc052-ab823c2f-220118175335.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-18 17:51:04",
			"reason_ids": [90, 91, 145],
			"like_dishes": [{
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"is_pr": false,
			"message": "Còn hơi đắt cho người vô sản cơ mà tôi có voucher và mua combo giảm giá",
			"merchant_id": 100323,
			"id": 65809465,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g1237/12360686/avt/s60x60/beauty-upload-api-foody-avatar-885b80ad-60cb-4d4b-b645-ffcca175a671-190919110148.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g1237/12360686/avt/s140x140/beauty-upload-api-foody-avatar-885b80ad-60cb-4d4b-b645-ffcca175a671-190919110148.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g1237/12360686/avt/s200x200/beauty-upload-api-foody-avatar-885b80ad-60cb-4d4b-b645-ffcca175a671-190919110148.jpg",
					"height": 180
				}],
				"first_name": "Bách",
				"name": "Bách Trn",
				"id": 6597488
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1124/11236557/report/s70x70/delivery-feedback-11236557-c2334-c1318133-220118174857.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1124/11236557/report/s214x214/delivery-feedback-11236557-c2334-c1318133-220118174857.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1124/11236557/report/s414x414/delivery-feedback-11236557-c2334-c1318133-220118174857.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1124/11236557/report/s600x600/delivery-feedback-11236557-c2334-c1318133-220118174857.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-18 17:44:18",
			"reason_ids": [90, 91, 145],
			"like_dishes": [{
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"is_pr": false,
			"message": "Tuy giá cao nhưng có voucher và mua combo thì cũng ok",
			"merchant_id": 100323,
			"id": 65808913,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g1237/12360686/avt/s60x60/beauty-upload-api-foody-avatar-885b80ad-60cb-4d4b-b645-ffcca175a671-190919110148.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g1237/12360686/avt/s140x140/beauty-upload-api-foody-avatar-885b80ad-60cb-4d4b-b645-ffcca175a671-190919110148.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g1237/12360686/avt/s200x200/beauty-upload-api-foody-avatar-885b80ad-60cb-4d4b-b645-ffcca175a671-190919110148.jpg",
					"height": 180
				}],
				"first_name": "Bách",
				"name": "Bách Trn",
				"id": 6597488
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1123/11229850/report/s70x70/delivery-feedback-11229850-60f6f-add6727d-220118130234.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1123/11229850/report/s214x214/delivery-feedback-11229850-60f6f-add6727d-220118130234.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1123/11229850/report/s414x414/delivery-feedback-11229850-60f6f-add6727d-220118130234.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1123/11229850/report/s600x600/delivery-feedback-11229850-60f6f-add6727d-220118130234.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-18 12:23:54",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 11149890,
				"name": "Burger Gà Phô Mai"
			}],
			"is_pr": false,
			"message": "Ngonnn lắm lần nào đặt ă cx ngon nma bánh k đc nóng hổi lắm nma đc",
			"merchant_id": 100323,
			"id": 65777862,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 11149890,
				"name": "Burger Gà Phô Mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g1520/15193985/avt/s60x60/foody-avatar-ff9bb129-7c75-4544--1206c145-210105125043.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g1520/15193985/avt/s140x140/foody-avatar-ff9bb129-7c75-4544--1206c145-210105125043.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g1520/15193985/avt/s200x200/foody-avatar-ff9bb129-7c75-4544--1206c145-210105125043.jpeg",
					"height": 180
				}],
				"first_name": "Baoquyen",
				"name": "Baoquyen Vũ",
				"id": 9651085
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1123/11222723/report/s70x70/delivery-feedback-11222723-cb582-dff53dcb-220118074730.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1123/11222723/report/s214x214/delivery-feedback-11222723-cb582-dff53dcb-220118074730.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1123/11222723/report/s414x414/delivery-feedback-11222723-cb582-dff53dcb-220118074730.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1123/11222723/report/s600x600/delivery-feedback-11222723-cb582-dff53dcb-220118074730.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-18 07:46:34",
			"reason_ids": [],
			"like_dishes": [{
				"id": 29119352,
				"name": "Cả tuần phấn khởi"
			}],
			"is_pr": false,
			"message": "Thời gian giao hàng nhanh, đóng gói đồ ăn cẩn thận, giá quá rẻ cho 1 combo",
			"merchant_id": 100323,
			"id": 65754723,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 29119352,
				"name": "Cả tuần phấn khởi"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [],
			"create_time": "2022-01-17 13:43:55",
			"reason_ids": [105],
			"like_dishes": [],
			"is_pr": false,
			"message": "mình đã yêu cầu đổi nước và nhận đc toàn coke. rất nhiều lần đều thế. mình có order thêm 2 combo gà phô mai và nhận lại là burger cá ??",
			"merchant_id": 100323,
			"id": 65706612,
			"is_anonymous": false,
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
			"merchant_rate": 3,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g92/915733/avt/s60x60/foody-avatar-f1f4c569-85c3-4fc4--06af3c9d-211024094829.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g92/915733/avt/s140x140/foody-avatar-f1f4c569-85c3-4fc4--06af3c9d-211024094829.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g92/915733/avt/s200x200/foody-avatar-f1f4c569-85c3-4fc4--06af3c9d-211024094829.jpeg",
					"height": 180
				}],
				"first_name": "Nam",
				"name": "Nam Hoàng",
				"id": 915733
			}
		}, {
			"is_featured": false,
			"photos": [],
			"create_time": "2022-01-17 13:03:27",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "Ăn k ngon như trước,bò bị khô,gà nướng thì ngon ướp đậm đà,khoai hơi ỉu",
			"merchant_id": 100323,
			"id": 65701900,
			"is_anonymous": true,
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
			"merchant_rate": 4,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1121/11208061/report/s70x70/delivery-feedback-11208061-4a355-e46a2c09-220117123401.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1121/11208061/report/s214x214/delivery-feedback-11208061-4a355-e46a2c09-220117123401.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1121/11208061/report/s414x414/delivery-feedback-11208061-4a355-e46a2c09-220117123401.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1121/11208061/report/s600x600/delivery-feedback-11208061-4a355-e46a2c09-220117123401.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-17 12:32:40",
			"reason_ids": [],
			"like_dishes": [{
				"id": 9291116,
				"name": "Combo Cơm Bò sốt BBQ"
			}],
			"is_pr": false,
			"message": "cơm ăn khá ngon, thịt mềm có sốt nên ăn rất thích. giao đến còn nóng, ăn vừa miệng.",
			"merchant_id": 100323,
			"id": 65697599,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "COMBO RICE BBQ BEEF",
				"id": 9291116,
				"name": "Combo Cơm Bò sốt BBQ"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1117/11169806/report/s70x70/delivery-feedback-11169806-206dc-b3711557-220115183614.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1117/11169806/report/s214x214/delivery-feedback-11169806-206dc-b3711557-220115183614.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1117/11169806/report/s414x414/delivery-feedback-11169806-206dc-b3711557-220115183614.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1117/11169806/report/s600x600/delivery-feedback-11169806-206dc-b3711557-220115183614.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-15 18:35:43",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "rất ngonnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn",
			"merchant_id": 100323,
			"id": 65551130,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1114/11138978/report/s70x70/delivery-feedback-11138978-f096d-aaa1f951-220114140522.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1114/11138978/report/s214x214/delivery-feedback-11138978-f096d-aaa1f951-220114140522.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1114/11138978/report/s414x414/delivery-feedback-11138978-f096d-aaa1f951-220114140522.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1114/11138978/report/s600x600/delivery-feedback-11138978-f096d-aaa1f951-220114140522.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-14 14:04:21",
			"reason_ids": [],
			"like_dishes": [{
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"is_pr": false,
			"message": "Đánh giá chỉ mang tính chất nhận xuuuuuuuuuuuuuuuuuuuuuuuuu",
			"merchant_id": 100323,
			"id": 65433736,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 28423605,
				"name": "Combo \"Say Nắng\""
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g1245/12442941/avt/s60x60/foody-avatar-bb310d4e-48f6-471d--75537216-210122115848.jpeg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g1245/12442941/avt/s140x140/foody-avatar-bb310d4e-48f6-471d--75537216-210122115848.jpeg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g1245/12442941/avt/s200x200/foody-avatar-bb310d4e-48f6-471d--75537216-210122115848.jpeg",
					"height": 180
				}],
				"first_name": "Thảo",
				"name": "Thảo Đặng",
				"id": 6686886
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1113/11127301/report/s70x70/delivery-feedback-11127301-b0879-bc60f4fd-220113213842.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1113/11127301/report/s214x214/delivery-feedback-11127301-b0879-bc60f4fd-220113213842.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1113/11127301/report/s414x414/delivery-feedback-11127301-b0879-bc60f4fd-220113213842.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1113/11127301/report/s600x600/delivery-feedback-11127301-b0879-bc60f4fd-220113213842.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-13 21:38:02",
			"reason_ids": [],
			"like_dishes": [],
			"is_pr": false,
			"message": "cuockyxkyxkhhzjgzkgzmgzkyzkyzktzktzkyzkyzkyzkgxykxkyxkyx",
			"merchant_id": 100323,
			"id": 65388046,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1113/11124960/report/s70x70/delivery-feedback-11124960-23705-1dedcb17-220113194808.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1113/11124960/report/s214x214/delivery-feedback-11124960-23705-1dedcb17-220113194808.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1113/11124960/report/s414x414/delivery-feedback-11124960-23705-1dedcb17-220113194808.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1113/11124960/report/s600x600/delivery-feedback-11124960-23705-1dedcb17-220113194808.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-13 19:46:58",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 28423630,
				"name": "Combo \"Say Yes!!\""
			}, {
				"id": 5204287,
				"name": "Phô Mai Que (2pcs)"
			}],
			"is_pr": false,
			"message": "đầy đặn và bánh to lắm ạ, bò mềm, thơm. Nhưng ship đến bị nguội nên khoai ăn hơi cháng nhưng khôm sao vì ship mà :(",
			"merchant_id": 100323,
			"id": 65379005,
			"is_anonymous": false,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 28423630,
				"name": "Combo \"Say Yes!!\""
			}, {
				"name_en": "Cheese Stick 2PCS",
				"id": 5204287,
				"name": "Phô Mai Que (2pcs)"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/usr/g892/8918022/avt/s60x60/beauty-upload-api-foody-avatar-feac81bd-2869-4054-942b-ebd14ba084b1-190310185520.jpg",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/usr/g892/8918022/avt/s140x140/beauty-upload-api-foody-avatar-feac81bd-2869-4054-942b-ebd14ba084b1-190310185520.jpg",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/usr/g892/8918022/avt/s200x200/beauty-upload-api-foody-avatar-feac81bd-2869-4054-942b-ebd14ba084b1-190310185520.jpg",
					"height": 180
				}],
				"first_name": "Hồng",
				"name": "Hồng Vân",
				"id": 2977378
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1109/11084494/report/s70x70/delivery-feedback-11084494-abc74-37475bb4-220111233741.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1109/11084494/report/s214x214/delivery-feedback-11084494-abc74-37475bb4-220111233741.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1109/11084494/report/s414x414/delivery-feedback-11084494-abc74-37475bb4-220111233741.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1109/11084494/report/s600x600/delivery-feedback-11084494-abc74-37475bb4-220111233741.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-11 23:37:17",
			"reason_ids": [],
			"like_dishes": [{
				"id": 9500602,
				"name": "Burger  Whopper bò nướng cỡ lớn"
			}, {
				"id": 9369423,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}, {
				"id": 11149890,
				"name": "Burger Gà Phô Mai"
			}],
			"is_pr": false,
			"message": "Gooddddddddddddddddddddddddddddddddddddddddddddddđ",
			"merchant_id": 100323,
			"id": 65222046,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 9500602,
				"name": "Burger  Whopper bò nướng cỡ lớn"
			}, {
				"name_en": "",
				"id": 11149890,
				"name": "Burger Gà Phô Mai"
			}, {
				"name_en": "",
				"id": 9112094,
				"name": "Gà Nuggets (6pcs)"
			}, {
				"name_en": "CHEESY FRIES ",
				"id": 9369423,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}, {
			"is_featured": false,
			"photos": [
				[{
					"width": 70,
					"value": "https://images.foody.vn/delivery/g1108/11079434/report/s70x70/delivery-feedback-11079434-41e35-4e2c8963-220111185010.jpeg",
					"height": 70
				}, {
					"width": 214,
					"value": "https://images.foody.vn/delivery/g1108/11079434/report/s214x214/delivery-feedback-11079434-41e35-4e2c8963-220111185010.jpeg",
					"height": 214
				}, {
					"width": 414,
					"value": "https://images.foody.vn/delivery/g1108/11079434/report/s414x414/delivery-feedback-11079434-41e35-4e2c8963-220111185010.jpeg",
					"height": 414
				}, {
					"width": 600,
					"value": "https://images.foody.vn/delivery/g1108/11079434/report/s600x600/delivery-feedback-11079434-41e35-4e2c8963-220111185010.jpeg",
					"height": 600
				}]
			],
			"create_time": "2022-01-11 18:49:28",
			"reason_ids": [90, 91, 92, 145],
			"like_dishes": [{
				"id": 11247117,
				"name": "Burger  Whopper bò nướng phô mai thịt heo xông khói sốt BBQ"
			}, {
				"id": 9369423,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}],
			"is_pr": false,
			"message": "Ngon ngon ngon ngon ngon ngon ngon Ngon ngon ngon ngon ngon ngon ngon Ngon ngon ngon ngon ngon ngon ngon",
			"merchant_id": 100323,
			"id": 65202671,
			"is_anonymous": true,
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
			"merchant_rate": 5,
			"merchant_images": [{
				"width": 180,
				"value": "https://images.foody.vn/res/g11/100323/bg/s180x180/image-d64823a0-220222132115.jpg",
				"height": 180
			}, {
				"width": 240,
				"value": "https://images.foody.vn/res/g11/100323/bg/s240x240/image-d64823a0-220222132115.jpg",
				"height": 240
			}, {
				"width": 320,
				"value": "https://images.foody.vn/res/g11/100323/bg/s320x320/image-d64823a0-220222132115.jpg",
				"height": 320
			}, {
				"width": 480,
				"value": "https://images.foody.vn/res/g11/100323/bg/s480x480/image-d64823a0-220222132115.jpg",
				"height": 480
			}],
			"liked_dishes": [{
				"name_en": "",
				"id": 11247117,
				"name": "Burger  Whopper bò nướng phô mai thịt heo xông khói sốt BBQ"
			}, {
				"name_en": "CHEESY FRIES ",
				"id": 9369423,
				"name": "Khoai Tây Chiên Tắm Phô Mai"
			}],
			"user": {
				"photos": [{
					"width": 60,
					"value": "https://images.foody.vn/default/s60/shopeefood-user-default-female.png",
					"height": 60
				}, {
					"width": 120,
					"value": "https://images.foody.vn/default/s120/shopeefood-user-default-female.png",
					"height": 120
				}, {
					"width": 180,
					"value": "https://images.foody.vn/default/s180/shopeefood-user-default-female.png",
					"height": 180
				}],
				"first_name": "Anonymous",
				"name": "Anonymous",
				"id": 1
			}
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetFeedback);
  }

  @override
  response() {
    return jsonDecode((DateTime.now().second % 2 == 0) ? _json : _json2);
  }
}
