class InsmetForecastModel {
  String centerName;
  String forecastName;
  String forecastDate;
  String forecastTitle;
  String forecastText;
  String dataSource;
  String imageUrl;
  var authors = List<String>();

  InsmetForecastModel({
    this.centerName,
    this.forecastName,
    this.forecastDate,
    this.forecastTitle,
    this.forecastText,
    this.dataSource,
    this.imageUrl,
    this.authors,
  });

  @override
  String toString() {
    var result = StringBuffer();
    result.write('Center Name: $centerName\n');
    result.write('Forecast Name: $forecastName\n');
    result.write('Forecast Date: $forecastDate\n');
    result.write('Forecast Title: $forecastTitle\n');
    result.write('Forecast Text: $forecastText\n');
    result.write('Data Source: $dataSource\n');
    result.write('Image Url: $imageUrl\n');
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
