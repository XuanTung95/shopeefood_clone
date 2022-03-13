import 'package:shopeefood_clone/models/model_meta_response.dart';

import '../../services/remote_services.dart';
import '../../utils/common_import.dart';

class StateMetaData extends BaseChangeNotifier {
  static final provider =
  ChangeNotifierProvider<StateMetaData>((ref) => StateMetaData());
  ModelMetaData? _metaData;

  ModelMetaData? get metaData => _metaData;

  init() async {
    await _getMetaData();
  }

  Future _getMetaData() async {
    var api = RemoteService.getApiService();
    var res = await api.getMetaData();
    _metaData = res.reply;
    notifyListeners();
  }

  List<Categories> getNowCategories(int id) {
    var services = _metaData?.country?.nowServices ?? [];
    for (var value in services) {
      if (value.id == id) {
        return value.categories ?? [];
      }
    }
    return [];
  }

}