import 'package:html/parser.dart';

import 'package:cuba_weather_dart/src/models/models.dart';

/// Model class for mapping the json returned by the https://www.insmet.cu
/// weather API
class InsmetWeatherModel {
  String cityName;
  DateTime datetime;
  String weatherForecast;
  String droughtStatus;
  var days = List<InsmetWeatherDayModel>();

  /// Class constructor
  InsmetWeatherModel(List<String> data)
      : assert(data != null && data.length >= 24) {
    cityName = data[0];
    datetime = DateTime.parse(_parseDatetime(data[1]));
    weatherForecast = _parseForecast(data[2]);
    droughtStatus = _parseDrought(data[3]);
    for (var i = 4; i < data.length; i += 4) {
      days.add(InsmetWeatherDayModel(
        day: int.parse(data[i]),
        max: int.parse(data[i + 1]),
        min: int.parse(data[i + 2]),
        description: data[i + 3],
      ));
    }
  }

  @override
  String toString() {
    var result = StringBuffer();
    result.write('City Name: $cityName\n');
    result.write('Datetime Update: $datetime\n');
    for (var i = 0; i < days.length; ++i) {
      result.write('${days[i]}\n');
    }
    result.write('Today\'s Weather Forecast: $weatherForecast\n');
    result.write('Drought Status: $droughtStatus');
    return result.toString();
  }

  static String _parseDatetime(String input) {
    var inputParse = input.split('\n').join(' ').split(' ').reduce((v, e) {
      return e == null || e.isEmpty || e == ' ' ? v : '$v $e';
    });
    var datetimeDividedByWhiteSpace = inputParse.split(' ');
    var date = datetimeDividedByWhiteSpace[0];
    var time = datetimeDividedByWhiteSpace[1];
    var dateDividedBySlash = date.split('/');
    var timeDividedByColon = time.split(':');
    var day = _fillDigit(dateDividedBySlash[0]);
    var month = _fillDigit(dateDividedBySlash[1]);
    var year = _fillDigit(dateDividedBySlash[2]);
    var hour = _fillDigit(timeDividedByColon[0]);
    var minutes = _fillDigit(timeDividedByColon[1]);
    var seconds = _fillDigit(timeDividedByColon[2]);
    return '$year-$month-$day $hour:$minutes:$seconds';
  }

  static String _fillDigit(String input) {
    var inputInt = int.parse(input);
    return '${inputInt < 10 ? '0$inputInt' : inputInt}';
  }

  static String _parseForecast(String input) {
    var line = input.split('\n').join(' ').split(' ').reduce((v, e) {
      return e == null || e.isEmpty || e == ' ' || e == '\n' ? v : '$v $e';
    });
    line = line.replaceAll(RegExp(r"\s+\b|\b\s|\t|\t\t"), ' ');
    var document = parse(line);
    var result = parse(document.body.text).documentElement.text;
    result = result.split(' ').reduce((v, e) {
      return e == null || e.isEmpty || e == ' ' || e == '\n' ? v : '$v $e';
    });
    var buffer = StringBuffer();
    for (var i = 0; i < result.length - 1; ++i) {
      var char = result[i];
      var next = result[i + 1];
      buffer.write(char);
      var is_symbol = char == '.' ||
          char == ',' ||
          char == ':' ||
          char == ';' ||
          char == '?' ||
          char == '!';
      if (is_symbol && next != ' ') {
        buffer.write(' ');
      }
    }
    return buffer.toString();
  }

  static String _parseDrought(String input) {
    var line = input.split('\n').join(' ').split(' ').reduce((v, e) {
      return e == null || e.isEmpty || e == ' ' || e == '\n' ? v : '$v $e';
    });
    line = line.replaceAll(RegExp(r"\s+\b|\b\s|\t|\t\t"), ' ');
    var document = parse(line);
    var result = parse(document.body.text).documentElement.text;
    result = result.split(' ').reduce((v, e) {
      return e == null || e.isEmpty || e == ' ' || e == '\n' ? v : '$v $e';
    });
    result = result.substring(0, result.lastIndexOf('ver'));
    var buffer = StringBuffer();
    for (var i = 0; i < result.length - 1; ++i) {
      var char = result[i];
      var next = result[i + 1];
      buffer.write(char);
      var is_symbol = char == '.' ||
          char == ',' ||
          char == ':' ||
          char == ';' ||
          char == '?' ||
          char == '!';
      if (is_symbol && next != ' ') {
        buffer.write(' ');
      }
    }
    buffer.write('.');
    return buffer.toString();
  }
}
