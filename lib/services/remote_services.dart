import 'package:shopeefood_clone/services/remote/api_service.dart';
import 'package:shopeefood_clone/services/remote/fake_api/base_fake_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_ads_banner.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_collections_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_delivery_item_list.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_dish_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_flashsale.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_get_info_of_brand.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_home_square_api.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_meta_data.dart';

import '../utils/common_import.dart';

class RemoteService {
  static ApiRestClient getApiService() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor());
    dio.interceptors.add(FakeApiInterceptor());

    return ApiRestClient(dio);
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
  ];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    for (var api in fakeApis) {
      if (api.accept(options.uri.toString())) {
        await Future.delayed(const Duration(seconds: 1));
        Response response =
            Response(data: api.response(), requestOptions: options);
        return handler.resolve(response);
      }
    }

    super.onRequest(options, handler);
  }
}