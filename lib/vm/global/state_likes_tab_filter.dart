

import 'package:shopeefood_clone/utils/common_import.dart';

class StateLikesTabFilter extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateLikesTabFilter());

  List<String> _allServices = [
    'All Services',
    'Food',
    'Fresh',
    'Beer',
    'Flowers',
    'Mart',
    'Medicine',
    'Delivery',
    'Salon',
    'Pets',
  ];

  String _selectedService = 'All Services';

  List<String> get allServices => _allServices;

  String get selectedService => _selectedService;

  set selectedService(String value) {
    _selectedService = value;
    notifyListeners();
  }
}