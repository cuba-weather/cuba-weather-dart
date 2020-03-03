import 'dart:math';

class SourceModel {
  final String name, pattern;
  final double lat, lon;

  /// Class constructor
  const SourceModel({this.name, this.pattern, this.lat, this.lon});

  /// Method that return the distance between source and input lat and lon
  double distance(double lat, double lon) {
    return sqrt(pow(this.lat - lat, 2) + pow(this.lon - lon, 2));
  }
}
