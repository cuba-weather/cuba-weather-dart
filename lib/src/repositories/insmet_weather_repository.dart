import 'dart:async';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/models/models.dart';

/// Class to provide the functionality of obtaining weather data
class InsmetWeatherRepository {
  final weatherApiClient = InsmetWeatherApiClient();

  /// Method that given a source returns the weather data
  Future<InsmetWeatherModel> getWeather(SourceModel source) async {
    return await weatherApiClient.fetchWeather(source.pattern);
  }
}
