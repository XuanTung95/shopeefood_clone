import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_user_profile.dart';
import '../../services/remote_services.dart';

class StateMe extends ChangeNotifier {
  static final provider = ChangeNotifierProvider<StateMe>((ref) => StateMe());

  ModelUserProfile? _userProfile;

  ModelUserProfile? get userProfile => _userProfile;

  init() {
    _getUserProfile();
  }

  _getUserProfile() async {
    var api = RemoteService.getApiService();
    var res = await api.getUserProfile();
    _userProfile = res.reply;
    notifyListeners();
  }
}
