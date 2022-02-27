// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelLocationResponse _$ModelLocationResponseFromJson(
        Map<String, dynamic> json) =>
    ModelLocationResponse()
      ..ip = json['ip'] as String?
      ..success = json['success'] as bool?
      ..type = json['type'] as String?
      ..continent = json['continent'] as String?
      ..continentCode = json['continentCode'] as String?
      ..country = json['country'] as String?
      ..countryCode = json['countryCode'] as String?
      ..countryFlag = json['countryFlag'] as String?
      ..countryCapital = json['countryCapital'] as String?
      ..countryPhone = json['countryPhone'] as String?
      ..countryNeighbours = json['countryNeighbours'] as String?
      ..region = json['region'] as String?
      ..city = json['city'] as String?
      ..latitude = (json['latitude'] as num?)?.toDouble()
      ..longitude = (json['longitude'] as num?)?.toDouble()
      ..asn = json['asn'] as String?
      ..org = json['org'] as String?
      ..isp = json['isp'] as String?
      ..timezone = json['timezone'] as String?
      ..timezoneName = json['timezoneName'] as String?
      ..timezoneDstOffset = json['timezoneDstOffset'] as int?
      ..timezoneGmtOffset = json['timezoneGmtOffset'] as int?
      ..timezoneGmt = json['timezoneGmt'] as String?
      ..currency = json['currency'] as String?
      ..currencyCode = json['currencyCode'] as String?
      ..currencySymbol = json['currencySymbol'] as String?
      ..currencyRates = json['currencyRates'] as int?
      ..currencyPlural = json['currencyPlural'] as String?
      ..completedRequests = json['completedRequests'] as int?;

Map<String, dynamic> _$ModelLocationResponseToJson(
        ModelLocationResponse instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'success': instance.success,
      'type': instance.type,
      'continent': instance.continent,
      'continentCode': instance.continentCode,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'countryFlag': instance.countryFlag,
      'countryCapital': instance.countryCapital,
      'countryPhone': instance.countryPhone,
      'countryNeighbours': instance.countryNeighbours,
      'region': instance.region,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'asn': instance.asn,
      'org': instance.org,
      'isp': instance.isp,
      'timezone': instance.timezone,
      'timezoneName': instance.timezoneName,
      'timezoneDstOffset': instance.timezoneDstOffset,
      'timezoneGmtOffset': instance.timezoneGmtOffset,
      'timezoneGmt': instance.timezoneGmt,
      'currency': instance.currency,
      'currencyCode': instance.currencyCode,
      'currencySymbol': instance.currencySymbol,
      'currencyRates': instance.currencyRates,
      'currencyPlural': instance.currencyPlural,
      'completedRequests': instance.completedRequests,
    };
