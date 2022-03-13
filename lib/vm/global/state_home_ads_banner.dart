import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/models/model_ads_banner.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/vm/global/state_drag_ads.dart';
import 'package:shopeefood_clone/vm/global/state_home_popup.dart';

import '../../utils/enum_utils.dart';

class StateHomeBanner extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeBanner(ref));

  final Ref ref;

  final _banners = PageDataStoreWithId<ModelBanner>();

  final _fullScreen = PageDataStoreWithId<ModelBanner>();
  final _dragAds = PageDataStoreWithId<ModelBanner>();

  StateHomeBanner(this.ref);

  PageDataStoreWithId<ModelBanner> get banners => _banners;

  init() async {
    Future.wait([
      _intTopBanners(),
      _intDragBanners(),
    ]);
  }

  Future _intTopBanners() async {
    await Future.delayed(const Duration(seconds: 1));
    _banners.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      var api = RemoteService.getApiService();
      var res = await api.getHomeAdsBanner(EnumUtils.ADS_POSITION_TOP_BANNER);
      if (res.reply?.bannerInfos != null) {
        return PageDataResponse(data: res.reply?.bannerInfos ?? []);
      }
      return PageDataResponse(isSuccess: false);
    });
  }

  Future intFullScreenBanners() async {
    if (_fullScreen.isLoading || _fullScreen.data.isNotEmpty) return;
    await Future.delayed(const Duration(seconds: 1));
    await _fullScreen.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      var api = RemoteService.getApiService();
      var res = await api.getHomeAdsBanner(EnumUtils.ADS_POSITION_FULL_SCREEN_POPUP);
      if (res.reply?.bannerInfos != null) {
        return PageDataResponse(data: res.reply?.bannerInfos ?? []);
      }
      return PageDataResponse(isSuccess: false);
    });
    if (_fullScreen.data.isNotEmpty) {
      final popup = ref.read(StateHomePopup.provider);
      popup.addPopupAds(_fullScreen.data[0]);
    }
  }

  Future _intDragBanners() async {
    await Future.delayed(const Duration(seconds: 1));
    await _dragAds.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      var api = RemoteService.getApiService();
      var res = await api.getHomeAdsBanner(EnumUtils.ADS_POSITION_DRAG);
      if (res.reply?.bannerInfos != null) {
        return PageDataResponse(data: res.reply?.bannerInfos ?? []);
      }
      return PageDataResponse(isSuccess: false);
    });
    if (_dragAds.data.isNotEmpty) {
      final popup = ref.read(StateDragAds.provider);
      popup.addDragAds(_dragAds.data[0]);
    }
  }
}
