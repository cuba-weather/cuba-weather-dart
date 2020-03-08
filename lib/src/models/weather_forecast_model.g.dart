// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherForecastModel _$WeatherForecastModelFromJson(Map<String, dynamic> json) {
  return WeatherForecastModel(
    day: json['day'] as int,
    temperatureMax: json['temperatureMax'] as int,
    temperatureMin: json['temperatureMin'] as int,
    state: _$enumDecodeNullable(_$InsmetStateEnumMap, json['state']),
    stateDescription: json['stateDescription'] as String,
  );
}

Map<String, dynamic> _$WeatherForecastModelToJson(
        WeatherForecastModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'temperatureMax': instance.temperatureMax,
      'temperatureMin': instance.temperatureMin,
      'state': _$InsmetStateEnumMap[instance.state],
      'stateDescription': instance.stateDescription,
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

const _$InsmetStateEnumMap = {
  InsmetState.OccasionalShowers: 'OccasionalShowers',
  InsmetState.ScatteredShowers: 'ScatteredShowers',
  InsmetState.IsolatedShowers: 'IsolatedShowers',
  InsmetState.AfternoonShowers: 'AfternoonShowers',
  InsmetState.RainShowers: 'RainShowers',
  InsmetState.PartlyCloudy: 'PartlyCloudy',
  InsmetState.Cloudy: 'Cloudy',
  InsmetState.Sunny: 'Sunny',
  InsmetState.Storms: 'Storms',
  InsmetState.AfternoonStorms: 'AfternoonStorms',
  InsmetState.MorningScatteredShowers: 'MorningScatteredShowers',
  InsmetState.Winds: 'Winds',
};
