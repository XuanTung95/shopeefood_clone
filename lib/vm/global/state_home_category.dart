import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/models/model_category.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class StateHomeCategory extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeCategory());

  final _categories = PageDataStoreWithId<ModelHomeSquare>();

  PageDataStoreWithId<ModelHomeSquare> get categories => _categories;

  init() async {
    await _intCategory();
  }

  _intCategory() async {
    await Future.delayed(const Duration(seconds: 1));
    _categories.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      try {
        var api = RemoteService.getApiService();
        var res = await api.getHomeSquare();
        if (res.reply?.homeSquareInfo != null) {
          return PageDataResponse(data: res.reply?.homeSquareInfo ?? []);
        }
      } catch (e) {
        logger.e(e);
      }
      return PageDataResponse(isSuccess: false);
    });
  }
}
