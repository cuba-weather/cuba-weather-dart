// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insmet_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsmetForecastModel _$InsmetForecastModelFromJson(Map<String, dynamic> json) {
  return InsmetForecastModel(
    centerName: json['centerName'] as String,
    forecastName: json['forecastName'] as String,
    forecastDate: json['forecastDate'] as String,
    forecastTitle: json['forecastTitle'] as String,
    forecastText: json['forecastText'] as String,
    dataSource: json['dataSource'] as String,
    imageUrl: json['imageUrl'] as String,
    authors: (json['authors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$InsmetForecastModelToJson(
        InsmetForecastModel instance) =>
    <String, dynamic>{
      'centerName': instance.centerName,
      'forecastName': instance.forecastName,
      'forecastDate': instance.forecastDate,
      'forecastTitle': instance.forecastTitle,
      'forecastText': instance.forecastText,
      'dataSource': instance.dataSource,
      'imageUrl': instance.imageUrl,
      'authors': instance.authors,
    };
