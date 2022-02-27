import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/models/model_collection.dart';
import 'package:shopeefood_clone/services/remote/fake_api/fake_collections_api.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class StateHomeCollection extends ChangeNotifier {
  static final provider =
      ChangeNotifierProvider((ref) => StateHomeCollection());
  List<ModelCollection> _collections = [];

  List<ModelCollection> get collections => _collections;

  init() async {
    await _getCollections();
  }

  Future _getCollections() async {
    var api = RemoteService.getApiService();
    var res = await api.getListCollectionInfo();
    _collections = res.reply?.collections ?? [];
    notifyListeners();
  }
}
