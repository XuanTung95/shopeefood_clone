import 'dart:convert';

import 'package:shopeefood_clone/models/model_collection.dart';
import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';

import '../remote_url.dart';

class FakeDishApi extends BaseFakeApi {
  final String _json = r'''
{
    "reply": {
        "dish_infos": [
            {
                "total_order": 100,
                "campaigns": [],
                "name": "Nem Chua Rán 1 chiếc",
                "display_total_order": "100+",
                "price": {
                    "text": "7,350đ",
                    "unit": "đ",
                    "value": 7350.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 10,
                "display_total_like": "10+",
                "delivery": {
                    "name": "Bà Shin Vlog - Ẩm Thực & Quà Vặt Siêu Ngon Online - Trương Định",
                    "city_id": 218,
                    "restaurant_id": 943859,
                    "prepare_time": 15,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g95/943859/prof/s180x180/file_restaurant_photo_plrd_16112-f5e0d195-210122015420.jpeg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g95/943859/prof/s240x240/file_restaurant_photo_plrd_16112-f5e0d195-210122015420.jpeg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g95/943859/prof/s320x320/file_restaurant_photo_plrd_16112-f5e0d195-210122015420.jpeg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g95/943859/prof/s480x480/file_restaurant_photo_plrd_16112-f5e0d195-210122015420.jpeg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.97882,
                        "longitude": 105.842678
                    },
                    "name_en": "",
                    "id": 90845
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g95/943859/s120x120/f4a8cf99-7f55-4db3-9bf0-a3e2a479-8064c9c3-210315185203.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g95/943859/s180x180/f4a8cf99-7f55-4db3-9bf0-a3e2a479-8064c9c3-210315185203.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g95/943859/s570x570/f4a8cf99-7f55-4db3-9bf0-a3e2a479-8064c9c3-210315185203.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g95/943859/s750x750/f4a8cf99-7f55-4db3-9bf0-a3e2a479-8064c9c3-210315185203.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g95/943859/s1242x1242/f4a8cf99-7f55-4db3-9bf0-a3e2a479-8064c9c3-210315185203.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 14282250
            },
            {
                "total_order": 100,
                "campaigns": [],
                "name": "HÀU NƯỚNG MỠ HÀNH KHUYẾN MÃI",
                "display_total_order": "100+",
                "price": {
                    "text": "8,000đ",
                    "unit": "đ",
                    "value": 8000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 3,
                "display_total_like": "3",
                "delivery": {
                    "name": "Vua Hàu Nướng - Định Công",
                    "city_id": 218,
                    "restaurant_id": 1043762,
                    "prepare_time": 15,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-97c3d4b6-211122180435.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-97c3d4b6-211122180435.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-97c3d4b6-211122180435.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-97c3d4b6-211122180435.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-97c3d4b6-211122180435.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g105/1043762/bg/s180x180/file_restaurant_photo_tnbb_16236-0250bd50-210614135101.jpg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g105/1043762/bg/s240x240/file_restaurant_photo_tnbb_16236-0250bd50-210614135101.jpg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g105/1043762/bg/s320x320/file_restaurant_photo_tnbb_16236-0250bd50-210614135101.jpg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g105/1043762/bg/s480x480/file_restaurant_photo_tnbb_16236-0250bd50-210614135101.jpg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.977878,
                        "longitude": 105.832751
                    },
                    "name_en": "",
                    "id": 130380
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g105/1043762/s120x120/38e44e34-0ab1-4cf0-a26a-bf52643a-2806b75d-220103224411.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g105/1043762/s180x180/38e44e34-0ab1-4cf0-a26a-bf52643a-2806b75d-220103224411.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g105/1043762/s570x570/38e44e34-0ab1-4cf0-a26a-bf52643a-2806b75d-220103224411.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g105/1043762/s750x750/38e44e34-0ab1-4cf0-a26a-bf52643a-2806b75d-220103224411.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g105/1043762/s1242x1242/38e44e34-0ab1-4cf0-a26a-bf52643a-2806b75d-220103224411.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 41438509
            },
            {
                "total_order": 1000,
                "campaigns": [],
                "name": "Hồng Trà Sữa",
                "display_total_order": "999+",
                "price": {
                    "text": "41,000đ",
                    "unit": "đ",
                    "value": 41000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 100,
                "display_total_like": "100+",
                "delivery": {
                    "name": "Royal Tea - Nguyễn Lân",
                    "city_id": 218,
                    "restaurant_id": 1063158,
                    "prepare_time": 15,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g107/1063158/bg/s180x180/file_restaurant_photo_jfhn_16183-5a81cfaf-210413174914.jpg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g107/1063158/bg/s240x240/file_restaurant_photo_jfhn_16183-5a81cfaf-210413174914.jpg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g107/1063158/bg/s320x320/file_restaurant_photo_jfhn_16183-5a81cfaf-210413174914.jpg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g107/1063158/bg/s480x480/file_restaurant_photo_jfhn_16183-5a81cfaf-210413174914.jpg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.9905379526003,
                        "longitude": 105.83697234795
                    },
                    "name_en": "",
                    "id": 156599
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g106/1056463/s120x120/5eaba0b0-e5c8-4ab4-86b5-419af189-1fde2cc8-210922104348.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g106/1056463/s180x180/5eaba0b0-e5c8-4ab4-86b5-419af189-1fde2cc8-210922104348.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g106/1056463/s570x570/5eaba0b0-e5c8-4ab4-86b5-419af189-1fde2cc8-210922104348.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g106/1056463/s750x750/5eaba0b0-e5c8-4ab4-86b5-419af189-1fde2cc8-210922104348.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g106/1056463/s1242x1242/5eaba0b0-e5c8-4ab4-86b5-419af189-1fde2cc8-210922104348.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 23250538
            },
            {
                "total_order": 1000,
                "campaigns": [],
                "name": "Sữa Chua Trắng",
                "display_total_order": "999+",
                "price": {
                    "text": "25,000đ",
                    "unit": "đ",
                    "value": 25000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 100,
                "display_total_like": "100+",
                "delivery": {
                    "name": "Sữa Chua Trân Châu Hạ Long Healthy - Nguyễn Lân",
                    "city_id": 218,
                    "restaurant_id": 1046812,
                    "prepare_time": 15,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g105/1046812/bg/s180x180/file_restaurant_photo_j9qp_16194-5a2aacc2-210426105016.jpg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g105/1046812/bg/s240x240/file_restaurant_photo_j9qp_16194-5a2aacc2-210426105016.jpg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g105/1046812/bg/s320x320/file_restaurant_photo_j9qp_16194-5a2aacc2-210426105016.jpg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g105/1046812/bg/s480x480/file_restaurant_photo_j9qp_16194-5a2aacc2-210426105016.jpg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.990528,
                        "longitude": 105.836983
                    },
                    "name_en": "",
                    "id": 132754
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g105/1046812/s120x120/41157405-3146-423d-a74c-d4e4018b-e1aaee51-210528180813.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g105/1046812/s180x180/41157405-3146-423d-a74c-d4e4018b-e1aaee51-210528180813.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g105/1046812/s570x570/41157405-3146-423d-a74c-d4e4018b-e1aaee51-210528180813.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g105/1046812/s750x750/41157405-3146-423d-a74c-d4e4018b-e1aaee51-210528180813.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g105/1046812/s1242x1242/41157405-3146-423d-a74c-d4e4018b-e1aaee51-210528180813.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 11643505
            },
            {
                "total_order": 500,
                "campaigns": [],
                "name": "Pizza Baby 5cm",
                "display_total_order": "500+",
                "price": {
                    "text": "25,000đ",
                    "unit": "đ",
                    "value": 25000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 10,
                "display_total_like": "10+",
                "delivery": {
                    "name": "Pizza Home - Đại Cồ Việt",
                    "city_id": 218,
                    "restaurant_id": 42055,
                    "prepare_time": 10,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g5/42055/bg/s180x180/file_restaurant_photo_jq4x_16382-67a5e649-211130212245.jpg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g5/42055/bg/s240x240/file_restaurant_photo_jq4x_16382-67a5e649-211130212245.jpg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g5/42055/bg/s320x320/file_restaurant_photo_jq4x_16382-67a5e649-211130212245.jpg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g5/42055/bg/s480x480/file_restaurant_photo_jq4x_16382-67a5e649-211130212245.jpg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 21.0087044,
                        "longitude": 105.8493786
                    },
                    "name_en": "",
                    "id": 6201
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g5/42055/s120x120/6dfea822-999a-47fb-93a6-b70469e7-b05ba32d-210425085626.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g5/42055/s180x180/6dfea822-999a-47fb-93a6-b70469e7-b05ba32d-210425085626.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g5/42055/s570x570/6dfea822-999a-47fb-93a6-b70469e7-b05ba32d-210425085626.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g5/42055/s750x750/6dfea822-999a-47fb-93a6-b70469e7-b05ba32d-210425085626.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g5/42055/s1242x1242/6dfea822-999a-47fb-93a6-b70469e7-b05ba32d-210425085626.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 15429193
            },
            {
                "total_order": 1000,
                "campaigns": [],
                "name": "Cóc Bao Tử  (Không Kèm Chấm)",
                "display_total_order": "999+",
                "price": {
                    "text": "43,000đ",
                    "unit": "đ",
                    "value": 43000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 50,
                "display_total_like": "50+",
                "delivery": {
                    "name": "Hoa Quả 88 - Ngõ Hoà Bình 7",
                    "city_id": 218,
                    "restaurant_id": 1002634,
                    "prepare_time": 15,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g101/1002634/bg/s180x180/file_restaurant_photo_4ax6_16031-1ca18db5-201019221739.jpg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g101/1002634/bg/s240x240/file_restaurant_photo_4ax6_16031-1ca18db5-201019221739.jpg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g101/1002634/bg/s320x320/file_restaurant_photo_4ax6_16031-1ca18db5-201019221739.jpg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g101/1002634/bg/s480x480/file_restaurant_photo_4ax6_16031-1ca18db5-201019221739.jpg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.997585802902,
                        "longitude": 105.856974963738
                    },
                    "name_en": "",
                    "id": 107183
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g96/952227/s120x120/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g96/952227/s180x180/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g96/952227/s570x570/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g96/952227/s750x750/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g96/952227/s1242x1242/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 9409338
            },
            {
                "total_order": 500,
                "campaigns": [],
                "name": "Tàu Hũ Trắng Trân Châu Đường Đen",
                "display_total_order": "500+",
                "price": {
                    "text": "41,000đ",
                    "unit": "đ",
                    "value": 41000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "19,000đ",
                    "unit": "đ",
                    "value": 19000.0
                },
                "total_like": 50,
                "display_total_like": "50+",
                "delivery": {
                    "name": "Chick Garden - Chè Ngon & Súp Ngọt - Linh Đàm",
                    "city_id": 218,
                    "restaurant_id": 1071213,
                    "prepare_time": 10,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g108/1071213/bg/s180x180/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210329144743.jpg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g108/1071213/bg/s240x240/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210329144743.jpg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g108/1071213/bg/s320x320/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210329144743.jpg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g108/1071213/bg/s480x480/foody-upload-api-foody-logo-foody-upload-api-foo.jpg-210329144743.jpg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.9633427,
                        "longitude": 105.8276027
                    },
                    "name_en": "",
                    "id": 163769
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g27/264305/s120x120/8d808b3d-1d6d-4abe-bbd2-5d99cd7b-880a9f1a-210601220148.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g27/264305/s180x180/8d808b3d-1d6d-4abe-bbd2-5d99cd7b-880a9f1a-210601220148.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g27/264305/s570x570/8d808b3d-1d6d-4abe-bbd2-5d99cd7b-880a9f1a-210601220148.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g27/264305/s750x750/8d808b3d-1d6d-4abe-bbd2-5d99cd7b-880a9f1a-210601220148.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g27/264305/s1242x1242/8d808b3d-1d6d-4abe-bbd2-5d99cd7b-880a9f1a-210601220148.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 2,
                "name_en": "",
                "id": 16066762
            },
            {
                "total_order": 1000,
                "campaigns": [],
                "name": "Cá Viên",
                "display_total_order": "999+",
                "price": {
                    "text": "10,000đ",
                    "unit": "đ",
                    "value": 10000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 10,
                "display_total_like": "10+",
                "delivery": {
                    "name": "Bánh Gà & Nem Chua - Hồng Mai",
                    "city_id": 218,
                    "restaurant_id": 966686,
                    "prepare_time": 15,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g97/966686/bg/s180x180/beauty-upload-api-image-200803233515.jpeg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g97/966686/bg/s240x240/beauty-upload-api-image-200803233515.jpeg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g97/966686/bg/s320x320/beauty-upload-api-image-200803233515.jpeg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g97/966686/bg/s480x480/beauty-upload-api-image-200803233515.jpeg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.998934,
                        "longitude": 105.855834
                    },
                    "name_en": "",
                    "id": 96875
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g97/966686/s120x120/7e72ca64-3a7f-41d5-885e-73054ec8e14f.jpg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g97/966686/s180x180/7e72ca64-3a7f-41d5-885e-73054ec8e14f.jpg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g97/966686/s570x570/7e72ca64-3a7f-41d5-885e-73054ec8e14f.jpg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g97/966686/s750x750/7e72ca64-3a7f-41d5-885e-73054ec8e14f.jpg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g97/966686/s1242x1242/7e72ca64-3a7f-41d5-885e-73054ec8e14f.jpg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 8033285
            },
            {
                "total_order": 1000,
                "campaigns": [],
                "name": "Cóc Bao Tử  (Không Kèm Chấm)",
                "display_total_order": "999+",
                "price": {
                    "text": "43,000đ",
                    "unit": "đ",
                    "value": 43000.0
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 10,
                "display_total_like": "10+",
                "delivery": {
                    "name": "Hoa Quả 88 - Trương Định",
                    "city_id": 218,
                    "restaurant_id": 1024213,
                    "prepare_time": 15,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-2f7a007a-211122180249.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-2f7a007a-211122180249.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g103/1024213/bg/s180x180/file_restaurant_photo_pkrx_16031-f552e6e5-201019221857.jpg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g103/1024213/bg/s240x240/file_restaurant_photo_pkrx_16031-f552e6e5-201019221857.jpg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g103/1024213/bg/s320x320/file_restaurant_photo_pkrx_16031-f552e6e5-201019221857.jpg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g103/1024213/bg/s480x480/file_restaurant_photo_pkrx_16031-f552e6e5-201019221857.jpg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 20.994996,
                        "longitude": 105.849841
                    },
                    "name_en": "",
                    "id": 115709
                },
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g96/952227/s120x120/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g96/952227/s180x180/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g96/952227/s570x570/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g96/952227/s750x750/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g96/952227/s1242x1242/95fb9c7b-6588-43ab-870c-ce19a0d5-a42dfbee-210710101449.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": true,
                "limit_type": 3,
                "name_en": "",
                "id": 10254358
            },
            {
                "total_order": 100,
                "delivery": {
                    "prepare_time": 10,
                    "name": "Tiệm Gà Óng Ánh - Nguyễn Hiền",
                    "city_id": 218,
                    "restaurant_id": 1084258,
                    "label": {
                        "photos": [
                            {
                                "width": 180,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s180/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 240,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s240/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 320,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s320/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 480,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s480/image-4c919d6f-211122180626.png",
                                "height": 0
                            },
                            {
                                "width": 640,
                                "value": "https://images.foody.vn/label_image/g2022/20211122/s640x400/image-4c919d6f-211122180626.png",
                                "height": 640
                            }
                        ],
                        "label_position": 1
                    },
                    "photos": [
                        {
                            "width": 180,
                            "value": "https://images.foody.vn/res/g109/1084258/bg/s180x180/foody-upload-api-foody-logo-beau-4d17fce1-210630170224.jpeg",
                            "height": 180
                        },
                        {
                            "width": 240,
                            "value": "https://images.foody.vn/res/g109/1084258/bg/s240x240/foody-upload-api-foody-logo-beau-4d17fce1-210630170224.jpeg",
                            "height": 240
                        },
                        {
                            "width": 320,
                            "value": "https://images.foody.vn/res/g109/1084258/bg/s320x320/foody-upload-api-foody-logo-beau-4d17fce1-210630170224.jpeg",
                            "height": 320
                        },
                        {
                            "width": 480,
                            "value": "https://images.foody.vn/res/g109/1084258/bg/s480x480/foody-upload-api-foody-logo-beau-4d17fce1-210630170224.jpeg",
                            "height": 480
                        }
                    ],
                    "position": {
                        "latitude": 21.0019519260613,
                        "longitude": 105.848539425317
                    },
                    "name_en": "",
                    "id": 192333
                },
                "name": "chese ball set 2v ",
                "display_total_order": "100+",
                "price": {
                    "text": "30,000đ",
                    "value": 30000.0,
                    "unit": "đ"
                },
                "discount_remaining_quantity": 1,
                "discount_price": {
                    "text": "1đ",
                    "unit": "đ",
                    "value": 1.0
                },
                "total_like": 10,
                "display_total_like": "10+",
                "campaigns": [],
                "photos": [
                    {
                        "width": 120,
                        "value": "https://images.foody.vn/res/g71/702949/s120x120/eb13ad6a-421c-417f-a907-9912c50d-1a540241-211226165252.jpeg",
                        "height": 120
                    },
                    {
                        "width": 180,
                        "value": "https://images.foody.vn/res/g71/702949/s180x180/eb13ad6a-421c-417f-a907-9912c50d-1a540241-211226165252.jpeg",
                        "height": 180
                    },
                    {
                        "width": 560,
                        "value": "https://images.foody.vn/res/g71/702949/s570x570/eb13ad6a-421c-417f-a907-9912c50d-1a540241-211226165252.jpeg",
                        "height": 560
                    },
                    {
                        "width": 750,
                        "value": "https://images.foody.vn/res/g71/702949/s750x750/eb13ad6a-421c-417f-a907-9912c50d-1a540241-211226165252.jpeg",
                        "height": 750
                    },
                    {
                        "width": 1242,
                        "value": "https://images.foody.vn/res/g71/702949/s1242x1242/eb13ad6a-421c-417f-a907-9912c50d-1a540241-211226165252.jpeg",
                        "height": 1242
                    }
                ],
                "is_valid": false,
                "limit_type": 3,
                "name_en": "",
                "id": 37945976
            }
        ]
    },
    "result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetDishInfo);
  }

  @override
  dynamic response({String? url}) {
    return jsonDecode(_json);
  }
}
