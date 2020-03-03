class InsmetMarineForecastModel {
  String centerName;
  String forecastName;
  String forecastDate;
  String validSince;
  String validUntil;
  String significantSituation;
  String dataSource;
  String areaGulfOfMexico;
  String areaRest;
  var authors = List<String>();

  InsmetMarineForecastModel({
    this.centerName,
    this.forecastName,
    this.forecastDate,
    this.significantSituation,
    this.dataSource,
    this.areaGulfOfMexico,
    this.areaRest,
    this.validSince,
    this.validUntil,
    this.authors,
  });

  @override
  String toString() {
    var result = StringBuffer();
    result.write('Center Name: $centerName\n');
    result.write('Forecast Name: $forecastName\n');
    result.write('Forecast Date: $forecastDate\n');
    result.write('Valid Since: $validSince\n');
    result.write('Valid Until: $validUntil\n');
    result.write('Significant Situation: $significantSituation\n');
    result.write('Area Gulf Of Mexico: $areaGulfOfMexico\n');
    result.write('Area Rest: $areaRest\n');
    result.write('Data Source: $dataSource\n');
    result.write('Authors: ');
    for (var i = 0; i < authors.length; ++i) {
      result.write('${authors[i]}');
      if (i + 1 < authors.length) {
        result.write(', ');
      }
    }
    return result.toString();
  }
}
