


import 'package:shopeefood_clone/utils/common_import.dart';

class StateHomeBottomNav extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeBottomNav());

  HomeBottomNavName _selected = HomeBottomNavName.HOME;

  HomeBottomNavName get selected => _selected;

  set selected(HomeBottomNavName value) {
    if (_selected == value) return;
    _selected = value;
    notifyListeners();
  }
}

enum HomeBottomNavName {
  HOME,
  MY_ORDER,
  LIKES,
  NOTIFICATION,
  ME,
}