import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/app_config.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/utils/location_util.dart';
import 'package:shopeefood_clone/vm/global/state_home_ads_banner.dart';

class StateUserLocation extends BaseChangeNotifier {
  static final provider =
      ChangeNotifierProvider((ref) => StateUserLocation(ref));
  final Ref ref;
  bool _loading = false;
  UserLocation? _currentLocation;

  StateUserLocation(this.ref);

  UserLocation? get currentLocation => _currentLocation;

  bool get loading => _loading;

  Future<void> init() async {
    return _getUserLocationWithRetry();
  }

  Future<void> _getUserLocationWithRetry() async {
    _loading = true;
    try {
      // final response = await retry(
      //       () => _getUserLocation().timeout(const Duration(seconds: 10)),
      //   retryIf: (e) => false,
      // );
      await Future.delayed(const Duration(seconds: 1));
      if (AppConfig.testConfig.isTesting) {
        _currentLocation = UserLocation()
          ..address = 'test address';
      } else {
        final pos = await LocationUtils.determinePosition();
        final mapService = RemoteService.getGoogleMapService();
        final locationResponse = await mapService.getLocationName(
            '${pos.latitude},${pos.longitude}', AppConfig.MAP_API_KEY);
        if (locationResponse.results?.isNotEmpty ?? false) {
          _currentLocation = UserLocation()
            ..address = locationResponse.results?.first.formattedAddress ?? '';
          notifyListeners();
          await Future.delayed(const Duration(seconds: 2));
        }
      }
    } catch (e) {
      logger.e(e);
    }
    _loading = false;
    ref.read(StateHomeBanner.provider).intFullScreenBanners();
    notifyListeners();
  }

  /*
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
  */
}

class UserLocation {
  String address = '';
  double lat = 0;
  double long = 0;
}
