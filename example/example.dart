import 'dart:io';

import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  print('Insert municipality:');
  var input = stdin.readLineSync();
  var cubaWeather = CubaWeather();
  cubaWeather.get(input).then((weather) {
    print(weather);
  });
}
