import 'dart:developer';

import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/utils/utils.dart';
import 'package:http/http.dart';
import 'package:xml/xml.dart';

/// Class to provide the functionality of making API requests
class InsmetWeatherApiClient {
  static const url = 'http://www.insmet.cu/asp/genesis.asp?TB0=RSSFEED';
  static const droughtStatus = 'Estado de la Sequía.';

  /// Method to make the request GET to API
  Future<InsmetWeatherModel> fetchWeather(String location) async {
    final resp = await get(url);
    if (resp.statusCode != 200) {
      throw BadRequestException(resp.body);
    }
    var doc = parse(resp.body);
    var data = List<String>();
    data.add(location);
    var firstItem = doc.findAllElements('item').first;
    try {
      data.add(firstItem.findElements('pubDate').first.text.trim());
      data.add(firstItem.findElements('description').first.text.trim());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
    for (var item in doc.findAllElements('item')) {
      if (item.findElements('title').first.text == droughtStatus) {
        try {
          data.add(item.findElements('description').first.text.trim());
        } catch (e) {
          log(e.toString());
          throw ParseException(e.toString());
        }
      }
    }
    for (var item in doc.findAllElements('item')) {
      if (item.findElements('title').first.text == location) {
        try {
          var text = item.findElements('description').first.text.trim();
          var index = text.indexOf('<table>');
          text = text.replaceRange(0, index, '');
          index = text.indexOf('</table>');
          text = text.replaceRange(index + 8, text.length, '');
          var desc = parse(text);
          for (var td in desc.findAllElements('td')) {
            data.add(td.text.trim());
          }
          return InsmetWeatherModel(data);
        } catch (e) {
          log(e.toString());
          throw ParseException(e.toString());
        }
      }
    }
    throw InvalidSourceException('Invalid source');
  }
}
