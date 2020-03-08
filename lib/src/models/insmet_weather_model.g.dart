// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insmet_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsmetWeatherModel _$InsmetWeatherModelFromJson(Map<String, dynamic> json) {
  return InsmetWeatherModel(
    cityName: json['cityName'] as String,
    datetime: json['datetime'] == null
        ? null
        : DateTime.parse(json['datetime'] as String),
    weatherForecast: json['weatherForecast'] as String,
    droughtStatus: json['droughtStatus'] as String,
    days: (json['days'] as List)
        ?.map((e) => e == null
            ? null
            : InsmetWeatherDayModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InsmetWeatherModelToJson(InsmetWeatherModel instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'datetime': instance.datetime?.toIso8601String(),
      'weatherForecast': instance.weatherForecast,
      'droughtStatus': instance.droughtStatus,
      'days': instance.days,
    };
