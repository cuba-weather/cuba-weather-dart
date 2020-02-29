import 'package:cuba_weather_insmet_dart/cuba_weather_insmet_dart.dart';
import 'package:cuba_weather_redcuba_dart/cuba_weather_redcuba_dart.dart';

import 'package:cuba_weather_dart/src/models/models.dart';

class WeatherModel {
  final String cityName;
  final int temperature;
  final int temperatureMax;
  final int temperatureMin;
  final DateTime dateTime;
  final double pressure;
  final double humidity;
  final double windVelocity;
  final CardinalPoint windDirection;
  final String windDirectionDescription;
  final int windDirectionDegree;
  final double windDirectionRadians;
  final String weatherForecast;
  final String droughtStatus;
  final State state;
  final String stateDescription;
  var forecasts = List<WeatherForecastModel>();

  WeatherModel({
    this.cityName,
    this.temperature,
    this.temperatureMax,
    this.temperatureMin,
    this.dateTime,
    this.pressure,
    this.humidity,
    this.windVelocity,
    this.windDirection,
    this.windDirectionDescription,
    this.windDirectionDegree,
    this.windDirectionRadians,
    this.weatherForecast,
    this.droughtStatus,
    this.state,
    this.stateDescription,
  });

  void addForecast({
    int day,
    int temperatureMax,
    int temperatureMin,
    State state,
    String stateDescription
  }) {
    forecasts.add(WeatherForecastModel(
      day: day,
      temperatureMax: temperatureMax,
      temperatureMin: temperatureMin,
      state: state,
      stateDescription: stateDescription,
    ));
  }

  @override
  String toString() {
    var result = StringBuffer();
    result.write('City Name: $cityName\n');
    result.write('Temperature: $temperature°C\n');
    result.write('Temperature Max: $temperatureMax°C\n');
    result.write('Temperature Min: $temperatureMin°C\n');
    result.write('Datetime Update: $dateTime\n');
    result.write('Humidity: $humidity%\n');
    result.write('Pressure: $pressure hPa\n');
    result.write('Wind Velocity: $windVelocity Km/h\n');
    result.write('Wind Direction: $windDirection\n');
    result.write('Wind Direction Degree: ${windDirectionDegree}\n');
    result.write('Wind Direction Radians: ${windDirectionRadians}\n');
    result.write('Today\'s Weather Forecast: $weatherForecast\n');
    result.write('Drought Status: $droughtStatus\n');
    result.write('State: $state\n');
    result.write('State Description: $stateDescription\n');
    for (var i = 0; i < forecasts.length; ++i) {
      result.write('${forecasts[i]}');
      if (i + 1 < forecasts.length) {
        result.write('\n');
      }
    }
    return result.toString();
  }
}
