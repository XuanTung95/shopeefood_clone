import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shopeefood_clone/models/geocode.dart';

part 'google_map_service.g.dart';

@RestApi(baseUrl: "https://maps.googleapis.com/maps/api/")
abstract class GoogleMapService {
  factory GoogleMapService(Dio dio, {String baseUrl}) = _GoogleMapService;

  @GET("geocode/json")
  Future<GeocodeResponse> getLocationName(@Query('latlng') String latlng, @Query('key') String key);
}