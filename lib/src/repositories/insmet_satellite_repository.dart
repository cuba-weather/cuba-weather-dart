import 'dart:developer';
import 'dart:io';

import 'package:cuba_weather_dart/src/utils/utils.dart';
import 'package:cuba_weather_dart/src/models/models.dart';

class InsmetSatelliteRepository {
  var frameNumbers = 5;

  Future<InsmetSatelliteModel>
      getSatelliteWisconsinMadisonLatestEastir() async {
    final InsmetSatelliteModel satellite = InsmetSatelliteModel();

    try {
      satellite.imageUrl =
          'http://www.insmet.cu/asp/genesis.asp?TB0=Satelite&TB1=/SATELITE/TMP4/&TB2=$frameNumbers';
      satellite.dataSource = 'www.insmet.cu';
      satellite.sourceOriginal = 'University of Wisconsin-Madison';
      satellite.sourceUrl = 'http://www.ssec.wisc.edu/';
      satellite.description = 'N/A';

      return satellite;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }

  Future<InsmetSatelliteModel>
      getSatelliteWisconsinMadisonLatestEastvis() async {
    final InsmetSatelliteModel satellite = InsmetSatelliteModel();

    try {
      satellite.imageUrl =
          'http://www.insmet.cu/asp/genesis.asp?TB0=Satelite&TB1=/SATELITE/TMP2/&TB2=$frameNumbers';
      satellite.dataSource = 'www.insmet.cu';
      satellite.sourceOriginal = 'University of Wisconsin-Madison';
      satellite.sourceUrl = 'http://www.ssec.wisc.edu/';
      satellite.description = 'N/A';

      return satellite;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }

  Future<InsmetSatelliteModel> getSatelliteWisconsinMadisonGOESGSFC() async {
    final InsmetSatelliteModel satellite = InsmetSatelliteModel();

    try {
      satellite.imageUrl =
          'http://www.insmet.cu/asp/genesis.asp?TB0=Satelite&TB1=/SATELITE/TMP/&TB2=$frameNumbers';
      satellite.dataSource = 'www.insmet.cu';
      satellite.sourceOriginal = 'University of Wisconsin-Madison';
      satellite.sourceUrl = 'http://www.ssec.wisc.edu/';
      satellite.description = 'N/A';

      return satellite;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }

  Future<InsmetSatelliteModel>
      getSatelliteMarshallSpaceFlightCenterGOESMSFC() async {
    final InsmetSatelliteModel satellite = InsmetSatelliteModel();

    try {
      satellite.imageUrl =
          'http://www.insmet.cu/asp/genesis.asp?TB0=Satelite&TB1=/SATELITE/TMP12/&TB2=5';
      satellite.dataSource = 'www.insmet.cu';
      satellite.sourceOriginal = 'George C. Marshall Space Flight Center';
      satellite.sourceUrl = 'https://weather.msfc.nasa.gov/GOES/';
      satellite.description = 'N/A';

      return satellite;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }

  Future<InsmetSatelliteModel>
      getSatelliteWeatherUndergroundIntellicast() async {
    final InsmetSatelliteModel satellite = InsmetSatelliteModel();

    try {
      satellite.imageUrl =
          'http://www.insmet.cu/asp/genesis.asp?TB0=Satelite&TB1=/SATELITE/TMP3/&TB2=5';
      satellite.dataSource = 'www.insmet.cu';
      satellite.sourceOriginal = 'Weather Underground - Intellicast';
      satellite.sourceUrl = 'http://images.intellicast.com';
      satellite.description = 'N/A';

      return satellite;
    } on SocketException catch (e) {
      log(e.toString());
      throw BadRequestException(e.toString());
    } catch (e) {
      log(e.toString());
      throw ParseException(e.toString());
    }
  }
}
