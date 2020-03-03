import 'package:cuba_weather_dart/src/models/models.dart';

/// Sources of weather data
var redcubaSources = [
  SourceModel(
    name: 'Consolación del Sur',
    lat: 22.508333,
    lon: -83.517222,
  ),
  SourceModel(
    name: 'Guane',
    lat: 22.200556,
    lon: -84.083889,
  ),
  SourceModel(
    name: 'Mantua',
    lat: 22.290833,
    lon: -84.2875,
  ),
  SourceModel(
    name: 'Pinar del Río',
    lat: 22.412222,
    lon: -83.671944,
  ),
  SourceModel(
    name: 'Viñales',
    lat: 22.615278,
    lon: -83.715833,
  ),
  SourceModel(
    name: 'Los Palacios',
    lat: 22.582222,
    lon: -83.248889,
  ),
  SourceModel(
    name: 'Mariel',
    lat: 22.993611,
    lon: -82.753889,
  ),
  SourceModel(
    name: 'Guanajay',
    lat: 22.930556,
    lon: -82.688056,
  ),
  SourceModel(
    name: 'Bauta',
    lat: 22.991944,
    lon: -82.549167,
  ),
  SourceModel(
    name: 'San Antonio de los Baños',
    lat: 22.888889,
    lon: -82.498889,
  ),
  SourceModel(
    name: 'Güira de Melena',
    lat: 22.801944,
    lon: -82.504722,
  ),
  SourceModel(
    name: 'Alquízar',
    lat: 22.806667,
    lon: -82.582778,
  ),
  SourceModel(
    name: 'Artemisa',
    lat: 22.813611,
    lon: -82.763333,
  ),
  SourceModel(
    name: 'Bahía Honda',
    lat: 22.906389,
    lon: -83.163889,
  ),
  SourceModel(
    name: 'Candelaria',
    lat: 22.743889,
    lon: -82.958056,
  ),
  SourceModel(
    name: 'San Cristóbal',
    lat: 22.716944,
    lon: -83.051111,
  ),
  SourceModel(
    name: 'Habana',
    lat: 23.136667,
    lon: -82.358889,
  ),
  SourceModel(
    name: 'Centro Habana',
    lat: 23.133333,
    lon: -82.383333,
  ),
  SourceModel(
    name: 'Bejucal',
    lat: 22.932778,
    lon: -82.386944,
  ),
  SourceModel(
    name: 'San José de las Lajas',
    lat: 22.967778,
    lon: -82.155833,
  ),
  SourceModel(
    name: 'Jaruco',
    lat: 23.042778,
    lon: -82.009444,
  ),
  SourceModel(
    name: 'Santa Cruz del Norte',
    lat: 23.155556,
    lon: -81.926667,
  ),
  SourceModel(
    name: 'Madruga',
    lat: 22.916389,
    lon: -81.923889,
  ),
  SourceModel(
    name: 'Melena del Sur',
    lat: 22.788111,
    lon: -82.151222,
  ),
  SourceModel(
    name: 'Batabanó',
    lat: 22.698611,
    lon: -82.293889,
  ),
  SourceModel(
    name: 'Quivicán',
    lat: 22.824722,
    lon: -82.355833,
  ),
  SourceModel(
    name: 'Calimete',
    lat: 22.533889,
    lon: -80.909722,
  ),
  SourceModel(
    name: 'Cárdenas',
    lat: 23.042778,
    lon: -81.203611,
  ),
  SourceModel(
    name: 'Colón',
    lat: 22.7225,
    lon: -80.906667,
  ),
  SourceModel(
    name: 'Jagüey Grande',
    lat: 22.529167,
    lon: -81.1325,
  ),
  SourceModel(
    name: 'Jovellanos',
    lat: 22.810556,
    lon: -81.198056,
  ),
  SourceModel(
    name: 'Los Arabos',
    lat: 22.74,
    lon: -80.716111,
  ),
  SourceModel(
    name: 'Martí',
    lat: 22.952222,
    lon: -80.916667,
  ),
  SourceModel(
    name: 'Matanzas',
    lat: 23.051111,
    lon: -81.575278,
  ),
  SourceModel(
    name: 'Perico',
    lat: 22.775278,
    lon: -81.015278,
  ),
  SourceModel(
    name: 'Unión de Reyes',
    lat: 22.800278,
    lon: -81.537222,
  ),
  SourceModel(
    name: 'Cienfuegos',
    lat: 22.145556,
    lon: -80.436389,
  ),
  SourceModel(
    name: 'Cruces',
    lat: 22.341944,
    lon: -80.276111,
  ),
  SourceModel(
    name: 'Palmira',
    lat: 22.244444,
    lon: -80.394444,
  ),
  SourceModel(
    name: 'Rodas',
    lat: 22.342778,
    lon: -80.555278,
  ),
  SourceModel(
    name: 'Abreus',
    lat: 22.280556,
    lon: -80.567778,
  ),
  SourceModel(
    name: 'Cumanayagüa',
    lat: 22.152222,
    lon: -80.201111,
  ),
  SourceModel(
    name: 'Caibarién',
    lat: 22.515833,
    lon: -79.472222,
  ),
  SourceModel(
    name: 'Camajuaní',
    lat: 22.467778,
    lon: -79.723889,
  ),
  SourceModel(
    name: 'Cifuentes',
    lat: 22.620833,
    lon: -80.066111,
  ),
  SourceModel(
    name: 'Corralillo',
    lat: 22.985556,
    lon: -80.583056,
  ),
  SourceModel(
    name: 'Encrucijada',
    lat: 22.616944,
    lon: -79.866111,
  ),
  SourceModel(
    name: 'Manicaragua',
    lat: 22.15,
    lon: -79.976389,
  ),
  SourceModel(
    name: 'Placetas',
    lat: 22.315833,
    lon: -79.655556,
  ),
  SourceModel(
    name: 'Quemado de Güines',
    lat: 22.79,
    lon: -80.256111,
  ),
  SourceModel(
    name: 'Remedios',
    lat: 22.492222,
    lon: -79.545833,
  ),
  SourceModel(
    name: 'Sagüa la Grande',
    lat: 22.808611,
    lon: -80.071111,
  ),
  SourceModel(
    name: 'Santa Clara',
    lat: 22.406919,
    lon: -79.964939,
  ),
  SourceModel(
    name: 'Santo Domingo',
    lat: 22.583333,
    lon: -80.238333,
  ),
  SourceModel(
    name: 'Sancti Spíritus',
    lat: 21.933889,
    lon: -79.443889,
  ),
  SourceModel(
    name: 'Trinidad',
    lat: 21.804167,
    lon: -79.983056,
  ),
  SourceModel(
    name: 'Cabaiguán',
    lat: 22.083889,
    lon: -79.495278,
  ),
  SourceModel(
    name: 'Yaguajay',
    lat: 22.330278,
    lon: -79.236944,
  ),
  SourceModel(
    name: 'Jatibonico',
    lat: 21.946389,
    lon: -79.1675,
  ),
  SourceModel(
    name: 'Fomento',
    lat: 22.105278,
    lon: -79.720278,
  ),
  SourceModel(
    name: 'Ciego de Ávila',
    lat: 21.848056,
    lon: -78.763056,
  ),
  SourceModel(
    name: 'Morón',
    lat: 22.110833,
    lon: -78.627778,
  ),
  SourceModel(
    name: 'Chambas',
    lat: 22.196667,
    lon: -78.913333,
  ),
  SourceModel(
    name: 'Venezuela',
    lat: 21.751111,
    lon: -78.779167,
  ),
  SourceModel(
    name: 'Baraguá',
    lat: 21.681944,
    lon: -78.624444,
  ),
  SourceModel(
    name: 'Primero de Enero',
    lat: 21.945278,
    lon: -78.418889,
  ),
  SourceModel(
    name: 'Camagüey',
    lat: 21.383889,
    lon: -77.9075,
  ),
  SourceModel(
    name: 'Guáimaro',
    lat: 21.058889,
    lon: -77.347778,
  ),
  SourceModel(
    name: 'Nuevitas',
    lat: 21.540278,
    lon: -77.264444,
  ),
  SourceModel(
    name: 'Sibanicú',
    lat: 21.238889,
    lon: -77.521111,
  ),
  SourceModel(
    name: 'Esmeralda',
    lat: 21.856111,
    lon: -78.111389,
  ),
  SourceModel(
    name: 'Minas',
    lat: 21.489444,
    lon: -77.605,
  ),
  SourceModel(
    name: 'Florida',
    lat: 21.529444,
    lon: -78.222778,
  ),
  SourceModel(
    name: 'Vertientes',
    lat: 21.256944,
    lon: -78.149167,
  ),
  SourceModel(
    name: 'Santa Cruz del Sur',
    lat: 20.719444,
    lon: -77.991111,
  ),
  SourceModel(
    name: 'Manatí',
    lat: 21.314444,
    lon: -76.937778,
  ),
  SourceModel(
    name: 'Puerto Padre',
    lat: 21.195,
    lon: -76.601667,
  ),
  SourceModel(
    name: 'Las Tunas',
    lat: 20.959722,
    lon: -76.954444,
  ),
  SourceModel(
    name: 'Jobabo',
    lat: 20.907778,
    lon: -77.283056,
  ),
  SourceModel(
    name: 'Colombia',
    lat: 20.990556,
    lon: -77.415833,
  ),
  SourceModel(
    name: 'Bayamo',
    lat: 20.381667,
    lon: -76.642778,
  ),
  SourceModel(
    name: 'Campechuela',
    lat: 20.233333,
    lon: -77.279167,
  ),
  SourceModel(
    name: 'Guisa',
    lat: 20.260833,
    lon: -76.538056,
  ),
  SourceModel(
    name: 'Jiguaní',
    lat: 20.373056,
    lon: -76.422222,
  ),
  SourceModel(
    name: 'Manzanillo',
    lat: 20.339722,
    lon: -77.108611,
  ),
  SourceModel(
    name: 'Media Luna',
    lat: 20.144444,
    lon: -77.436111,
  ),
  SourceModel(
    name: 'Niquero',
    lat: 20.047222,
    lon: -77.578056,
  ),
  SourceModel(
    name: 'Río Cauto',
    lat: 20.563611,
    lon: -76.917222,
  ),
  SourceModel(
    name: 'Yara',
    lat: 20.276667,
    lon: -76.946944,
  ),
  SourceModel(
    name: 'Baracoa',
    lat: 20.348611,
    lon: -74.510556,
  ),
  SourceModel(
    name: 'Guantánamo',
    lat: 20.136667,
    lon: -75.213889,
  ),
  SourceModel(
    name: 'Contramaestre',
    lat: 20.3,
    lon: -76.250556,
  ),
  SourceModel(
    name: 'Palma Soriano',
    lat: 20.213889,
    lon: -75.991944,
  ),
  SourceModel(
    name: 'San Luis',
    lat: 20.188056,
    lon: -75.848611,
  ),
  SourceModel(
    name: 'Santiago de Cuba',
    lat: 20.019833,
    lon: -75.813917,
  ),
  SourceModel(
    name: 'Báguanos',
    lat: 20.763056,
    lon: -76.029722,
  ),
  SourceModel(
    name: 'Banes',
    lat: 20.969722,
    lon: -75.711667,
  ),
  SourceModel(
    name: 'Cueto',
    lat: 20.648056,
    lon: -75.931667,
  ),
  SourceModel(
    name: 'Gibara',
    lat: 21.107222,
    lon: -76.136667,
  ),
  SourceModel(
    name: 'Holguín',
    lat: 20.886944,
    lon: -76.259167,
  ),
  SourceModel(
    name: 'Moa',
    lat: 20.639722,
    lon: -74.9175,
  ),
  SourceModel(
    name: 'Sagüa de Tánamo',
    lat: 20.585833,
    lon: -75.241667,
  ),
  SourceModel(
    name: 'Buenavista',
    lat: 22.45,
    lon: -79.166667,
  ),
  SourceModel(
    name: 'Varadero',
    lat: 23.139444,
    lon: -81.286111,
  ),
  SourceModel(
    name: 'El Cobre',
    lat: 20.048,
    lon: -75.945,
  ),
  SourceModel(
    name: 'Mayabeque',
    lat: 22.968056,
    lon: -82.155833,
  ),
  SourceModel(
    name: 'Aguada de Pasajeros',
    lat: 22.384722,
    lon: -80.846111,
  ),
  SourceModel(
    name: 'Cumanayagua',
    lat: 22.152222,
    lon: -80.201111,
  ),
  SourceModel(
    name: 'Ranchuelo',
    lat: 22.376444,
    lon: -80.151,
  ),
  SourceModel(
    name: 'Sagua la Grande',
    lat: 22.808611,
    lon: -80.071111,
  ),
  SourceModel(
    name: 'Sagua de Tánamo',
    lat: 20.585833,
    lon: -75.241667,
  ),
  SourceModel(
    name: 'Nueva Gerona',
    lat: 21.884722,
    lon: -82.801111,
  ),
];
