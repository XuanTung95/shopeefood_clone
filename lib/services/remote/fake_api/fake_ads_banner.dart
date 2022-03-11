


import 'dart:convert';

import 'package:shopeefood_clone/services/remote/remote_url.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../../utils/enum_utils.dart';
import 'base_fake_api.dart';

class FakeAddBanner extends BaseFakeApi {
  final String _json = r'''
  {
    "reply": {
        "banner_infos": [
            {
                "video_banner_type": null,
                "update_time": 1645438726,
                "name": "HN_[SBD] Phúc Long - bottom",
                "cover_video": null,
                "title": "HN_[SBD] Phúc Long",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645462800,
                "is_active": "1",
                "period": 0,
                "id": 44955,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s400x125/image-95aa9402-220214150035.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s800x250/image-95aa9402-220214150035.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1200x375/image-95aa9402-220214150035.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-95aa9402-220214150035.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/phuc-long-coffee--tea-tang-mon-1-dong",
                "create_time": 1645173967,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-95aa9402-220214150035.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=12609&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/phuc-long-coffee--tea-tang-mon-1-dong",
                    "image": {
                        "image_name": "image-95aa9402-220214150035.jpeg",
                        "folder_id": "20220214"
                    },
                    "video_id": 0,
                    "is_pinned": false,
                    "district_ids": [],
                    "show_positions": [
                        12
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/phuc-long-coffee--tea-tang-mon-1-dong",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 2,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645522142,
                "name": "HN_[SBD] KOMBO - Cơm Niêu Singapore - bottom",
                "cover_video": null,
                "title": "HN_[SBD] KOMBO - Cơm Niêu Singapore",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45126,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-6d831c6d-220221172054.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-6d831c6d-220221172054.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-6d831c6d-220221172054.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-6d831c6d-220221172054.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/kombo---com-nieu-singapore-hn",
                "create_time": 1645438896,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-6d831c6d-220221172054.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=8643&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/kombo---com-nieu-singapore-hn",
                    "image": {
                        "image_name": "image-6d831c6d-220221172054.jpeg",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        12
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/kombo---com-nieu-singapore-hn",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 3,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645444282,
                "name": "HN_[ETP] Trà sữa TocoToco 17,18, 24,25 - bottom",
                "cover_video": null,
                "title": "HN_[ETP] Trà sữa TocoToco 17,18, 24,25",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45127,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220216/s400x125/image-8da39708-220216141957.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220216/s800x250/image-8da39708-220216141957.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220216/s1200x375/image-8da39708-220216141957.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220216/s1600x500/image-8da39708-220216141957.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/tra-sua-tocotoco-etp",
                "create_time": 1645439219,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220216/s1600x500/image-8da39708-220216141957.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=9228&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/tra-sua-tocotoco-etp",
                    "image": {
                        "image_name": "image-8da39708-220216141957.jpeg",
                        "folder_id": "20220216"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        12
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/tra-sua-tocotoco-etp",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 6,
                "end_time": 1645808400
            },
            {
                "video_banner_type": null,
                "update_time": 1645410682,
                "name": "HN_QC_Gà Rán Popeyes Hà Nội",
                "cover_video": null,
                "title": "HN_QC_Gà Rán Popeyes Hà Nội",
                "city_id": 0,
                "create_by": 10983563,
                "start_time": 1645376400,
                "is_active": "1",
                "period": 0,
                "id": 44412,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220126/s400x125/image-e721e8d7-220126145136.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220126/s800x250/image-e721e8d7-220126145136.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220126/s1200x375/image-e721e8d7-220126145136.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220126/s1600x500/image-e721e8d7-220126145136.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/thuong-hieu/ga-ran-popeyes-ha-noi",
                "create_time": 1644814475,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220126/s1600x500/image-e721e8d7-220126145136.jpeg",
                "image_url_en": "",
                "action": "action=brand&id=4097&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "image": {
                        "image_name": "image-e721e8d7-220126145136.jpeg",
                        "folder_id": "20220126"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        47
                    ],
                    "action_url": "https://shopeefood.vn/thuong-hieu/ga-ran-popeyes-ha-noi",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 1,
                "end_time": 1645981200
            },
            {
                "video_banner_type": null,
                "update_time": 1645416054,
                "name": "HN_QC_Trà Sữa Pozaa Tea",
                "cover_video": null,
                "title": "HN_QC_Trà Sữa Pozaa Tea",
                "city_id": 0,
                "create_by": 10983563,
                "start_time": 1645376400,
                "is_active": "1",
                "period": 0,
                "id": 45038,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-a696a867-220221110019.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-a696a867-220221110019.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-a696a867-220221110019.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-a696a867-220221110019.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/thuong-hieu/tra-sua-pozaa-tea",
                "create_time": 1645416054,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-a696a867-220221110019.jpeg",
                "image_url_en": "",
                "action": "action=brand&id=6949&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "image": {
                        "image_name": "image-a696a867-220221110019.jpeg",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        47
                    ],
                    "action_url": "https://shopeefood.vn/thuong-hieu/tra-sua-pozaa-tea",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 2,
                "end_time": 1645981200
            },
            {
                "video_banner_type": null,
                "update_time": 1645418300,
                "name": "HN_QC_Happy Lunch",
                "cover_video": null,
                "title": "HN_QC_Happy Lunch",
                "city_id": 0,
                "create_by": 10983563,
                "start_time": 1645376400,
                "is_active": "1",
                "period": 0,
                "id": 45044,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-47c11fbc-220221112827.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-47c11fbc-220221112827.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-47c11fbc-220221112827.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-47c11fbc-220221112827.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://now.vn/thuong-hieu/happy-lunch",
                "create_time": 1645417713,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-47c11fbc-220221112827.jpeg",
                "image_url_en": "",
                "action": "action=brand&id=7816&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "image": {
                        "image_name": "image-47c11fbc-220221112827.jpeg",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        47
                    ],
                    "action_url": "https://now.vn/thuong-hieu/happy-lunch",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 3,
                "end_time": 1645981200
            },
            {
                "video_banner_type": null,
                "update_time": 1645439283,
                "name": "HN_[ETP]KOMBO - Cơm Niêu Singapore 23 24 25 - static",
                "cover_video": null,
                "title": "HN_[ETP]KOMBO - Cơm Niêu Singapore 23 24 25",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45128,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-757b3578-220221153555.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-757b3578-220221153555.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-757b3578-220221153555.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-757b3578-220221153555.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/kombo---com-nieu-singapore2",
                "create_time": 1645439283,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-757b3578-220221153555.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=9462&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/kombo---com-nieu-singapore2",
                    "image": {
                        "image_name": "image-757b3578-220221153555.jpeg",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": false,
                    "district_ids": [],
                    "show_positions": [
                        47
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/kombo---com-nieu-singapore2",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 6,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645437266,
                "name": "HN_[JBP BAU] Koi The",
                "cover_video": null,
                "title": "HN_[JBP BAU] Koi The",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 43944,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s400x125/image-d8e41eeb-220214151737.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s800x250/image-d8e41eeb-220214151737.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1200x375/image-d8e41eeb-220214151737.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-d8e41eeb-220214151737.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/koi-the---hcm",
                "create_time": 1644314180,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-d8e41eeb-220214151737.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=11956&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.vn/bo-suu-tap/koi-the---hcm",
                    "image": {
                        "image_name": "image-d8e41eeb-220214151737.jpeg",
                        "folder_id": "20220214"
                    },
                    "video_id": 0,
                    "is_pinned": false,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/koi-the---hcm",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 5,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645437940,
                "name": "HN_WC_Thứ 5 mời thương hiệu đỉnh_13h -16h",
                "cover_video": null,
                "title": "HN_WC_Thứ 5 mời thương hiệu đỉnh_13h -16h",
                "city_id": 0,
                "create_by": 15432919,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 22191,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-82e0c728-220221170538.png",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-82e0c728-220221170538.png",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-82e0c728-220221170538.png",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-82e0c728-220221170538.png",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.shopee.vn/bo-suu-tap/thu-5-sieu-deal-thuong-hieu?deep_and_deferred=1",
                "create_time": 1611742138,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-82e0c728-220221170538.png",
                "image_url_en": "",
                "action": "action=deliverycollection&id=12849&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/thu-5-sieu-deal-thuong-hieu?deep_and_deferred=1",
                    "image": {
                        "image_name": "image-82e0c728-220221170538.png",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.shopee.vn/bo-suu-tap/thu-5-sieu-deal-thuong-hieu?deep_and_deferred=1",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 2,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645607880,
                "name": "HN_[SPWC]_Món ngon thương hiệu độc quyền giảm đến 50%",
                "cover_video": null,
                "title": "HN_[SPWC]_Món ngon thương hiệu độc quyền giảm đến 50%",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 44479,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s400x125/image-84950fc5-220223161757.png",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s800x250/image-84950fc5-220223161757.png",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s1200x375/image-84950fc5-220223161757.png",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s1600x500/image-84950fc5-220223161757.png",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/thu-5-sieu-deal-thuong-hieu?deep_and_deferred=1",
                "create_time": 1644826608,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220223/s1600x500/image-84950fc5-220223161757.png",
                "image_url_en": "",
                "action": "action=deliverycollection&id=12849&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/thu-5-sieu-deal-thuong-hieu?deep_and_deferred=1",
                    "image": {
                        "image_name": "image-84950fc5-220223161757.png",
                        "folder_id": "20220223"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/thu-5-sieu-deal-thuong-hieu?deep_and_deferred=1",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 2,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645437094,
                "name": "HN_[JBP BAU] Bánh Mì Tuhu Bread",
                "cover_video": null,
                "title": "HN_[JBP BAU] Bánh Mì Tuhu Bread",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45112,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s400x125/image-5cdf7481-220214152043.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s800x250/image-5cdf7481-220214152043.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1200x375/image-5cdf7481-220214152043.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-5cdf7481-220214152043.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/banh-mi-tuhu-bread",
                "create_time": 1645437094,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-5cdf7481-220214152043.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=14570&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/banh-mi-tuhu-bread",
                    "image": {
                        "image_name": "image-5cdf7481-220214152043.jpeg",
                        "folder_id": "20220214"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/banh-mi-tuhu-bread",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 4,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645436913,
                "name": "HN_[SBD] Phúc Long",
                "cover_video": null,
                "title": "HN_[SBD] Phúc Long",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645549200,
                "is_active": "1",
                "period": 0,
                "id": 44963,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s400x125/image-95aa9402-220214150035.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s800x250/image-95aa9402-220214150035.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1200x375/image-95aa9402-220214150035.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-95aa9402-220214150035.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/phuc-long-coffee--tea-tang-mon-1-dong",
                "create_time": 1645175184,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-95aa9402-220214150035.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=12609&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/phuc-long-coffee--tea-tang-mon-1-dong",
                    "image": {
                        "image_name": "image-95aa9402-220214150035.jpeg",
                        "folder_id": "20220214"
                    },
                    "video_id": 0,
                    "is_pinned": false,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/phuc-long-coffee--tea-tang-mon-1-dong",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 1,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645437305,
                "name": "HN_WC_Tiệc trà ngọt ngào ngày thứ 5_NGOTNGAO",
                "cover_video": null,
                "title": "HN_WC_Tiệc trà ngọt ngào ngày thứ 5_NGOTNGAO",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 43946,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s400x125/image-d1819929-220214151915.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s800x250/image-d1819929-220214151915.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1200x375/image-d1819929-220214151915.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-d1819929-220214151915.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.shopee.vn/bo-suu-tap/thu-5-tiec-tra-ngot-ngao---freeship?deep_and_deferred=1",
                "create_time": 1644314357,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-d1819929-220214151915.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=14801&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/thu-5-tiec-tra-ngot-ngao---freeship?deep_and_deferred=1",
                    "image": {
                        "image_name": "image-d1819929-220214151915.jpeg",
                        "folder_id": "20220214"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.shopee.vn/bo-suu-tap/thu-5-tiec-tra-ngot-ngao---freeship?deep_and_deferred=1",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 6,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645522149,
                "name": "HN_[SBD] KOMBO - Cơm Niêu Singapore",
                "cover_video": null,
                "title": "HN_[SBD] KOMBO - Cơm Niêu Singapore",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45125,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-6d831c6d-220221172054.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-6d831c6d-220221172054.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-6d831c6d-220221172054.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-6d831c6d-220221172054.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/kombo---com-nieu-singapore-hn",
                "create_time": 1645438861,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-6d831c6d-220221172054.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=8643&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/kombo---com-nieu-singapore-hn",
                    "image": {
                        "image_name": "image-6d831c6d-220221172054.jpeg",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/kombo---com-nieu-singapore-hn",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 7,
                "end_time": 1645808400
            },
            {
                "video_banner_type": null,
                "update_time": 1645437646,
                "name": "HN_[SBD] Trà sữa Pozaa Tea",
                "cover_video": null,
                "title": "HN_[SBD] Trà sữa Pozaa Tea",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45118,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-a9896d57-220221145019.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-a9896d57-220221145019.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-a9896d57-220221145019.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-a9896d57-220221145019.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/pozaa-tea-tra-sua-0d",
                "create_time": 1645437646,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-a9896d57-220221145019.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=11370&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/pozaa-tea-tra-sua-0d",
                    "image": {
                        "image_name": "image-a9896d57-220221145019.jpeg",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/pozaa-tea-tra-sua-0d",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 8,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645437690,
                "name": "HN_[ETP] Gà Rán Popeyes 21-28",
                "cover_video": null,
                "title": "HN_[ETP] Gà Rán Popeyes 21-28",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45120,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220218/s400x125/image-b057e805-220218154129.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220218/s800x250/image-b057e805-220218154129.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220218/s1200x375/image-b057e805-220218154129.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220218/s1600x500/image-b057e805-220218154129.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/ga-ran-popeyes-etp",
                "create_time": 1645437690,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220218/s1600x500/image-b057e805-220218154129.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=10502&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/ga-ran-popeyes-etp",
                    "image": {
                        "image_name": "image-b057e805-220218154129.jpeg",
                        "folder_id": "20220218"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/ga-ran-popeyes-etp",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 9,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645607785,
                "name": "HN_\t[SBD] Cơm Tâm Delichi",
                "cover_video": null,
                "title": "HN_\t[SBD] Cơm Tâm Delichi",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45151,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s400x125/image-17766958-220223161624.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s800x250/image-17766958-220223161624.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s1200x375/image-17766958-220223161624.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220223/s1600x500/image-17766958-220223161624.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/comtam-delichi",
                "create_time": 1645442463,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220223/s1600x500/image-17766958-220223161624.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=13561&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/comtam-delichi",
                    "image": {
                        "image_name": "image-17766958-220223161624.jpeg",
                        "folder_id": "20220223"
                    },
                    "video_id": 0,
                    "is_pinned": false,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/comtam-delichi",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 3,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645437722,
                "name": "HN_[SPCRM]_[Free Food & Drinks]_whitelist_SPF only",
                "cover_video": null,
                "title": "HN_[SPCRM]_[Free Food & Drinks]_whitelist_SPF only",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1644858000,
                "is_active": "1",
                "period": 0,
                "id": 44419,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s400x125/image-9139eb9c-220214123748.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s800x250/image-9139eb9c-220214123748.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1200x375/image-9139eb9c-220214123748.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-9139eb9c-220214123748.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
                "create_time": 1644817075,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-9139eb9c-220214123748.jpeg",
                "image_url_en": "",
                "action": "action=link&id=https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
                "extra_data": {
                    "foody_app_types": [
                        {
                            "foody_app_type": 18,
                            "client_type": 3,
                            "app_type": 1004
                        },
                        {
                            "foody_app_type": 19,
                            "client_type": 4,
                            "app_type": 1004
                        }
                    ],
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
                    "image": {
                        "image_name": "image-9139eb9c-220214123748.jpeg",
                        "folder_id": "20220214"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "user_group_ids": [
                        9274
                    ],
                    "target_user_type": 6
                },
                "display_order": 11,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645437755,
                "name": "HN_[ETP]ShareTea 22-26",
                "cover_video": null,
                "title": "HN_[ETP]ShareTea 22-26",
                "city_id": 0,
                "create_by": 1940555,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45121,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s400x125/image-8adf74f1-220221113931.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s800x250/image-8adf74f1-220221113931.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1200x375/image-8adf74f1-220221113931.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-8adf74f1-220221113931.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://shopeefood.vn/bo-suu-tap/tra-sua-sharetea-all",
                "create_time": 1645437755,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220221/s1600x500/image-8adf74f1-220221113931.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=12153&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/tra-sua-sharetea-all",
                    "image": {
                        "image_name": "image-8adf74f1-220221113931.jpeg",
                        "folder_id": "20220221"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://shopeefood.vn/bo-suu-tap/tra-sua-sharetea-all",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 12,
                "end_time": 1645722000
            },
            {
                "video_banner_type": null,
                "update_time": 1645674199,
                "name": "All_F_BAU_[Thịt, hải sản giảm 20k_[TUOINGON20]",
                "cover_video": null,
                "title": "All_F_BAU_[Thịt, hải sản giảm 20k_[TUOINGON20]",
                "city_id": 0,
                "create_by": 6243691,
                "start_time": 1645635600,
                "is_active": "1",
                "period": 0,
                "id": 45360,
                "photos": [
                    {
                        "width": 400,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s400x125/image-9d03fdfd-220214143937.jpeg",
                        "height": 125
                    },
                    {
                        "width": 800,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s800x250/image-9d03fdfd-220214143937.jpeg",
                        "height": 250
                    },
                    {
                        "width": 1200,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1200x375/image-9d03fdfd-220214143937.jpeg",
                        "height": 375
                    },
                    {
                        "width": 1600,
                        "value": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-9d03fdfd-220214143937.jpeg",
                        "height": 500
                    }
                ],
                "action_url": "https://now.vn/bo-suu-tap/thit-hai-san-giam-20k",
                "create_time": 1645674178,
                "image_url": "https://images.foody.vn/now_banner/g2023/20220214/s1600x500/image-9d03fdfd-220214143937.jpeg",
                "image_url_en": "",
                "action": "action=deliverycollection&id=14622&foody_service_id=1",
                "extra_data": {
                    "foody_service_ids": [
                        1
                    ],
                    "shopee_action_url": "https://now.shopee.vn/bo-suu-tap/thit-hai-san-giam-20k",
                    "image": {
                        "image_name": "image-9d03fdfd-220214143937.jpeg",
                        "folder_id": "20220214"
                    },
                    "video_id": 0,
                    "is_pinned": true,
                    "district_ids": [],
                    "show_positions": [
                        21
                    ],
                    "action_url": "https://now.vn/bo-suu-tap/thit-hai-san-giam-20k",
                    "user_segments": [],
                    "city_ids": [
                        218
                    ],
                    "target_user_type": 1
                },
                "display_order": 13,
                "end_time": 1645981200
            }
        ]
    },
    "result": "success"
}
  ''';

  final String _json_ads_pos_square_drag = r'''
  {
	"reply": {
		"banner_infos": [{
			"period": 1,
			"update_time": 1646391468,
			"name": "HN_8/3_Tặng nửa thế giới deal 50%",
			"cover_video": null,
			"title": "HN_8/3_Tặng nửa thế giới deal 50%",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"display_time": 20,
			"id": 46198,
			"photos": [{
				"width": 90,
				"value": "https://images.foody.vn/now_banner/g2023/20220228/s90x90/image-3178bebc-220228143459.png",
				"height": 90
			}, {
				"width": 180,
				"value": "https://images.foody.vn/now_banner/g2023/20220228/s180x180/image-3178bebc-220228143459.png",
				"height": 180
			}, {
				"width": 270,
				"value": "https://images.foody.vn/now_banner/g2023/20220228/s270x270/image-3178bebc-220228143459.png",
				"height": 270
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/tang-nua-the-gioi-deal-50",
			"create_time": 1646391468,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220228/s270x270/image-3178bebc-220228143459.png",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14850&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/tang-nua-the-gioi-deal-50",
				"image": {
					"image_name": "image-3178bebc-220228143459.png",
					"folder_id": "20220228"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [49],
				"action_url": "https://shopeefood.vn/bo-suu-tap/tang-nua-the-gioi-deal-50",
				"user_segments": [],
				"frequency": {
					"display_time": 20,
					"period": 1
				},
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 2,
			"video_banner_type": null,
			"end_time": 1646758800
		}]
	},
	"result": "success"
}
  ''';

  final String _json_ads_pos_46_full_screen_popup = r'''
  {
	"reply": {
		"banner_infos": [{
			"period": 1,
			"update_time": 1646391970,
			"name": "HN_8/3_Ưu đãi X3, đặt thả ga_TYPN8K",
			"cover_video": null,
			"title": "HN_8/3_Ưu đãi X3, đặt thả ga_TYPN8K",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"display_time": 2,
			"id": 46208,
			"photos": [{
				"width": 580,
				"value": "https://images.foody.vn/now_banner/g2023/20220301/s580x720/image-2a1db01a-220301110230.png",
				"height": 720
			}, {
				"width": 1160,
				"value": "https://images.foody.vn/now_banner/g2023/20220301/s1160x1440/image-2a1db01a-220301110230.png",
				"height": 1440
			}, {
				"width": 1740,
				"value": "https://images.foody.vn/now_banner/g2023/20220301/s1740x2160/image-2a1db01a-220301110230.png",
				"height": 2160
			}, {
				"width": 2320,
				"value": "https://images.foody.vn/now_banner/g2023/20220301/s2320x2880/image-2a1db01a-220301110230.png",
				"height": 2880
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/uu-dai-x3-dat-tha-ga",
			"create_time": 1646391970,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220301/s2320x2880/image-2a1db01a-220301110230.png",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14848&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/uu-dai-x3-dat-tha-ga",
				"image": {
					"image_name": "image-2a1db01a-220301110230.png",
					"folder_id": "20220301"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [46],
				"action_url": "https://shopeefood.vn/bo-suu-tap/uu-dai-x3-dat-tha-ga",
				"user_segments": [],
				"frequency": {
					"display_time": 2,
					"period": 1
				},
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 2,
			"video_banner_type": null,
			"end_time": 1646758800
		}]
	},
	"result": "success"
}
  ''';

  final String _json_ads_pos_21_top_banner = r'''
  {
	"reply": {
		"banner_infos": [{
			"video_banner_type": null,
			"update_time": 1646398612,
			"name": "HN_8/3_Deal Tặng Nàng Giảm Tới 200k",
			"cover_video": null,
			"title": "HN_8/3_Deal Tặng Nàng Giảm Tới 200k",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46226,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-a80b56ed-220304191301.png",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-a80b56ed-220304191301.png",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-a80b56ed-220304191301.png",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-a80b56ed-220304191301.png",
				"height": 500
			}],
			"action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/deal-tang-nang-giam-toi-200k?deep_and_deferred=1",
			"create_time": 1646396065,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-a80b56ed-220304191301.png",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14364&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/deal-tang-nang-giam-toi-200k?deep_and_deferred=1",
				"image": {
					"image_name": "image-a80b56ed-220304191301.png",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/deal-tang-nang-giam-toi-200k?deep_and_deferred=1",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 1,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646707807,
			"name": "HN_SP 8/3_Mừng 8/3 Bão Deal 0Đ_TYPN0D",
			"cover_video": null,
			"title": "HN_SP 8/3_Mừng 8/3 Bão Deal 0Đ_TYPN0D",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46348,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s400x125/image-5dc8b008-220308095006.png",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s800x250/image-5dc8b008-220308095006.png",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s1200x375/image-5dc8b008-220308095006.png",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s1600x500/image-5dc8b008-220308095006.png",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/mung-83-bao-deal-0d",
			"create_time": 1646638373,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220308/s1600x500/image-5dc8b008-220308095006.png",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14851&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/mung-83-bao-deal-0d",
				"image": {
					"image_name": "image-5dc8b008-220308095006.png",
					"folder_id": "20220308"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.vn/bo-suu-tap/mung-83-bao-deal-0d",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 2,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646389401,
			"name": "HN_14H - Tiệc Trà Sành Điệu, Mời 50%",
			"cover_video": null,
			"title": "HN_14H - Tiệc Trà Sành Điệu, Mời 50%",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46176,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-a7efc73c-220304172312.png",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-a7efc73c-220304172312.png",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-a7efc73c-220304172312.png",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-a7efc73c-220304172312.png",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/14h-sieu-deal-tiec-chieu-dai-50",
			"create_time": 1646389401,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-a7efc73c-220304172312.png",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14609&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/14h-sieu-deal-tiec-chieu-dai-50",
				"image": {
					"image_name": "image-a7efc73c-220304172312.png",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.vn/bo-suu-tap/14h-sieu-deal-tiec-chieu-dai-50",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 3,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646389212,
			"name": "HN_8/3_Ngày của nàng, Freeship toàn sàn_TYPNFS",
			"cover_video": null,
			"title": "HN_8/3_Ngày của nàng, Freeship toàn sàn_TYPNFS",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46172,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-d7ae709f-220304172009.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-d7ae709f-220304172009.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-d7ae709f-220304172009.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-d7ae709f-220304172009.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/ngay-cua-nang-freeship-toan-san",
			"create_time": 1646389212,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-d7ae709f-220304172009.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14849&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/ngay-cua-nang-freeship-toan-san",
				"image": {
					"image_name": "image-d7ae709f-220304172009.jpeg",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.vn/bo-suu-tap/ngay-cua-nang-freeship-toan-san",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 4,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646389156,
			"name": "HN_8/3_Tặng nửa thế giới deal 50%",
			"cover_video": null,
			"title": "HN_8/3_Tặng nửa thế giới deal 50%",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46171,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-5f7246ed-220304171906.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-5f7246ed-220304171906.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-5f7246ed-220304171906.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-5f7246ed-220304171906.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/tang-nua-the-gioi-deal-50",
			"create_time": 1646389156,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-5f7246ed-220304171906.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14850&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/tang-nua-the-gioi-deal-50",
				"image": {
					"image_name": "image-5f7246ed-220304171906.jpeg",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.vn/bo-suu-tap/tang-nua-the-gioi-deal-50",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 5,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646389102,
			"name": "HN_8/3_Deal 83K rực rỡ_TYPN83",
			"cover_video": null,
			"title": "HN_8/3_Deal 83K rực rỡ_TYPN83",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46169,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-6a8dbe2e-220304171818.png",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-6a8dbe2e-220304171818.png",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-6a8dbe2e-220304171818.png",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-6a8dbe2e-220304171818.png",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/deal-83k-ruc-ro",
			"create_time": 1646389102,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-6a8dbe2e-220304171818.png",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14847&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/deal-83k-ruc-ro",
				"image": {
					"image_name": "image-6a8dbe2e-220304171818.png",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.vn/bo-suu-tap/deal-83k-ruc-ro",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 6,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646389046,
			"name": "HN_8/3_Ưu đãi X3, đặt thả ga_TYPN8K",
			"cover_video": null,
			"title": "HN_8/3_Ưu đãi X3, đặt thả ga_TYPN8K",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46168,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-ab58ad32-220304171717.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-ab58ad32-220304171717.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-ab58ad32-220304171717.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-ab58ad32-220304171717.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/uu-dai-x3-dat-tha-ga",
			"create_time": 1646389046,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-ab58ad32-220304171717.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14848&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/uu-dai-x3-dat-tha-ga",
				"image": {
					"image_name": "image-ab58ad32-220304171717.jpeg",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.vn/bo-suu-tap/uu-dai-x3-dat-tha-ga",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 7,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646385887,
			"name": "HN_BAU_Mùa Yêu Thương Món Ngọt Ngào_NGOTNGAO",
			"cover_video": null,
			"title": "HN_BAU_Mùa Yêu Thương Món Ngọt Ngào_NGOTNGAO",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46157,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-ca2c7588-220304162441.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-ca2c7588-220304162441.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-ca2c7588-220304162441.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-ca2c7588-220304162441.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.shopee.vn/bo-suu-tap/am-bung-mot-chut?deep_and_deferred=1",
			"create_time": 1646385887,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-ca2c7588-220304162441.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14455&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/am-bung-mot-chut?deep_and_deferred=1",
				"image": {
					"image_name": "image-ca2c7588-220304162441.jpeg",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.shopee.vn/bo-suu-tap/am-bung-mot-chut?deep_and_deferred=1",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 8,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646394844,
			"name": "HN_Flash Sale_8/3",
			"cover_video": null,
			"title": "HN_Flash Sale_8/3",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46181,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-b17bf0c5-220304185402.png",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-b17bf0c5-220304185402.png",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-b17bf0c5-220304185402.png",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-b17bf0c5-220304185402.png",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/flashsale",
			"create_time": 1646389714,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-b17bf0c5-220304185402.png",
			"image_url_en": "",
			"action": "action=link&id=https://shopeefood.vn/flashsale",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/flashsale",
				"image": {
					"image_name": "image-b17bf0c5-220304185402.png",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.vn/flashsale",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 9,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646385679,
			"name": "HN_BAU_Quán Mới Lên Sàn_QUANMOI30",
			"cover_video": null,
			"title": "HN_BAU_Quán Mới Lên Sàn_QUANMOI30",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46156,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-9b8071fb-220304162110.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-9b8071fb-220304162110.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-9b8071fb-220304162110.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-9b8071fb-220304162110.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.shopee.vn/bo-suu-tap/quan-moi-len-san-deal-0d?deep_and_deferred=1",
			"create_time": 1646385679,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-9b8071fb-220304162110.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14624&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/quan-moi-len-san-deal-0d?deep_and_deferred=1",
				"image": {
					"image_name": "image-9b8071fb-220304162110.jpeg",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.shopee.vn/bo-suu-tap/quan-moi-len-san-deal-0d?deep_and_deferred=1",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 10,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646638117,
			"name": "HN_[SPWC]_Thứ 3 Freeship độc quyền trên Shopee_SPSIEUSHIP",
			"cover_video": null,
			"title": "HN_[SPWC]_Thứ 3 Freeship độc quyền trên Shopee_SPSIEUSHIP",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 43754,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s400x125/image-9520377f-220307142823.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s800x250/image-9520377f-220307142823.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s1200x375/image-9520377f-220307142823.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s1600x500/image-9520377f-220307142823.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/freeship-xtra--giam-50?deep_and_deferred=1",
			"create_time": 1643344791,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220307/s1600x500/image-9520377f-220307142823.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=11703&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/freeship-xtra--giam-50?deep_and_deferred=1",
				"image": {
					"image_name": "image-9520377f-220307142823.jpeg",
					"folder_id": "20220307"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopeefood.shopee.vn/universal-link/bo-suu-tap/freeship-xtra--giam-50?deep_and_deferred=1",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 11,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646638197,
			"name": "HN_[SPCRM]_[Free Food & Drinks]_whitelist_SPF only",
			"cover_video": null,
			"title": "HN_[SPCRM]_[Free Food & Drinks]_whitelist_SPF only",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46155,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s400x125/image-28a7094d-220307142953.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s800x250/image-28a7094d-220307142953.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s1200x375/image-28a7094d-220307142953.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s1600x500/image-28a7094d-220307142953.jpeg",
				"height": 500
			}],
			"action_url": "https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
			"create_time": 1646385357,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220307/s1600x500/image-28a7094d-220307142953.jpeg",
			"image_url_en": "",
			"action": "action=link&id=https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
			"extra_data": {
				"foody_app_types": [{
					"foody_app_type": 18,
					"client_type": 3,
					"app_type": 1004
				}, {
					"foody_app_type": 19,
					"client_type": 4,
					"app_type": 1004
				}],
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
				"image": {
					"image_name": "image-28a7094d-220307142953.jpeg",
					"folder_id": "20220307"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://shopee.vn/universal-link/m/shopeenc?smtt=9&deep_and_deferred=1",
				"user_segments": [],
				"city_ids": [218],
				"user_group_ids": [9274],
				"target_user_type": 6
			},
			"display_order": 12,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646632292,
			"name": "All_F_LP KV Chính 8/3",
			"cover_video": null,
			"title": "All_F_LP KV Chính 8/3",
			"city_id": 0,
			"create_by": 6243691,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46309,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s400x125/image-44b2a0fa-220307125104.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s800x250/image-44b2a0fa-220307125104.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s1200x375/image-44b2a0fa-220307125104.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220307/s1600x500/image-44b2a0fa-220307125104.jpeg",
				"height": 500
			}],
			"action_url": "http://shopee.vn/m/freshhcm?hidebar=1",
			"create_time": 1646632292,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220307/s1600x500/image-44b2a0fa-220307125104.jpeg",
			"image_url_en": "",
			"action": "action=link&id=http://shopee.vn/m/freshhcm?hidebar=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "http://shopee.vn/m/shopeefresh?hidebar=1",
				"image": {
					"image_name": "image-44b2a0fa-220307125104.jpeg",
					"folder_id": "20220307"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "http://shopee.vn/m/freshhcm?hidebar=1",
				"user_segments": [],
				"city_ids": [217, 218, 219],
				"target_user_type": 1
			},
			"display_order": 13,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646674216,
			"name": "Nowship Women's day",
			"cover_video": null,
			"title": "Nowship Women's day",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46368,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s400x125/image-556910e8-220308003015.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s800x250/image-556910e8-220308003015.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s1200x375/image-556910e8-220308003015.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220308/s1600x500/image-556910e8-220308003015.jpeg",
				"height": 500
			}],
			"action_url": "https://now.vn/ship",
			"create_time": 1646641493,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220308/s1600x500/image-556910e8-220308003015.jpeg",
			"image_url_en": "",
			"action": "action=link&id=https://now.vn/ship",
			"extra_data": {
				"foody_app_types": [{
					"foody_app_type": 18,
					"client_type": 3,
					"app_type": 1004
				}, {
					"foody_app_type": 19,
					"client_type": 4,
					"app_type": 1004
				}],
				"foody_service_ids": [1],
				"image": {
					"image_name": "image-556910e8-220308003015.jpeg",
					"folder_id": "20220308"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [21],
				"action_url": "https://now.vn/ship",
				"user_segments": [],
				"city_ids": [221, 220, 273, 223, 228, 230, 254, 262, 271, 263, 219, 248, 257, 217, 218, 222],
				"target_user_type": 1
			},
			"display_order": 14,
			"end_time": 1646758800
		}]
	},
	"result": "success"
}
  ''';

  final String _json_pos_47_below_flashsale = r'''
  {
	"reply": {
		"banner_infos": [{
			"video_banner_type": null,
			"update_time": 1646207826,
			"name": "HN_QC_Gà Rán Popeyes Hà Nội",
			"cover_video": null,
			"title": "HN_QC_Gà Rán Popeyes Hà Nội",
			"city_id": 0,
			"create_by": 10983563,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 45892,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220302/s400x125/image-fa8d0e2d-220302145705.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220302/s800x250/image-fa8d0e2d-220302145705.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220302/s1200x375/image-fa8d0e2d-220302145705.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220302/s1600x500/image-fa8d0e2d-220302145705.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/thuong-hieu/ga-ran-popeyes-ha-noi",
			"create_time": 1646207826,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220302/s1600x500/image-fa8d0e2d-220302145705.jpeg",
			"image_url_en": "",
			"action": "action=brand&id=4097&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/thuong-hieu/ga-ran-popeyes-ha-noi",
				"image": {
					"image_name": "image-fa8d0e2d-220302145705.jpeg",
					"folder_id": "20220302"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [47],
				"action_url": "https://shopeefood.vn/thuong-hieu/ga-ran-popeyes-ha-noi",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 1,
			"end_time": 1646758800
		}]
	},
	"result": "success"
}
  ''';

  final String _json_ads_pos_12_middle_banner = r'''
  {
	"reply": {
		"banner_infos": [{
			"video_banner_type": null,
			"update_time": 1646388169,
			"name": "HN_[ETP] Bánh Mì Minh Nhật  1, 8 ,15, 22, 29/3 - bottom",
			"cover_video": null,
			"title": "HN_[ETP] Bánh Mì Minh Nhật  1, 8 ,15, 22, 29/3",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46158,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-ee5ebe9c-220304170230.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-ee5ebe9c-220304170230.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-ee5ebe9c-220304170230.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-ee5ebe9c-220304170230.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/banh-mi-minh-nhat-jbp",
			"create_time": 1646388169,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-ee5ebe9c-220304170230.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14635&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/banh-mi-minh-nhat-jbp",
				"image": {
					"image_name": "image-ee5ebe9c-220304170230.jpeg",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [12],
				"action_url": "https://shopeefood.vn/bo-suu-tap/banh-mi-minh-nhat-jbp",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 1,
			"end_time": 1646758800
		}, {
			"video_banner_type": null,
			"update_time": 1646388836,
			"name": "HN_[ETP] The Coffee House 1, 8 ,15/3 - bottom",
			"cover_video": null,
			"title": "HN_[ETP] The Coffee House 1, 8 ,15/3",
			"city_id": 0,
			"create_by": 1940555,
			"start_time": 1646672400,
			"is_active": "1",
			"period": 0,
			"id": 46162,
			"photos": [{
				"width": 400,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s400x125/image-6c140507-220304171336.jpeg",
				"height": 125
			}, {
				"width": 800,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s800x250/image-6c140507-220304171336.jpeg",
				"height": 250
			}, {
				"width": 1200,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1200x375/image-6c140507-220304171336.jpeg",
				"height": 375
			}, {
				"width": 1600,
				"value": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-6c140507-220304171336.jpeg",
				"height": 500
			}],
			"action_url": "https://shopeefood.vn/bo-suu-tap/the-coffee-house-all",
			"create_time": 1646388836,
			"image_url": "https://images.foody.vn/now_banner/g2023/20220304/s1600x500/image-6c140507-220304171336.jpeg",
			"image_url_en": "",
			"action": "action=deliverycollection&id=14675&foody_service_id=1",
			"extra_data": {
				"foody_service_ids": [1],
				"shopee_action_url": "https://shopeefood.shopee.vn/bo-suu-tap/the-coffee-house-all",
				"image": {
					"image_name": "image-6c140507-220304171336.jpeg",
					"folder_id": "20220304"
				},
				"video_id": 0,
				"is_pinned": true,
				"district_ids": [],
				"show_positions": [12],
				"action_url": "https://shopeefood.vn/bo-suu-tap/the-coffee-house-all",
				"user_segments": [],
				"city_ids": [218],
				"target_user_type": 1
			},
			"display_order": 2,
			"end_time": 1646758800
		}]
	},
	"result": "success"
}
  ''';

  @override
  bool accept(String url) {
    return url.contains(urlGetHomeAdsBanner);
  }

  @override
  dynamic response({String? url}) {
    String json = _json;
    url ??= '';
    if (url.contains('${EnumUtils.ADS_POSITION_TOP_BANNER}')) {
      json = _json_ads_pos_21_top_banner;
    } else if (url.contains('${EnumUtils.ADS_POSITION_BELOW_TOP}')) {
      json = _json_pos_47_below_flashsale;
    } else if (url.contains('${EnumUtils.ADS_POSITION_MIDDLE}')) {
      json = _json_ads_pos_12_middle_banner;
    } else if (url.contains('${EnumUtils.ADS_POSITION_FULL_SCREEN_POPUP}')) {
      json = _json_ads_pos_46_full_screen_popup;
    } else if (url.contains('${EnumUtils.ADS_POSITION_DRAG}')) {
      json = _json_ads_pos_square_drag;
    }
    return jsonDecode(json);
  }

}