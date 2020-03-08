// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return WeatherModel(
    cityName: json['cityName'] as String,
    temperature: json['temperature'] as int,
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
    pressure: (json['pressure'] as num)?.toDouble(),
    humidity: (json['humidity'] as num)?.toDouble(),
    windVelocity: (json['windVelocity'] as num)?.toDouble(),
    windDirection:
        _$enumDecodeNullable(_$CardinalPointEnumMap, json['windDirection']),
    windDirectionDescription: json['windDirectionDescription'] as String,
    windDirectionDegree: json['windDirectionDegree'] as int,
    windDirectionRadians: (json['windDirectionRadians'] as num)?.toDouble(),
    weatherForecast: json['weatherForecast'] as String,
    droughtStatus: json['droughtStatus'] as String,
    forecasts: (json['forecasts'] as List)
        ?.map((e) => e == null
            ? null
            : WeatherForecastModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'temperature': instance.temperature,
      'dateTime': instance.dateTime?.toIso8601String(),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'windVelocity': instance.windVelocity,
      'windDirection': _$CardinalPointEnumMap[instance.windDirection],
      'windDirectionDescription': instance.windDirectionDescription,
      'windDirectionDegree': instance.windDirectionDegree,
      'windDirectionRadians': instance.windDirectionRadians,
      'weatherForecast': instance.weatherForecast,
      'droughtStatus': instance.droughtStatus,
      'forecasts': instance.forecasts,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CardinalPointEnumMap = {
  CardinalPoint.North: 'North',
  CardinalPoint.North_Northeast: 'North_Northeast',
  CardinalPoint.Northeast: 'Northeast',
  CardinalPoint.East_Northeast: 'East_Northeast',
  CardinalPoint.East: 'East',
  CardinalPoint.East_Southeast: 'East_Southeast',
  CardinalPoint.Southeast: 'Southeast',
  CardinalPoint.South_Southeast: 'South_Southeast',
  CardinalPoint.South: 'South',
  CardinalPoint.South_Southwest: 'South_Southwest',
  CardinalPoint.Southwest: 'Southwest',
  CardinalPoint.West_Southwest: 'West_Southwest',
  CardinalPoint.West: 'West',
  CardinalPoint.West_Northwest: 'West_Northwest',
  CardinalPoint.Northwest: 'Northwest',
  CardinalPoint.North_Northwest: 'North_Northwest',
};
