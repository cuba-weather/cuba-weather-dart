// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insmet_weather_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsmetWeatherDayModel _$InsmetWeatherDayModelFromJson(
    Map<String, dynamic> json) {
  return InsmetWeatherDayModel(
    day: json['day'] as int,
    max: json['max'] as int,
    min: json['min'] as int,
    description: json['description'] as String,
  )..state = _$enumDecodeNullable(_$InsmetStateEnumMap, json['state']);
}

Map<String, dynamic> _$InsmetWeatherDayModelToJson(
        InsmetWeatherDayModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'max': instance.max,
      'min': instance.min,
      'state': _$InsmetStateEnumMap[instance.state],
      'description': instance.description,
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
