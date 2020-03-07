import 'dart:developer';
import 'dart:io';

import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart';

import 'package:cuba_weather_dart/src/utils/utils.dart';
import 'package:cuba_weather_dart/src/models/models.dart';

class InsmetForecastRepository {
  Future<InsmetForecastModel> getTodayForecast() async {
    var forecast = InsmetForecastModel();
    forecast.authors = List<String>();
    try {
      var url = 'http://www.insmet.cu/asp/link.asp?PRONOSTICO';
      var response = await get(url);
      if (response.statusCode != 200) {
        throw BadRequestException(response.body);
      }
      var document = parse(response.body);
      var tabs = document.getElementsByTagName('table.contenidoPagina');
      var author1Element = document.getElementById('name1');
      if (author1Element != null) {
        forecast.authors.add(author1Element.text);
      }
      var author2Element = document.getElementById('name2');
      if (author2Element != null) {
        forecast.authors.add(author2Element.text);
      }
      var leading = tabs[0].outerHtml.toString();
      var index = leading.indexOf('<b>');
      leading = leading.replaceRange(0, index, '');
      index = leading.indexOf('<br>');
      forecast.centerName = leading.substring(3, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      forecast.forecastName = leading.substring(0, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      forecast.forecastDate = leading.substring(0, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<i>');
      leading = leading.replaceRange(0, index + 3, '');
      index = leading.indexOf('</i>');
      forecast.forecastTitle = leading.substring(0, index);
      forecast.forecastTitle = forecast.forecastTitle.replaceAll("", "...");
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('</p>');
      forecast.forecastText = leading.substring(0, index);
      forecast.forecastText = forecast.forecastText.replaceAll("<br>", "\n");
      forecast.dataSource = 'www.insmet.cu';
      return forecast;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }

  Future<InsmetForecastModel> getTomorrowForecast() async {
    var forecast = InsmetForecastModel();
    forecast.authors = List<String>();
    try {
      var url =
          'http://www.insmet.cu/asp/genesis.asp?TB0=PLANTILLAS&TB1=PTM&TB2=/Pronostico/Ptm.txt';
      var response = await get(url);
      if (response.statusCode != 200) {
        throw BadRequestException(response.body);
      }
      var document = parse(response.body);
      var tabs = document.getElementsByTagName('table.contenidoPagina');
      var author1Element = document.getElementById('name1');
      if (author1Element != null) {
        forecast.authors.add(author1Element.text);
      }
      var author2Element = document.getElementById('name2');
      if (author2Element != null) {
        forecast.authors.add(author2Element.text);
      }
      var leading = tabs[0].outerHtml.toString();
      var index = leading.indexOf('<b>');
      leading = leading.replaceRange(0, index, '');
      index = leading.indexOf('<br>');
      forecast.centerName = leading.substring(3, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      forecast.forecastName = leading.substring(0, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      forecast.forecastDate = leading.substring(0, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<i>');
      leading = leading.replaceRange(0, index + 3, '');
      index = leading.indexOf('</i>');
      forecast.forecastTitle = leading.substring(0, index);
      forecast.forecastTitle = forecast.forecastTitle.replaceAll("", "...");
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('</p>');
      forecast.forecastText = leading.substring(0, index);
      forecast.forecastText = forecast.forecastText.replaceAll("<br>", "\n");
      forecast.dataSource = 'www.insmet.cu';
      return forecast;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }

  Future<InsmetForecastModel> getPerspectiveForecast() async {
    var forecast = InsmetForecastModel();
    forecast.authors = List<String>();
    forecast.forecastTitle = "";
    try {
      var url =
          'http://www.insmet.cu/asp/genesis.asp?TB0=PLANTILLAS&TB1=PERSPECTIVASTT';
      var response = await get(url);
      if (response.statusCode != 200) {
        throw BadRequestException(response.body);
      }
      var document = parse(response.body);
      var tabs = document.getElementsByTagName('td.contenidoPagina');
      var leading = tabs[3].outerHtml.toString();
      var index = leading.indexOf('<b>');
      leading = leading.replaceRange(0, index + 3, '');
      index = leading.indexOf('<br>');
      forecast.forecastName = leading.substring(0, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      forecast.centerName = leading.substring(0, index);
      leading = leading.replaceRange(0, index + 4, '');
      index = leading.indexOf('<br>');
      forecast.forecastDate = leading.substring(0, index);
      String forecastText = tabs[5].innerHtml.toString();
      index = forecastText.indexOf('>');
      forecastText = forecastText.replaceRange(0, index + 1, '');
      index = forecastText.indexOf('</p>');
      forecast.forecastText = forecastText.substring(0, index);
      forecast.forecastText = forecast.forecastText.replaceAll("<br>", "\n");
      var tableAuthors = document.getElementsByTagName('table.contenidoPagina');
      var tableAuthors1 = tableAuthors[0].getElementsByTagName('td');
      Element author1Element;
      try {
        author1Element = tableAuthors1[2];
        if (author1Element != null) {
          forecast.authors.add(author1Element.text);
        }
      } catch (e) {}
      Element author2Element;
      try {
        author2Element = tableAuthors1[3];
        if (author2Element != null) {
          forecast.authors.add(author2Element.text);
        }
      } catch (e) {}
      forecast.dataSource = 'www.insmet.cu';
      var hour = DateTime.now().hour;
      if (hour >= 4 && hour < 12) {
        forecast.imageUrl = 'http://www.insmet.cu/Pronostico/tv06.jpg';
      } else if (hour >= 12 && hour < 16) {
        forecast.imageUrl = 'http://www.insmet.cu/Pronostico/tv12.jpg';
      } else {
        forecast.imageUrl = 'http://www.insmet.cu/Pronostico/tv18.jpg';
      }
      return forecast;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }
}
