import 'package:json_annotation/json_annotation.dart';

part 'redcuba_weather_date_model.g.dart';

/// Model class for mapping part of the json returned by the
/// https://www.redcuba.cu weather API
@JsonSerializable()
class RedCubaWeatherDateModel {
  DateTime date;
  double timezoneType;
  String timezone;

  /// Class constructor
  RedCubaWeatherDateModel({this.date, this.timezoneType, this.timezone});

  /// Static method that returns an instance of the class from the json provided
  static RedCubaWeatherDateModel parse(dynamic json) {
    return RedCubaWeatherDateModel(
      date: DateTime.parse(json['date']),
      timezoneType: double.parse(json['timezone_type'].toString()),
      timezone: json['timezone'],
    );
  }

  factory RedCubaWeatherDateModel.fromJson(Map<String, dynamic> json) => _$RedCubaWeatherDateModelFromJson(json);

  Map<String, dynamic> toJson() => _$RedCubaWeatherDateModelToJson(this);
}
