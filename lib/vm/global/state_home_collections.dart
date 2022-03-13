import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/models/model_collection.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/list_data_store.dart';

class StateHomeCollection extends BaseChangeNotifier {
  static final provider =
      ChangeNotifierProvider((ref) => StateHomeCollection());
  final _collections = PageDataStoreWithId<ModelCollection>();

  PageDataStoreWithId<ModelCollection> get collections => _collections;

  init() async {
    await _getCollections();
  }

  Future _getCollections() async {
    _collections.loadMoreData(
        onUpdate: () {
          notifyListeners();
        },
        loadFunction: () async {
          try {
            var api = RemoteService.getApiService();
            var res = await api.getListCollectionInfo();
            if (res.reply?.collections != null) {
              return PageDataResponse(data: res.reply?.collections ?? []);
            }
          } catch (e) {
            logger.e(e);
          }
          return PageDataResponse(isSuccess: false);
        });
  }
}
