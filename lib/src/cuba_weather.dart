import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/repositories/repositories.dart';

class CubaWeather {
  final insmetForecastRepository = InsmetForecastRepository();
  final insmetMarineForecastRepository = InsmetMarineForecastRepository();
  final insmetSourceRepository = InsmetSourceRepository();
  final insmetWeatherRepository = InsmetWeatherRepository();
  final municipalityRepository = MunicipalityRepository();
  final redcubaSourceRepository = RedCubaSourceRepository();
  final redCubaWeatherRepository = RedCubaWeatherRepository();

  Future<WeatherModel> get(String input) async {
    var weatherInsmet = await getInsmetWeather(input);
    var weatherRedCuba = await getRedCubaWeather(input);
    var weather = WeatherModel(
      cityName: weatherRedCuba.cityName,
      dateTime: weatherRedCuba.dt.date,
      humidity: weatherRedCuba.humidity,
      pressure: weatherRedCuba.pressure,
      windVelocity: weatherRedCuba.windVelocity,
      windDirection: weatherRedCuba.windDirection,
      windDirectionDescription: weatherRedCuba.windDirectionDescription,
      windDirectionDegree: weatherRedCuba.windDirectionDegree,
      windDirectionRadians: weatherRedCuba.windDirectionRadians,
      weatherForecast: weatherInsmet.weatherForecast,
      droughtStatus: weatherInsmet.droughtStatus,
      temperature: weatherRedCuba.temp.toInt(),
      temperatureMax: weatherInsmet.days.first.max,
      temperatureMin: weatherInsmet.days.first.min,
      state: weatherInsmet.days.first.state,
      stateDescription: weatherInsmet.days.first.description,
    );
    for (var i = 1; i < weatherInsmet.days.length; ++i) {
      var forecast = weatherInsmet.days[i];
      weather.addForecast(
          day: forecast.day,
          temperatureMax: forecast.max,
          temperatureMin: forecast.min,
          state: forecast.state,
          stateDescription: forecast.description);
    }
    return weather;
  }

  /// Method for obtain today forecast from Insmet.
  Future<InsmetForecastModel> getInsmetTodayForecast() async {
    return await insmetForecastRepository.getTodayForecast();
  }

  /// Method for obtain tomorrow forecast from Insmet.
  Future<InsmetForecastModel> getInsmetTomorrowForecast() async {
    return await insmetForecastRepository.getTomorrowForecast();
  }

  /// Method for obtain perspective forecast from Insmet.
  Future<InsmetForecastModel> getInsmetPerspectiveForecast() async {
    return await insmetForecastRepository.getPerspectiveForecast();
  }

  /// Method for obtain marine forecast from Insmet.
  Future<InsmetMarineForecastModel> getInsmetMarineForecast() async {
    return await insmetMarineForecastRepository.getMarineForecast();
  }

  /// Method that given a municipality searches the cuban municipalities to
  /// find the best match and returns the weather information.
  Future<InsmetWeatherModel> getInsmetWeather(String input) async {
    var municipality = getMunicipality(input, suggestion: true);
    var source = insmetSourceRepository.getSource(municipality);
    var weather = await insmetWeatherRepository.getWeather(source);
    weather.cityName = municipality.name;
    return weather;
  }

  /// Method that given a municipality searches the cuban municipalities to
  /// find the best match and returns the weather information.
  Future<RedCubaWeatherModel> getRedCubaWeather(String input) async {
    var municipality = getMunicipality(input, suggestion: true);
    var source = redcubaSourceRepository.getSource(municipality);
    var weather = await redCubaWeatherRepository.getWeather(source);
    return RedCubaWeatherModel(
      cityName: municipality.name,
      dt: RedCubaWeatherDateModel(
        date: weather.dt.date,
        timezoneType: weather.dt.timezoneType,
        timezone: weather.dt.timezone,
      ),
      temp: weather.temp,
      iconWeather: weather.iconWeather,
      descriptionWeather: weather.descriptionWeather,
      windVelocity: weather.windVelocity,
      windDirection: weather.windDirection,
      windDirectionDescription: weather.windDirectionDescription,
      windDirectionDegree: weather.windDirectionDegree,
      windDirectionRadians: weather.windDirectionRadians,
      pressure: weather.pressure,
      humidity: weather.humidity,
    );
  }

  /// Method that given a municipality of the user searches the cuban
  /// municipalities to find the best match and returns the municipality. The
  /// best match is considered as the cuban municipality of shorter length
  /// that contains the given municipality.
  MunicipalityModel getMunicipality(String query, {bool suggestion = false}) {
    var municipality = municipalityRepository.getMunicipality(query);
    if (suggestion && municipality == null) {
      municipality = municipalityRepository.getSuggestion(query);
    }
    return municipality;
  }

  /// Method that returns the best match of the given municipality with the
  /// cuban municipalities. The best match is calculated using the
  /// Damerau-Levenshtein distance.
  MunicipalityModel getMunicipalitySuggestion(String municipality) {
    return municipalityRepository.getSuggestion(municipality);
  }
}
