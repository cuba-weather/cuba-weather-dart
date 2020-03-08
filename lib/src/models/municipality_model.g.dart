// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MunicipalityModel _$MunicipalityModelFromJson(Map<String, dynamic> json) {
  return MunicipalityModel(
    name: json['name'] as String,
    lat: (json['lat'] as num)?.toDouble(),
    lon: (json['lon'] as num)?.toDouble(),
    nameCured: json['nameCured'] as String,
  );
}

Map<String, dynamic> _$MunicipalityModelToJson(MunicipalityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nameCured': instance.nameCured,
      'lat': instance.lat,
      'lon': instance.lon,
    };
