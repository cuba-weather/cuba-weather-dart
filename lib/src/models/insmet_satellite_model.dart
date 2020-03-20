import 'package:json_annotation/json_annotation.dart';

part 'insmet_satellite_model.g.dart';

@JsonSerializable()
class InsmetSatelliteModel {
  String sourceOriginal;
  String sourceUrl;
  String imageUrl;
  String description;
  String dataSource;

  InsmetSatelliteModel({
    this.sourceOriginal,
    this.sourceUrl,
    this.imageUrl,
    this.description,
    this.dataSource,
  });

  @override
  String toString() {
    var result = StringBuffer();
    result.write('Source: $sourceOriginal\n');
    result.write('Source Url: $sourceUrl\n');
    result.write('Image Url: $imageUrl\n');
    result.write('Description: $description');
    result.write('DataSource: $dataSource');
    return result.toString();
  }

  factory InsmetSatelliteModel.fromJson(Map<String, dynamic> json) =>
      _$InsmetSatelliteModelFromJson(json);

  Map<String, dynamic> toJson() => _$InsmetSatelliteModelToJson(this);
}
