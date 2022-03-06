import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/models/model_address.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../services/remote_services.dart';

class StateUserAddress extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateUserAddress());
  final _address =
      PageDataStoreWithId<ModelAddresses>();

  PageDataStoreWithId<ModelAddresses> get address => _address;

  void init() {
    getAddress();
  }

  getAddress() async {
    _address.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      try {
        var api = RemoteService.getApiService();
        var res = await api.getAddress();
        if (res.reply?.addresses != null) {
          return PageDataResponse(data: res.reply?.addresses ?? []);
        }
      } catch (e) {
        logger.e(e);
      }
      return PageDataResponse(isSuccess: false);
    });
  }
}
