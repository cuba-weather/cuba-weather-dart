import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

part 'source_model.g.dart';

@JsonSerializable()
class SourceModel {
  final String name, pattern;
  final double lat, lon;

  /// Class constructor
  const SourceModel({this.name, this.pattern, this.lat, this.lon});

  /// Method that return the distance between source and input lat and lon
  double distance(double lat, double lon) {
    return sqrt(pow(this.lat - lat, 2) + pow(this.lon - lon, 2));
  }

  factory SourceModel.fromJson(Map<String, dynamic> json) => _$SourceModelFromJson(json);

  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}
