import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retry/retry.dart';
import 'package:shopeefood_clone/services/remote/location_service.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class StateUserLocation extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateUserLocation());
  bool _loading = false;
  UserLocation? _currentLocation;

  UserLocation? get currentLocation => _currentLocation;

  bool get loading => _loading;

  Future<void> init() async {
    return _getUserLocationWithRetry();
  }

  Future<void> _getUserLocationWithRetry() async {
    _loading = true;
    try {
      final response = await retry(
            () => _getUserLocation(),
        retryIf: (e) => false,
      );
      await Future.delayed(const Duration(seconds: 2));
      _currentLocation = response;
    } catch (e) {
      logger.e(e);
    }
    _loading = false;
    notifyListeners();
  }

  Future<UserLocation> _getUserLocation() async {
    logger.i('_getUserLocation()');
    final dio = Dio();
    final client = LocationRestClient(dio);
    var response = await client.getLocation();
    logger.i('Get Country response: ${response.toJson()}');

    return UserLocation()
      ..address =
          '${response.region}, ${response.country}, lat: ${response.latitude?.toStringAsFixed(3)}, long: ${response.longitude?.toStringAsFixed(3)}'
      ..lat = response.latitude ?? 0
      ..long = response.longitude ?? 0;
  }
}

class UserLocation {
  String address = '';
  double lat = 0;
  double long = 0;
}