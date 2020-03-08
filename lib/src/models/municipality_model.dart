import 'package:json_annotation/json_annotation.dart';

part 'municipality_model.g.dart';

/// Class of represent a Municipality
@JsonSerializable()
class MunicipalityModel {
  final String name, nameCured;
  final double lat, lon;

  MunicipalityModel({this.name, this.lat, this.lon, this.nameCured});

  @override
  String toString() {
    var result = StringBuffer();
    result.write('Name: ${name}\n');
    result.write('Latitude: ${lat}\n');
    result.write('Longitude: ${lon}\n');
    result.write('Name Cured: ${nameCured}');
    return result.toString();
  }

  factory MunicipalityModel.fromJson(Map<String, dynamic> json) => _$MunicipalityModelFromJson(json);

  Map<String, dynamic> toJson() => _$MunicipalityModelToJson(this);
}
