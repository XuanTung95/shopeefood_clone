import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'model_location_response.g.dart';

@JsonSerializable()
class ModelLocationResponse {
  String? ip;
  bool? success;
  String? type;
  String? continent;
  String? continentCode;
  String? country;
  String? countryCode;
  String? countryFlag;
  String? countryCapital;
  String? countryPhone;
  String? countryNeighbours;
  String? region;
  String? city;
  double? latitude;
  double? longitude;
  String? asn;
  String? org;
  String? isp;
  String? timezone;
  String? timezoneName;
  int? timezoneDstOffset;
  int? timezoneGmtOffset;
  String? timezoneGmt;
  String? currency;
  String? currencyCode;
  String? currencySymbol;
  int? currencyRates;
  String? currencyPlural;
  int? completedRequests;

  ModelLocationResponse();


  factory ModelLocationResponse.fromJson(Map<String, dynamic> json) => _$ModelLocationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ModelLocationResponseToJson(this);
}