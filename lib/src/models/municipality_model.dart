/// Class of represent a Municipality
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
}
