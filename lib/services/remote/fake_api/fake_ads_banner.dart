


import 'dart:convert';

import 'package:shopeefood_clone/services/remote/remote_url.dart';

import 'base_fake_api.dart';

class FakeAddBanner extends BaseFakeApi {
  String _json = r'''
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

  @override
  bool accept(String url) {
    return url.contains(urlGetHomeAdsBanner);
  }

  @override
  dynamic response() {
    return jsonDecode(_json);
  }

}