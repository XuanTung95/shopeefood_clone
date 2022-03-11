import 'package:shopeefood_clone/services/remote/api_service.dart';
import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_address.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_ads_banner.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_api_notification.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_collections_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_delivery_item_list.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_dish_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_draft_order.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_feedback.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_flashsale.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_get_info_of_brand.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_home_square_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_meta_data.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_most_ordered.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_order_history.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_shop_detail.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_shop_menus.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_user_profile.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_voucher.dart';
import 'package:shopeefood_clone/services/remote/google_map_service.dart';

import '../utils/common_import.dart';

class RemoteService {
  static ApiRestClient? _client;

  static ApiRestClient getApiService() {
    if (_client == null) {
      Dio dio = Dio();
      dio.interceptors.add(LogInterceptor());
      dio.interceptors.add(FakeApiInterceptor());

      _client = ApiRestClient(dio);
    }
    return _client!;
  }

  static GoogleMapService getGoogleMapService() {
    Dio dio = Dio();
    return GoogleMapService(dio);
  }
}

class FakeApiInterceptor extends Interceptor {
  final List<BaseFakeApi> fakeApis = [
    FakeCollectionsApi(),
    FakeDishApi(),
    FakeHomeSquare(),
    FakeAddBanner(),
    FakeMetaData(),
    FakeDeliveryItemList(),
    FakeGetInfoOfBrand(),
    FakeFlashSale(),
    FakeOrderHistory(),
    FakeMostOrdered(),
    FakeNotification(),
    FakeUserProfile(),
    FakeVoucher(),
    FakeInvalidVoucher(),
    FakeAddress(),
    FakeShopDetail(),
    FakeShopMenu(),
    FakeFeedback(),
    FakeDraftOrder(),
  ];

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    for (var api in fakeApis) {
      if (api.accept(options.uri.toString())) {
        await Future.delayed(const Duration(seconds: 1));
        Response response =
            Response(data: api.response(url: options.uri.toString()), requestOptions: options);
        return handler.resolve(response);
      }
    }

    super.onRequest(options, handler);
  }
}
