import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/list_data_store.dart';
import '../../models/model_dish.dart';

class StateHomeDish extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeDish());
  PageDataStoreWithId<ModelDish> _dishs = PageDataStoreWithId<ModelDish>();

  PageDataStoreWithId<ModelDish> get dish => _dishs;

  init() async {
    await _getDishsInfo();
  }

  Future _getDishsInfo() async {
    return _dishs.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      var api = RemoteService.getApiService();
      var res = await api.getListDishInfo();
      if (res.reply?.dishInfos != null) {
        return PageDataResponse(data: res.reply?.dishInfos ?? []);
      }
      return PageDataResponse(isSuccess: false);
    });
  }
}
