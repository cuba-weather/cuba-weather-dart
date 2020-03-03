import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/models/models.dart';

/// Class to provide the functionality of searching for a source
class RedCubaSourceRepository {
  /// Method that returns the source closest to the given municipality.
  SourceModel getSource(MunicipalityModel municipality) {
    var queryLat = municipality.lat;
    var queryLon = municipality.lon;
    var bestSource = redcubaSources[0];
    var bestDistance = bestSource.distance(queryLat, queryLon);
    for (var i = 1; i < redcubaSources.length; ++i) {
      var tempSource = redcubaSources[i];
      var tempDistance = tempSource.distance(queryLat, queryLon);
      if (tempDistance < bestDistance) {
        bestSource = tempSource;
        bestDistance = tempDistance;
      }
    }
    return bestSource;
  }
}
