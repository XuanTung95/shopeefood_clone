import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_ads_banner.dart';

class StateHomePopup extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomePopup());

  ModelBanner? _popupAds;
  final eventShowPopup = ChangeNotifier();

  ModelBanner? get popupAds => _popupAds;

  void clearPopupAds() {
    _popupAds = null;
    notifyListeners();
  }

  void addPopupAds(ModelBanner banner) {
    _popupAds = banner;
    eventShowPopup.notifyListeners();
    notifyListeners();
  }
}