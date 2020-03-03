import 'dart:convert';

import 'package:http/http.dart';

import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/utils/utils.dart';

/// Class to provide the functionality of making API requests
class RedCubaWeatherApiClient {
  static const baseUrl = 'https://www.redcuba.cu/api/weather_get_summary/';

  /// Method to make the request GET to API
  Future<RedCubaWeatherModel> fetchWeather(String location) async {
    final url = baseUrl + location;
    final resp = await get(url);
    if (resp.statusCode == 404) {
      throw InvalidSourceException('Source is invalid');
    } else if (resp.statusCode != 200) {
      throw BadRequestException('Bad request');
    }
    final json = jsonDecode(resp.body);
    return RedCubaWeatherModel.fromJson(json);
  }
}
