import 'package:cuba_weather_dart/src/models/models.dart';

/// Model class for mapping part of the json returned by the
/// https://www.insmet.cu weather API
class InsmetWeatherDayModel {
  int day;
  int max;
  int min;
  InsmetState state;
  String description;

  /// Class constructor
  InsmetWeatherDayModel({this.day, this.max, this.min, this.description}) {
    state = dictStringToState[description];
  }

  @override
  String toString() {
    return 'Day: $day, Maximum Temperature: $max°C, '
        'Minimum Temperature: $min°C, State: $state, Description: $description';
  }
}

final dictStringToState = {
  'Lluvias Ocasionales': InsmetState.OccasionalShowers,
  'Lluvias dispersas': InsmetState.ScatteredShowers,
  'Lluvias aisladas': InsmetState.IsolatedShowers,
  'Lluvias en la Tarde': InsmetState.AfternoonShowers,
  'Chubascos': InsmetState.RainShowers,
  'Parcialmente Nublado': InsmetState.PartlyCloudy,
  'Nublado': InsmetState.Cloudy,
  'Soleado': InsmetState.Sunny,
  'Tormentas': InsmetState.Storms,
  'Tormentas en la Tarde': InsmetState.AfternoonStorms,
  'Lluvias dispersa en la mañana': InsmetState.MorningScatteredShowers
};
