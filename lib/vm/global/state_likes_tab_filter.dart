import 'package:shopeefood_clone/utils/common_import.dart';

class StateLikesTabFilter extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateLikesTabFilter());

  String _selectedService = 'All Services';

  String get selectedService => _selectedService;

  set selectedService(String value) {
    _selectedService = value;
    notifyListeners();
  }
}