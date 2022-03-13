import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_delivery.dart';

class StateMostOrdered extends BaseChangeNotifier {
  static final provider =
      ChangeNotifierProvider<StateMostOrdered>((ref) => StateMostOrdered());

  final PageDataStoreWithId<ModelDelivery> _mostOrdered =
      PageDataStoreWithId<ModelDelivery>();
  final PageDataStoreWithId<ModelDelivery> _liked =
      PageDataStoreWithId<ModelDelivery>();

  PageDataStoreWithId<ModelDelivery> get liked => _liked;

  PageDataStoreWithId<ModelDelivery> get mostOrdered => _mostOrdered;

  void init() {
    _getMostOrdered();
  }

  _getMostOrdered() async {
    await Future.wait(
      [
        _getOrderData(_mostOrdered),
        _getOrderData(_liked),
      ],
    );
  }

  Future<void> _getOrderData(PageDataStoreWithId<ModelDelivery> store) async {
    await store.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      try {
        var api = RemoteService.getApiService();
        var res = await api.getMostOrdered();
        return PageDataResponse(data: res.reply?.deliveryInfos ?? []);
      } catch (e) {
        logger.e(e);
      }
      return PageDataResponse(isSuccess: false);
    });
  }
}
