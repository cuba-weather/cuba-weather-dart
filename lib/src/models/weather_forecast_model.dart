import 'package:cuba_weather_insmet_dart/cuba_weather_insmet_dart.dart';

class WeatherForecastModel {
  final int day;
  final int temperatureMax;
  final int temperatureMin;
  final State state;
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
}
