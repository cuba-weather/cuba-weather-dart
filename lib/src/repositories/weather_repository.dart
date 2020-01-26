import 'package:cuba_weather_insmet_dart/cuba_weather_insmet_dart.dart'
    as insMet;
import 'package:cuba_weather_redcuba_dart/cuba_weather_redcuba_dart.dart'
    as redCuba;

import 'package:cuba_weather_dart/src/models/models.dart';

class WeatherRepository {
  final cubaWeatherInsMet = insMet.CubaWeatherInsMet();
  final cubaWeatherRedCuba = redCuba.CubaWeatherRedCuba();

  Future<WeatherModel> getWeather(String input) async {
    var weatherInsMet = await cubaWeatherInsMet.get(input);
    var weatherRedCuba = await cubaWeatherRedCuba.get(input);
    var weather = WeatherModel(
      cityName: weatherRedCuba.cityName,
      dateTime: weatherRedCuba.dt.date,
      humidity: weatherRedCuba.humidity,
      pressure: weatherRedCuba.pressure,
      winds: weatherRedCuba.windstring,
      temperature: weatherRedCuba.temp.toInt(),
      temperatureMax: weatherInsMet.days.first.max,
      temperatureMin: weatherInsMet.days.first.min,
      state: weatherInsMet.days.first.state,
    );
    for (var i = 1; i < weatherInsMet.days.length; ++i) {
      var forecast = weatherInsMet.days[i];
      weather.addForecast(
        day: forecast.day,
        temperatureMax: forecast.max,
        temperatureMin: forecast.min,
        state: forecast.state,
      );
    }
    return weather;
  }
}
