

import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_order.dart';
import '../../services/remote_services.dart';

class StateOrderHistory extends ChangeNotifier {
  static final provider =
  ChangeNotifierProvider<StateOrderHistory>((ref) => StateOrderHistory());

  List<ModelOrders> _orders = [];

  List<ModelOrders> get orders => _orders;

  init() async {
    await _getHistoryOrder();
  }

  _getHistoryOrder() async {
    var api = RemoteService.getApiService();
    var res = await api.getOrderHistory();
    _orders = res.reply?.orders ?? [];
    notifyListeners();
  }
}