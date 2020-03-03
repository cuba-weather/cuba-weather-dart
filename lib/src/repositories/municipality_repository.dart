import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/utils/utils.dart';

/// Class to provide the functionality of searching for a municipality
class MunicipalityRepository {
  /// Method that returns the best match of the given municipality with the
  /// cuban municipalities. The best match is considered as the cuban
  /// municipality of shorter length that contains the given municipality.
  MunicipalityModel getMunicipality(String municipalityQuery) {
    municipalityQuery = curateMunicipality(municipalityQuery);
    for (var i = 0; i < municipalities.length; ++i) {
      if (municipalities[i].nameCured.contains(municipalityQuery)) {
        return municipalities[i];
      }
    }
    for (var i = municipalities.length - 1; i >= 0; --i) {
      if (municipalityQuery.contains(municipalities[i].nameCured)) {
        return municipalities[i];
      }
    }
    return null;
  }

  /// Method that returns the best match of the given municipality with the
  /// cuban municipalities. The best match is calculated using the
  /// Damerau-Levenshtein distance.
  MunicipalityModel getSuggestion(String municipalityQuery) {
    municipalityQuery = curateMunicipality(municipalityQuery);
    var bestMunicipality = municipalities[0];
    var bestDistance = distance(municipalityQuery, bestMunicipality.nameCured);
    for (var i = 1; i < municipalities.length; ++i) {
      var tmpMunicipality = municipalities[i];
      var tmpDistance = distance(municipalityQuery, tmpMunicipality.nameCured);
      if (tmpDistance < bestDistance) {
        bestMunicipality = tmpMunicipality;
        bestDistance = tmpDistance;
      }
    }
    return bestMunicipality;
  }
}
