import 'package:shopeefood_clone/utils/common_import.dart';

class StateServiceInfo extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateServiceInfo());

  final List<String> _allServices = [
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

  List<String> get allServices => _allServices;
}
