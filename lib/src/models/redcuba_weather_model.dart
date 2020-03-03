import 'dart:math';

import 'package:cuba_weather_dart/src/models/models.dart';

/// Model class for mapping the json returned by the https://www.redcuba.cu
/// weather API
class RedCubaWeatherModel {
  String cityName;
  RedCubaWeatherDateModel dt;
  double temp;
  double pressure;
  double humidity;
  String iconWeather;
  double windVelocity;
  CardinalPoint windDirection;
  String windDirectionDescription;
  int windDirectionDegree;
  double windDirectionRadians;
  String descriptionWeather;

  /// Class constructor
  RedCubaWeatherModel({
    this.cityName,
    this.dt,
    this.temp,
    this.pressure,
    this.humidity,
    this.iconWeather,
    this.windVelocity,
    this.windDirection,
    this.windDirectionDescription,
    this.windDirectionDegree,
    this.windDirectionRadians,
    this.descriptionWeather,
  });

  /// Static method that returns an instance of the class from the json provided
  static RedCubaWeatherModel fromJson(dynamic json) {
    final data = json['data'];
    var windString = data['windstring'];
    var beginIndex = windString.indexOf('Velocidad') + 9;
    var endIndex = windString.indexOf('m/s');
    var windVelocityString = windString.substring(beginIndex, endIndex).trim();
    var windVelocity = double.parse(windVelocityString) * 3.6;
    beginIndex = endIndex + 3;
    endIndex = windString.length;
    var windDirectionDesc = windString.substring(beginIndex, endIndex).trim();
    var windDegree = _parseWindDegree(windDirectionDesc);
    return RedCubaWeatherModel(
      cityName: data['cityName'],
      dt: RedCubaWeatherDateModel.fromJson(data['dt']),
      temp: double.parse(data['temp'].toString()),
      pressure: double.parse(data['pressure'].toString()),
      humidity: double.parse(data['humidity'].toString()),
      iconWeather: data['iconWeather'],
      windVelocity: windVelocity,
      windDirection: _parseDirection(windDirectionDesc),
      windDirectionDegree: windDegree,
      windDirectionDescription: windDirectionDesc,
      windDirectionRadians: _parseWindRadians(windDegree),
      descriptionWeather: data['descriptionWeather'],
    );
  }

  @override
  String toString() {
    var result = StringBuffer();
    result.write('City Name: ${cityName}\n');
    result.write('Temperature: ${temp}°C\n');
    result.write('Timestamp: ${dt.date}\n');
    result.write('Humidity: ${humidity}%\n');
    result.write('Pressure: ${pressure} hpa\n');
    result.write('Wind Velocity: ${windVelocity} Km/h\n');
    result.write('Wind Direction: ${windDirection}\n');
    result.write('Wind Direction Description: ${windDirectionDescription}\n');
    result.write('Wind Direction Degree: ${windDirectionDegree}\n');
    result.write('Wind Direction Radians: ${windDirectionRadians}\n');
    result.write('Description: ${descriptionWeather}\n');
    result.write('Image Link: ${iconWeather}');
    return result.toString();
  }

  static double _parseWindRadians(int degree) {
    double temp = degree * pi;
    double temp2 = temp / 180;
    return temp2;
  }

  static int _parseWindDegree(String input) {
    var degree = input.split(' ')[1].substring(1);
    return int.parse(degree);
  }

  static CardinalPoint _parseDirection(String input) {
    var direction = input.split(' ')[0].toLowerCase().trim();
    switch (direction) {
      case 'norte-noreste':
        return CardinalPoint.North_Northeast;
      case 'noreste':
        return CardinalPoint.Northeast;
      case 'este-noreste':
        return CardinalPoint.East_Northeast;
      case 'este':
        return CardinalPoint.East;
      case 'este-sureste':
        return CardinalPoint.East_Southeast;
      case 'sureste':
        return CardinalPoint.Southeast;
      case 'sur-sureste':
        return CardinalPoint.South_Southeast;
      case 'sur':
        return CardinalPoint.South;
      case 'sur-suroeste':
        return CardinalPoint.South_Southwest;
      case 'suroeste':
        return CardinalPoint.Southwest;
      case 'oeste-suroeste':
        return CardinalPoint.West_Southwest;
      case 'oeste':
        return CardinalPoint.West;
      case 'oeste-noroeste':
        return CardinalPoint.West_Northwest;
      case 'noroeste':
        return CardinalPoint.Northwest;
      case 'norte-noroeste':
        return CardinalPoint.North_Northwest;
      case 'norte':
        return CardinalPoint.North;
      default:
        return CardinalPoint.North;
    }
  }
}
