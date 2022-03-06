import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_menu_response.dart';
import '../../models/model_shop_detail.dart';

class StateRestaurantDetail extends ChangeNotifier {
  static final provider = ChangeNotifierProvider.family
      .autoDispose((ref, String id) => StateRestaurantDetail());

  final _shopDetail = PageDataStoreWithId<ModelShopDetail>();
  final _menus = PageDataStoreWithId<MenuInfos>();

  bool get isLoading => _menus.data.isEmpty;

  ModelShopDetail? get shopDetail =>
      _shopDetail.data.isEmpty ? null : _shopDetail.data[0];

  init() {
    _getDeliveryDetail();
    _getMenu();
  }

  _getDeliveryDetail() async {
    _shopDetail.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      try {
        final api = RemoteService.getApiService();
        final ret = await api.getShopDetail();
        if (ret.reply?.deliveryDetail != null) {
          return PageDataResponse(data: [ret.reply!.deliveryDetail!]);
        }
      } catch (e) {
        logger.e(e);
      }
      return PageDataResponse(isSuccess: false);
    });
  }

  _getMenu() async {
    _menus.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      try {
        final api = RemoteService.getApiService();
        final ret = await api.getMenu();
        if (ret.reply?.menuInfos != null) {
          return PageDataResponse(data: ret.reply?.menuInfos ?? []);
        }
      } catch (e) {
        logger.e(e);
      }
      return PageDataResponse(isSuccess: false);
    });

    notifyListeners();
  }

  PageDataStoreWithId<MenuInfos> get menus => _menus;
}
