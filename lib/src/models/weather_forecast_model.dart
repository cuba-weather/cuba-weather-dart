import 'package:json_annotation/json_annotation.dart';

import 'package:cuba_weather_dart/cuba_weather_dart.dart';

part 'weather_forecast_model.g.dart';

@JsonSerializable()
class WeatherForecastModel {
  final int day;
  final int temperatureMax;
  final int temperatureMin;
  final InsmetState state;
  final String stateDescription;

  const WeatherForecastModel({
    this.day,
    this.temperatureMax,
    this.temperatureMin,
    this.state,
    this.stateDescription,
  });

  @override
  String toString() {
    return 'Day: $day, Maximum Temperature: $temperatureMax°C, '
        'Minimum Temperature: $temperatureMin°C, State: $state, '
        'State Description: $stateDescription';
  }

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) => _$WeatherForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherForecastModelToJson(this);
}
