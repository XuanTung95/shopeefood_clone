import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_order.dart';
import '../../services/remote_services.dart';

class StateOrderHistory extends ChangeNotifier {
  static final provider =
      ChangeNotifierProvider<StateOrderHistory>((ref) => StateOrderHistory());

  final _orders = PageDataStoreWithId<ModelOrders>();

  PageDataStoreWithId<ModelOrders> get orders => _orders;

  init() async {
    await _getHistoryOrder();
  }

  _getHistoryOrder() async {
    _orders.loadMoreData(
      onUpdate: () {
        notifyListeners();
      },
      loadFunction: () async {
        try {
          var api = RemoteService.getApiService();
          var res = await api.getOrderHistory();
          if (res.reply?.orders != null) {
            return PageDataResponse(data: res.reply?.orders ?? []);
          }
        } catch (e) {
          logger.e(e);
        }
        return PageDataResponse(isSuccess: false);
      },
    );
  }
}
