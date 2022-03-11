import 'package:image_picker/image_picker.dart';
import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/utils/date_time_utils.dart';

import '../../models/model_user_profile.dart';
import '../../services/remote_services.dart';

class StateMe extends ChangeNotifier {
  static final provider = ChangeNotifierProvider<StateMe>((ref) => StateMe());

  final PageDataStoreWithId<ModelUserProfile> _userProfile =
      PageDataStoreWithId<ModelUserProfile>();

  ModelUserProfile? get userProfile =>
      _userProfile.data.isEmpty ? null : _userProfile.data[0];

  XFile? _pickedAvatar;

  XFile? get pickedAvatar => _pickedAvatar;

  set pickedAvatar(XFile? value) {
    _pickedAvatar = value;
    notifyListeners();
  }

  void updatePhone(String phoneNumber) {
    if (userProfile != null) {
      final phones = userProfile?.phones ?? [];
      if (phones.isEmpty) {
        phones.add(Phones(number: phoneNumber));
      } else {
        phones[0].number = phoneNumber;
      }
      notifyListeners();
    }
  }

  void updateName(String newName) {
    if (userProfile != null) {
      userProfile?.name = newName;
      notifyListeners();
    }
  }

  void updateEmail(String newEmail) {
    if (userProfile != null) {
      userProfile?.email = newEmail;
      notifyListeners();
    }
  }

  void updateGender(int gender) {
    userProfile?.gender = gender;
    notifyListeners();
  }

  void updateDoB(DateTime dob) {
    userProfile?.birthday = DateTimeUtils.dateFormatDay.format(dob);
    notifyListeners();
  }

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
