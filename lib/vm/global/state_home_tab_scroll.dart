import 'package:shopeefood_clone/utils/common_import.dart';

class StateHomeTabScroll extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeTabScroll());

  final ChangeNotifier homeScrollToTop = ChangeNotifier();

  bool _showBackToTopBtn = false;

  bool get showBackToTopBtn => _showBackToTopBtn;

  void setShowBackToTopBtn(bool value, {bool notify = true}) {
    _showBackToTopBtn = value;
    if (notify) {
      notifyListeners();
    }
  }
}
