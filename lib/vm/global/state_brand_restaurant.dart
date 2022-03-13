import '../../models/list_data_store.dart';
import '../../models/model_delivery.dart';
import '../../services/remote_services.dart';
import '../../utils/common_import.dart';
import '../base_change_notifier.dart';

class StateBrandRestaurant extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider.family.autoDispose(
    (ref, ModelDelivery shop) => StateBrandRestaurant(shop: shop),
  );

  final ModelDelivery shop;
  final pageData = PageDataStoreWithId<ModelDelivery>();

  StateBrandRestaurant({required this.shop});

  Future loadData() async {
    await pageData.loadMoreData(
      onUpdate: () {
        notifyListeners();
      },
      loadFunction: () async {
        try {
          var api = RemoteService.getApiService();
          var res = await api.getInfoOfBrand(shop.id ?? -1);
          if (res.reply?.deliveryInfos != null) {
            return PageDataResponse(
                data: res.reply?.deliveryInfos ?? [], isSuccess: true);
          }
        } catch (e, st) {
          logger.e(st);
        }
        return PageDataResponse(isSuccess: false);
      },
    );
  }
}
