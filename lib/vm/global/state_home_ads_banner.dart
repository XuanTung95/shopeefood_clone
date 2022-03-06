import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/models/model_ads_banner.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class StateHomeBanner extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeBanner());

  final _banners = PageDataStoreWithId<ModelBanner>();

  PageDataStoreWithId<ModelBanner> get banners => _banners;

  init() async {
   await _intBanners();
  }

  _intBanners() async {
    await Future.delayed(const Duration(seconds: 1));
    _banners.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      var api = RemoteService.getApiService();
      var res = await api.getHomeAdsBanner();
      if (res.reply?.bannerInfos != null) {
        return PageDataResponse(data: res.reply?.bannerInfos ?? []);
      }
      return PageDataResponse(isSuccess: false);
    });
  }
}
