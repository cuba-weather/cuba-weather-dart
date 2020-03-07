import 'dart:developer';
import 'dart:io';

import 'package:html/parser.dart' show parse;
import 'package:http/http.dart';

import 'package:cuba_weather_dart/src/utils/utils.dart';
import 'package:cuba_weather_dart/src/models/models.dart';

class InsmetMarineForecastRepository {
  Future<InsmetMarineForecastModel> getMarineForecast() async {
    var forecast = InsmetMarineForecastModel();
    forecast.authors = List<String>();
    forecast.centerName =
        "CENTRO DE METEOROLOGÍA MARINA. INSTITUTO DE METEOROLOGÍA (C.I.T.M.A)";
    forecast.forecastName =
        "PRONÓSTICO HIDROMETEOROLÓGICO MARINO PARA LOS MARES ADYACENTES A CUBA";
    try {
      var url =
          'http://www.insmet.cu/asp/genesis.asp?TB0=PLANTILLAS&TB1=MAR&TB2=/Pronostico/Marady.txt';
      var response = await get(url);
      if (response.statusCode != 200) {
        throw BadRequestException(response.body);
      }
      var document = parse(response.body);
      var tabs = document.getElementsByTagName('table.contenidoPagina');
      var leading = tabs[0].outerHtml.toString();
      var index = leading.indexOf('VÁLIDO DESDE');
      leading = leading.replaceRange(0, index, '');
      index = leading.indexOf('HASTA');
      forecast.validSince = leading.substring(0, index).trim();
      leading = leading.replaceRange(0, index, '');
      index = leading.indexOf('<br>');
      forecast.validUntil = leading.substring(0, index);
      leading = leading.replaceRange(0, index, '');
      index = leading.indexOf('<b>');
      leading = leading.replaceRange(0, index + 3, '');
      index = leading.indexOf('<table>');
      forecast.significantSituation = leading.substring(0, index);
      forecast.significantSituation =
          forecast.significantSituation.replaceAll("<br>", "\n");
      forecast.significantSituation =
          forecast.significantSituation.replaceAll("</b>", "");
      forecast.significantSituation =
          forecast.significantSituation.replaceAll("</td>", "");
      forecast.significantSituation =
          forecast.significantSituation.replaceAll("</tr>", "");
      forecast.significantSituation =
          forecast.significantSituation.replaceAll("</tbody>", "");
      forecast.significantSituation =
          forecast.significantSituation.replaceAll("</table>", "");
      forecast.significantSituation = forecast.significantSituation
          .replaceAll("SITUACIÓN METEOROLÓGICA SIGNIFICATIVA:", "");
      index = leading.indexOf('contenidopagina');
      leading = leading.replaceRange(0, index + 20, '');
      index = leading.indexOf('<table>');
      forecast.areaGulfOfMexico = leading.substring(0, index);
      forecast.areaGulfOfMexico =
          forecast.areaGulfOfMexico.replaceAll("<br>", "\n");
      forecast.areaGulfOfMexico =
          forecast.areaGulfOfMexico.replaceAll("</b>", "");
      forecast.areaGulfOfMexico =
          forecast.areaGulfOfMexico.replaceAll("</td>", "");
      forecast.areaGulfOfMexico =
          forecast.areaGulfOfMexico.replaceAll("</tr>", "");
      forecast.areaGulfOfMexico =
          forecast.areaGulfOfMexico.replaceAll("</tbody>", "");
      forecast.areaGulfOfMexico =
          forecast.areaGulfOfMexico.replaceAll("</table>", "");
      forecast.areaGulfOfMexico =
          forecast.areaGulfOfMexico.replaceAll("GOLFO DE MÉXICO:", "");
      leading = leading.replaceRange(0, index, '');
      index = leading.indexOf('contenidopagina');
      leading = leading.replaceRange(0, index + 20, '');
      index = leading.indexOf('Pronosticador');
      forecast.areaRest = leading.substring(0, index);
      forecast.areaRest = forecast.areaRest.replaceAll("<br>", "\n");
      forecast.areaRest = forecast.areaRest.replaceAll("</b>", "");
      forecast.areaRest = forecast.areaRest.replaceAll("</td>", "");
      forecast.areaRest = forecast.areaRest.replaceAll("</tr>", "");
      forecast.areaRest = forecast.areaRest.replaceAll("</tbody>", "");
      forecast.areaRest = forecast.areaRest.replaceAll("</table>", "");
      forecast.areaRest = forecast.areaRest
          .replaceAll("PUERTO RICO Y LA FLORIDA HASTA LAS BERMUDAS:", "");
      leading = leading.replaceRange(0, index + 14, '');
      leading = leading.replaceAll("<br>", "");
      leading = leading.replaceAll("</b>", "");
      leading = leading.replaceAll("</td>", "");
      leading = leading.replaceAll("</tr>", "");
      leading = leading.replaceAll("</tbody>", "");
      leading = leading.replaceAll("</table>", "");
      List<String> list = leading.split('/');
      for (var item in list) {
        forecast.authors.add(item.trim());
      }
      forecast.forecastDate = forecast.validSince + " " + forecast.validUntil;
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
}
