import '../../models/list_data_store.dart';
import '../../models/model_delivery.dart';
import '../../services/remote_services.dart';
import '../../utils/common_import.dart';

class StateBrandRestaurant extends ChangeNotifier {
  final ModelDelivery shop;
  final pageData = PageDataStoreWithId<ModelDelivery>();
  bool isLoading = false;

  StateBrandRestaurant({required this.shop});

  Future loadData() async {
    if (pageData.isLoading || pageData.isDone) {
      logger.i(
          'Skip loading: loading ${pageData.isLoading} done ${pageData.isDone}');
      return;
    }
    int id = pageData.newId();
    bool success = false;
    try {
      pageData.startLoading();
      notifyListeners();
      var api = RemoteService.getApiService();
      var res = await api.getInfoOfBrand(shop.id ?? -1);
      if (pageData.isValid(id) && res.reply?.deliveryInfos != null) {
        pageData.loadSuccess(res.reply?.deliveryInfos ?? []);
        success = true;
      }
    } catch (e,st) {
      logger.e(st);
    }
    if (!success) {
      pageData.loadError();
    }
    notifyListeners();
  }
}
