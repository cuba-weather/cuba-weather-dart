// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insmet_marine_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsmetMarineForecastModel _$InsmetMarineForecastModelFromJson(
    Map<String, dynamic> json) {
  return InsmetMarineForecastModel(
    centerName: json['centerName'] as String,
    forecastName: json['forecastName'] as String,
    forecastDate: json['forecastDate'] as String,
    significantSituation: json['significantSituation'] as String,
    dataSource: json['dataSource'] as String,
    areaGulfOfMexico: json['areaGulfOfMexico'] as String,
    areaRest: json['areaRest'] as String,
    validSince: json['validSince'] as String,
    validUntil: json['validUntil'] as String,
    authors: (json['authors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$InsmetMarineForecastModelToJson(
        InsmetMarineForecastModel instance) =>
    <String, dynamic>{
      'centerName': instance.centerName,
      'forecastName': instance.forecastName,
      'forecastDate': instance.forecastDate,
      'validSince': instance.validSince,
      'validUntil': instance.validUntil,
      'significantSituation': instance.significantSituation,
      'dataSource': instance.dataSource,
      'areaGulfOfMexico': instance.areaGulfOfMexico,
      'areaRest': instance.areaRest,
      'authors': instance.authors,
    };
