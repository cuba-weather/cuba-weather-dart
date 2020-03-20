// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insmet_satellite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsmetSatelliteModel _$InsmetSatelliteModelFromJson(Map<String, dynamic> json) {
  return InsmetSatelliteModel(
    sourceOriginal: json['source'] as String,
    sourceUrl: json['sourceUrl'] as String,
    imageUrl: json['imageUrl'] as String,
    description: json['description'] as String,
    dataSource: json['dataSource'] as String,
  );
}

Map<String, dynamic> _$InsmetSatelliteModelToJson(
        InsmetSatelliteModel instance) =>
    <String, dynamic>{
      'sourceOriginal': instance.sourceOriginal,
      'sourceUrl': instance.sourceUrl,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'dataSource': instance.dataSource,
    };
