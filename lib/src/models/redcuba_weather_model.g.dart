// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redcuba_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedCubaWeatherModel _$RedCubaWeatherModelFromJson(Map<String, dynamic> json) {
  return RedCubaWeatherModel(
    cityName: json['cityName'] as String,
    dt: json['dt'] == null
        ? null
        : RedCubaWeatherDateModel.fromJson(json['dt'] as Map<String, dynamic>),
    temp: (json['temp'] as num)?.toDouble(),
    pressure: (json['pressure'] as num)?.toDouble(),
    humidity: (json['humidity'] as num)?.toDouble(),
    iconWeather: json['iconWeather'] as String,
    windVelocity: (json['windVelocity'] as num)?.toDouble(),
    windDirection:
        _$enumDecodeNullable(_$CardinalPointEnumMap, json['windDirection']),
    windDirectionDescription: json['windDirectionDescription'] as String,
    windDirectionDegree: json['windDirectionDegree'] as int,
    windDirectionRadians: (json['windDirectionRadians'] as num)?.toDouble(),
    descriptionWeather: json['descriptionWeather'] as String,
  );
}

Map<String, dynamic> _$RedCubaWeatherModelToJson(
        RedCubaWeatherModel instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'dt': instance.dt,
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'iconWeather': instance.iconWeather,
      'windVelocity': instance.windVelocity,
      'windDirection': _$CardinalPointEnumMap[instance.windDirection],
      'windDirectionDescription': instance.windDirectionDescription,
      'windDirectionDegree': instance.windDirectionDegree,
      'windDirectionRadians': instance.windDirectionRadians,
      'descriptionWeather': instance.descriptionWeather,
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
