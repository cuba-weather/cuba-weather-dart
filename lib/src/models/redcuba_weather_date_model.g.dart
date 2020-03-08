// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redcuba_weather_date_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedCubaWeatherDateModel _$RedCubaWeatherDateModelFromJson(
    Map<String, dynamic> json) {
  return RedCubaWeatherDateModel(
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    timezoneType: (json['timezoneType'] as num)?.toDouble(),
    timezone: json['timezone'] as String,
  );
}

Map<String, dynamic> _$RedCubaWeatherDateModelToJson(
        RedCubaWeatherDateModel instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'timezoneType': instance.timezoneType,
      'timezone': instance.timezone,
    };
