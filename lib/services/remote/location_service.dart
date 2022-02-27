import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shopeefood_clone/models/model_location_response.dart';

part 'location_service.g.dart';

@RestApi(baseUrl: "https://ipwhois.app/")
abstract class LocationRestClient {
  factory LocationRestClient(Dio dio, {String baseUrl}) = _LocationRestClient;

  @GET("json/")
  Future<ModelLocationResponse> getLocation();
}