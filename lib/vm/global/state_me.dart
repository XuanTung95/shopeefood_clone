import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_user_profile.dart';
import '../../services/remote_services.dart';

class StateMe extends ChangeNotifier {
  static final provider = ChangeNotifierProvider<StateMe>((ref) => StateMe());

  PageDataStoreWithId<ModelUserProfile> _userProfile = PageDataStoreWithId<ModelUserProfile>();

  ModelUserProfile? get userProfile => _userProfile.data.isEmpty ? null : _userProfile.data[0];

  init() {
    _getUserProfile();
  }

  _getUserProfile() async {
    _userProfile.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      try {
        var api = RemoteService.getApiService();
        var res = await api.getUserProfile();
        if (res.reply != null) {
          return PageDataResponse(data: [res.reply!]);
        }
      } catch (e) {
        logger.e(e);
      }
      return PageDataResponse(isSuccess: false);
    });
  }
}
