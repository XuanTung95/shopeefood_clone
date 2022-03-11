import 'dart:convert';

import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/remote_url.dart';

class FakeVoucher extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"promotion_infos": [{
			"code": "SPPFRESH30",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "ShopeePay",
				"label": "Payment method"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}, {
				"color": "#2985ff",
				"display_order": 0,
				"name": "ShopeePay Payment"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19494104,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-0475c224-220209111318.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- Payment method ShopeePay\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [4, 5],
			"payment_option": [6],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFOOD100",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 100k off",
			"custom_condition": [{
				"content": "800,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 20140284,
			"title": "Code 100k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 800,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "800,000đ",
				"unit": "đ",
				"value": 800000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 100000,
				"text": "100,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFOOD50",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 50k off",
			"custom_condition": [{
				"content": "385,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 20140282,
			"title": "Code 50k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 385,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "385,000đ",
				"unit": "đ",
				"value": 385000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 50000,
				"text": "50,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH30K",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19648392,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-a3652860-220209111053.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFOOD30",
			"voucher_source": 1,
			"user_usage_limit": 2,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "215,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "2 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 20140278,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 215,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- This promotion has limited offer\n- Usage limit 2 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 2,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "215,000đ",
				"unit": "đ",
				"value": 215000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFOOD20",
			"voucher_source": 1,
			"user_usage_limit": 2,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 20k off",
			"custom_condition": [{
				"content": "165,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "2 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 20140280,
			"title": "Code 20k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 165,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- This promotion has limited offer\n- Usage limit 2 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 2,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "165,000đ",
				"unit": "đ",
				"value": 165000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 20000,
				"text": "20,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFGIAM15",
			"voucher_source": 1,
			"user_usage_limit": 3,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "125,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "3 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 19494090,
			"title": "15k off, min order 125k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 125,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- This promotion has limited offer\n- Usage limit 3 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 3,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "125,000đ",
				"unit": "đ",
				"value": 125000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH15K",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "118,000đ",
				"label": "Minimum order"
			}, {
				"content": "28/02/2022-06/03/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "06/03/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#f13233",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19648379,
			"title": "Code 15k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-b410edc6-220209111011.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 118,000đ\n- Applicable delivery time 28/02/2022-06/03/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 06/03/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 1,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-28 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "118,000đ",
				"unit": "đ",
				"value": 118000
			},
			"merchant_type": 4,
			"end_time": "2022-03-06 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}]
	},
	"result": "success"
}
  ''';


  @override
  bool accept(String url) {
    return url.contains(urlGetMyVoucher);
  }

  @override
  response({String? url}) {
    return jsonDecode(_json);
  }

}

class FakeInvalidVoucher extends BaseFakeApi {
  final String _json = r'''
  {
	"reply": {
		"promotion_infos": [{
			"code": "SPPFRESH30",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "07/02/2022-13/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "13/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "ShopeePay",
				"label": "Payment method"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}, {
				"color": "#95a7bf",
				"display_order": 0,
				"name": "ShopeePay Payment"
			}],
			"use_link": "https://www.now.vn/bo-suu-tap/top-quan-hot-fresh",
			"id": 19406915,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-0475c224-220209111318.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 07/02/2022-13/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 13/02/2022 23:59\n- Payment method ShopeePay\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [6],
			"start_time": "2022-02-07 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-02-13 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPPFRESH30",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "14/02/2022-20/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "20/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "ShopeePay",
				"label": "Payment method"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}, {
				"color": "#95a7bf",
				"display_order": 0,
				"name": "ShopeePay Payment"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19446934,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-0475c224-220209111318.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 14/02/2022-20/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 20/02/2022 23:59\n- Payment method ShopeePay\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [6],
			"start_time": "2022-02-14 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-02-20 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPPFRESH30",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "21/02/2022-27/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "27/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "ShopeePay",
				"label": "Payment method"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}, {
				"color": "#95a7bf",
				"display_order": 0,
				"name": "ShopeePay Payment"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19487730,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-0475c224-220209111318.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 21/02/2022-27/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 27/02/2022 23:59\n- Payment method ShopeePay\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [6],
			"start_time": "2022-02-21 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-02-27 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFOODGIAM40",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}, {
				"client_type": 4,
				"app_type": 2000
			}, {
				"client_type": 3,
				"app_type": 2000
			}, {
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}],
			"custom_title": "Code 40k off",
			"custom_condition": [{
				"content": "250,000đ",
				"label": "Minimum order"
			}, {
				"content": "10/01/2022-16/01/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "16/01/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Daily usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 18646630,
			"title": "40k off, min order 250k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 250,000đ\n- Applicable delivery time 10/01/2022-16/01/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 16/01/2022 23:59\n- This promotion has limited offer\n- Daily usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-01-10 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 1
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "250,000đ",
				"unit": "đ",
				"value": 250000
			},
			"merchant_type": 4,
			"end_time": "2022-01-16 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 40000,
				"text": "40,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFGIAM15",
			"voucher_source": 1,
			"user_usage_limit": 3,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "125,000đ",
				"label": "Minimum order"
			}, {
				"content": "10/01/2022-16/01/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "16/01/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "3 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 18646627,
			"title": "15k off, min order 125k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 125,000đ\n- Applicable delivery time 10/01/2022-16/01/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 16/01/2022 23:59\n- This promotion has limited offer\n- Usage limit 3 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-01-10 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 3,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "125,000đ",
				"unit": "đ",
				"value": 125000
			},
			"merchant_type": 4,
			"end_time": "2022-01-16 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFOODGIAM40",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}, {
				"client_type": 4,
				"app_type": 2000
			}, {
				"client_type": 3,
				"app_type": 2000
			}, {
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}],
			"custom_title": "Code 40k off",
			"custom_condition": [{
				"content": "250,000đ",
				"label": "Minimum order"
			}, {
				"content": "17/01/2022-23/01/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "23/01/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Daily usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 18696650,
			"title": "40k off, min order 250k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 250,000đ\n- Applicable delivery time 17/01/2022-23/01/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 23/01/2022 23:59\n- This promotion has limited offer\n- Daily usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-01-17 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 1
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "250,000đ",
				"unit": "đ",
				"value": 250000
			},
			"merchant_type": 4,
			"end_time": "2022-01-23 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 40000,
				"text": "40,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFGIAM15",
			"voucher_source": 1,
			"user_usage_limit": 3,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "125,000đ",
				"label": "Minimum order"
			}, {
				"content": "17/01/2022-23/01/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "23/01/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "3 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 18696646,
			"title": "15k off, min order 125k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 125,000đ\n- Applicable delivery time 17/01/2022-23/01/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 23/01/2022 23:59\n- This promotion has limited offer\n- Usage limit 3 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-01-17 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 3,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "125,000đ",
				"unit": "đ",
				"value": 125000
			},
			"merchant_type": 4,
			"end_time": "2022-01-23 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFOODGIAM40",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}, {
				"client_type": 4,
				"app_type": 2000
			}, {
				"client_type": 3,
				"app_type": 2000
			}, {
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}],
			"custom_title": "Code 40k off",
			"custom_condition": [{
				"content": "250,000đ",
				"label": "Minimum order"
			}, {
				"content": "24/01/2022-26/01/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "26/01/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Daily usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 18705204,
			"title": "40k off, min order 250k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 250,000đ\n- Applicable delivery time 24/01/2022-26/01/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 26/01/2022 23:59\n- This promotion has limited offer\n- Daily usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-01-24 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 1
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "250,000đ",
				"unit": "đ",
				"value": 250000
			},
			"merchant_type": 4,
			"end_time": "2022-01-26 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 40000,
				"text": "40,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFGIAM15",
			"voucher_source": 1,
			"user_usage_limit": 3,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "125,000đ",
				"label": "Minimum order"
			}, {
				"content": "24/01/2022-26/01/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "26/01/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "3 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 18705195,
			"title": "15k off, min order 125k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 125,000đ\n- Applicable delivery time 24/01/2022-26/01/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 26/01/2022 23:59\n- This promotion has limited offer\n- Usage limit 3 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-01-24 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 3,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "125,000đ",
				"unit": "đ",
				"value": 125000
			},
			"merchant_type": 4,
			"end_time": "2022-01-26 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH30",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "07/02/2022-13/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "13/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/bo-suu-tap/top-quan-hot-fresh",
			"id": 19406914,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-a3652860-220209111053.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 07/02/2022-13/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 13/02/2022 23:59\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-07 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-02-13 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFGIAM15",
			"voucher_source": 1,
			"user_usage_limit": 3,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "125,000đ",
				"label": "Minimum order"
			}, {
				"content": "07/02/2022-13/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "13/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "3 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 19398983,
			"title": "15k off, min order 125k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 125,000đ\n- Applicable delivery time 07/02/2022-13/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 13/02/2022 23:59\n- This promotion has limited offer\n- Usage limit 3 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-07 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 3,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "125,000đ",
				"unit": "đ",
				"value": 125000
			},
			"merchant_type": 4,
			"end_time": "2022-02-13 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH15",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "118,000đ",
				"label": "Minimum order"
			}, {
				"content": "07/02/2022-13/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "13/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/bo-suu-tap/top-quan-hot-fresh",
			"id": 19406912,
			"title": "Code 15k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-b410edc6-220209111011.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 118,000đ\n- Applicable delivery time 07/02/2022-13/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 13/02/2022 23:59\n- This promotion has limited offer\n- Usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-07 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "118,000đ",
				"unit": "đ",
				"value": 118000
			},
			"merchant_type": 4,
			"end_time": "2022-02-13 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH30",
			"voucher_source": 1,
			"user_usage_limit": 2,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "14/02/2022-20/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "20/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "2 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19446933,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-a3652860-220209111053.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 14/02/2022-20/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 20/02/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 2 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-14 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 2,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-02-20 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFGIAM15",
			"voucher_source": 1,
			"user_usage_limit": 3,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "125,000đ",
				"label": "Minimum order"
			}, {
				"content": "14/02/2022-20/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "20/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "3 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 19445044,
			"title": "15k off, min order 125k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 125,000đ\n- Applicable delivery time 14/02/2022-20/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 20/02/2022 23:59\n- This promotion has limited offer\n- Usage limit 3 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-14 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 3,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "125,000đ",
				"unit": "đ",
				"value": 125000
			},
			"merchant_type": 4,
			"end_time": "2022-02-20 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH15",
			"voucher_source": 1,
			"user_usage_limit": 2,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "118,000đ",
				"label": "Minimum order"
			}, {
				"content": "14/02/2022-20/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "20/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "2 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19446932,
			"title": "Code 15k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-b410edc6-220209111011.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 118,000đ\n- Applicable delivery time 14/02/2022-20/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 20/02/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 2 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-14 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 2,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "118,000đ",
				"unit": "đ",
				"value": 118000
			},
			"merchant_type": 4,
			"end_time": "2022-02-20 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH30",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "21/02/2022-27/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "24/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19487728,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-a3652860-220209111053.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 21/02/2022-27/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 24/02/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-21 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-02-24 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH15",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "118,000đ",
				"label": "Minimum order"
			}, {
				"content": "21/02/2022-27/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "24/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19487724,
			"title": "Code 15k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-b410edc6-220209111011.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 118,000đ\n- Applicable delivery time 21/02/2022-27/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 24/02/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-21 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "118,000đ",
				"unit": "đ",
				"value": 118000
			},
			"merchant_type": 4,
			"end_time": "2022-02-24 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH30K",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 30k off",
			"custom_condition": [{
				"content": "288,000đ",
				"label": "Minimum order"
			}, {
				"content": "21/02/2022-27/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "27/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19648391,
			"title": "Code 30k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-a3652860-220209111053.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 288,000đ\n- Applicable delivery time 21/02/2022-27/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 27/02/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-25 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "288,000đ",
				"unit": "đ",
				"value": 288000
			},
			"merchant_type": 4,
			"end_time": "2022-02-27 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 30000,
				"text": "30,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "SPFGIAM15",
			"voucher_source": 1,
			"user_usage_limit": 3,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "125,000đ",
				"label": "Minimum order"
			}, {
				"content": "21/02/2022-27/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "27/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "3 times/ user",
				"label": "Usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/",
			"id": 19487711,
			"title": "15k off, min order 125k, partners only",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"discount_on_type": 2,
			"condition_text": "- Minimum order 125,000đ\n- Applicable delivery time 21/02/2022-27/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 27/02/2022 23:59\n- This promotion has limited offer\n- Usage limit 3 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [1],
			"payment_option": [],
			"start_time": "2022-02-21 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 3,
				"period": 0
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "125,000đ",
				"unit": "đ",
				"value": 125000
			},
			"merchant_type": 4,
			"end_time": "2022-02-27 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}, {
			"code": "FRESH15K",
			"voucher_source": 1,
			"user_usage_limit": 1,
			"inapplicable_reason": "",
			"is_applicable": true,
			"platforms": [{
				"client_type": 4,
				"app_type": 3000
			}, {
				"client_type": 3,
				"app_type": 3000
			}, {
				"client_type": 4,
				"app_type": 1004
			}, {
				"client_type": 3,
				"app_type": 1004
			}],
			"custom_title": "Code 15k off",
			"custom_condition": [{
				"content": "118,000đ",
				"label": "Minimum order"
			}, {
				"content": "21/02/2022-27/02/2022",
				"label": "Applicable delivery time"
			}, {
				"content": "Not apply for Pick-up order",
				"label": ""
			}, {
				"content": "Applied for Partner",
				"label": ""
			}, {
				"content": "27/02/2022 23:59",
				"label": "Expiry date"
			}, {
				"content": "This promotion has limited offer",
				"label": ""
			}, {
				"content": "1 times/ user",
				"label": "Weekly usage limit"
			}],
			"tag_infos": [{
				"color": "#95a7bf",
				"display_order": 0,
				"name": "Limited Offer"
			}],
			"use_link": "https://www.now.vn/fresh",
			"id": 19648378,
			"title": "Code 15k off on total dish",
			"max_discount_value": {
				"text": "0đ",
				"unit": "đ",
				"value": 0
			},
			"icon_url": "https://images.foody.vn/icon/discount/s/image-b410edc6-220209111011.png",
			"discount_on_type": 2,
			"condition_text": "- Minimum order 118,000đ\n- Applicable delivery time 21/02/2022-27/02/2022\n- Not apply for Pick-up order\n- Applied for Partner\n- Expiry date 27/02/2022 23:59\n- This promotion has limited offer\n- Weekly usage limit 1 times/ user\n",
			"applied_city_ids": [],
			"status": 5,
			"foody_service_ids": [4, 5],
			"payment_option": [],
			"start_time": "2022-02-25 00:00:00",
			"limit_per_user": [{
				"max_usage_time": 1,
				"period": 3
			}],
			"remaining_quantity": 0,
			"icon": {
				"text": "Partners",
				"background": {
					"width": 0,
					"value": "https://images.foody.vn/icon/discount/s/shopeefood-brand-promo-code-background.png",
					"height": 0
				},
				"logo": {
					"width": 100,
					"value": "https://images.foody.vn/icon/discount/s100x100/shopeefood-brand-promo-code-hd-logo.png",
					"height": 100
				}
			},
			"min_order_amount": {
				"text": "118,000đ",
				"unit": "đ",
				"value": 118000
			},
			"merchant_type": 4,
			"end_time": "2022-02-27 23:59:00",
			"discount_value": {
				"discount_type": 2,
				"value": 15000,
				"text": "15,000đ"
			},
			"shipping_methods": [1]
		}]
	},
	"result": "success"
}
  ''';
  @override
  bool accept(String url) {
    return url.contains(urlGetInvalidVoucher);
  }

  @override
  response({String? url}) {
    return jsonDecode(_json);
  }

}