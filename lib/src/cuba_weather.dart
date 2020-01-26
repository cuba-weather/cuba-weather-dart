import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/repositories/repositories.dart';

class CubaWeather {
  final weatherRepository = WeatherRepository();

  Future<WeatherModel> get(String input) async {
    return await weatherRepository.getWeather(input);
  }
}
