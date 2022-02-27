import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/models/model_collection.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_collections_api.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_dish.dart';

class StateHomeDish extends ChangeNotifier {
  static final provider =
      ChangeNotifierProvider((ref) => StateHomeDish());
  List<ModelDish> _dishs = [];

  List<ModelDish> get dish => _dishs;

  init() async {
    await _getDishsInfo();
  }

  Future _getDishsInfo() async {
    var api = RemoteService.getApiService();
    var res = await api.getListDishInfo();
    _dishs = res.reply?.dishInfos ?? [];
    notifyListeners();
  }
}
