import 'package:cuba_weather_insmet_dart/cuba_weather_insmet_dart.dart';

class WeatherForecastModel {
  final int day;
  final int temperatureMax;
  final int temperatureMin;
  final State state;

  const WeatherForecastModel({
    this.day,
    this.temperatureMax,
    this.temperatureMin,
    this.state,
  });

  @override
  String toString() {
    return 'Day: $day, Maximum Temperature: $temperatureMax°C, '
        'Minimum Temperature: $temperatureMin°C, State: $state';
  }
}
