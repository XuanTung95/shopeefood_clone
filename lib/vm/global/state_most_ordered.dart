import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_delivery.dart';

class StateMostOrdered extends ChangeNotifier {

  static final provider =
  ChangeNotifierProvider<StateMostOrdered>((ref) => StateMostOrdered());

  List<ModelDelivery> _mostOrdered = [];
  List<ModelDelivery> _liked = [];

  List<ModelDelivery> get liked => _liked;

  List<ModelDelivery> get mostOrdered => _mostOrdered;

  void init() {
    _getMostOrdered();
  }

  _getMostOrdered() async {
    var api = RemoteService.getApiService();
    var res = await api.getMostOrdered();
    _mostOrdered = res.reply?.deliveryInfos ?? [];
    _liked = _mostOrdered;
    notifyListeners();
  }
}