import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/utils/date_time_utils.dart';

class StateOrderHistoryFilter extends ChangeNotifier {
  static final provider =
      ChangeNotifierProvider((ref) => StateOrderHistoryFilter());

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

  List<String> _allStatus = ['All Status', 'Cancelled', 'Completed'];

  String _selectedStatus = 'All Status';

  DateTime _fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime _toDate = DateTime.now();

  String getDateString() {
    return '${DateTimeUtils.formatOnlyDate(_fromDate)} - ${DateTimeUtils.formatOnlyDate(_toDate)}';
  }

  List<String> get allServices => _allServices;

  set allServices(List<String> value) {
    _allServices = value;
  }

  String get selectedService => _selectedService;

  set selectedService(String value) {
    _selectedService = value;
    notifyListeners();
  }

  List<String> get allStatus => _allStatus;

  String get selectedStatus => _selectedStatus;

  set selectedStatus(String value) {
    _selectedStatus = value;
    notifyListeners();
  }

  DateTime get fromDate => _fromDate;

  set fromDate(DateTime value) {
    _fromDate = value;
    if (_toDate.isBefore(_fromDate)) {
      _toDate = _fromDate;
    }
    notifyListeners();
  }

  DateTime get toDate => _toDate;

  set toDate(DateTime value) {
    _toDate = value;
    if (_fromDate.isAfter(_toDate)) {
      _fromDate = toDate;
    }
    notifyListeners();
  }
}
