/// Model class for mapping part of the json returned by the
/// https://www.redcuba.cu weather API
class RedCubaWeatherDateModel {
  DateTime date;
  double timezoneType;
  String timezone;

  /// Class constructor
  RedCubaWeatherDateModel({this.date, this.timezoneType, this.timezone});

  /// Static method that returns an instance of the class from the json provided
  static RedCubaWeatherDateModel fromJson(dynamic json) {
    return RedCubaWeatherDateModel(
      date: DateTime.parse(json['date']),
      timezoneType: double.parse(json['timezone_type'].toString()),
      timezone: json['timezone'],
    );
  }
}
