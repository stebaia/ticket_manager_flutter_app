import '../model/province.dart';

class ProvinceUtils {
  static List<Province> provinces = [
    new Province(name: 'Agrigento', cod: 'AG'),
    new Province(name: 'Alessandria', cod: 'AL'),
    new Province(name: 'Ancona', cod: 'AN'),
    new Province(name: 'Aosta', cod: 'AO'),
    new Province(name: 'Arezzo', cod: 'AR'),
    new Province(name: 'Ascoli Piceno', cod: 'AP'),
    new Province(name: 'Asti', cod: 'AT'),
    new Province(name: 'Avellino', cod: 'AV'),
    new Province(name: 'Bari', cod: 'BA'),
    new Province(name: 'Barletta-Andria-Trani', cod: 'BT'),
    new Province(name: 'Belluno', cod: 'BL'),
    new Province(name: 'Benevento', cod: 'BN'),
    new Province(name: 'Bergamo', cod: 'BG'),
    new Province(name: 'Biella', cod: 'BI'),
    new Province(name: 'Bologna', cod: 'BO'),
    new Province(name: 'Bolzano', cod: 'BZ'),
    new Province(name: 'Brescia', cod: 'BS'),
    new Province(name: 'Brindisi', cod: 'BR'),
    new Province(name: 'Cagliari', cod: 'CA'),
    new Province(name: 'Caltanissetta', cod: 'CL'),
    new Province(name: 'Campobasso', cod: 'CB'),
    new Province(name: 'Caserta', cod: 'CE'),
    new Province(name: 'Catania', cod: 'CT'),
    new Province(name: 'Catanzaro', cod: 'CZ'),
    new Province(name: 'Chieti', cod: 'CH'),
    new Province(name: 'Como', cod: 'CO'),
    new Province(name: 'Cosenza', cod: 'CS'),
    new Province(name: 'Cremona', cod: 'CR'),
    new Province(name: 'Crotone', cod: 'KR'),
    new Province(name: 'Cuneo', cod: 'CN'),
    new Province(name: 'Enna', cod: 'EN'),
    new Province(name: 'Fermo', cod: 'FM'),
    new Province(name: 'Ferrara', cod: 'FE'),
    new Province(name: 'Firenze', cod: 'FI'),
    new Province(name: 'Foggia', cod: 'FG'),
    new Province(name: 'ForlÃ¬-Cesena', cod: 'FC'),
    new Province(name: 'Frosinone', cod: 'FR'),
    new Province(name: 'Genova', cod: 'GE'),
    new Province(name: 'Gorizia', cod: 'GO'),
    new Province(name: 'Grosseto', cod: 'GR'),
    new Province(name: 'Imperia', cod: 'IM'),
    new Province(name: 'Isernia', cod: 'IS'),
    new Province(name: 'La Spezia', cod: 'SP'),
    new Province(name: 'LAquila', cod: 'AQ'),
    new Province(name: 'Latina', cod: 'LT'),
    new Province(name: 'Lecce', cod: 'LE'),
    new Province(name: 'Lecco', cod: 'LC'),
    new Province(name: 'Livorno', cod: 'LI'),
    new Province(name: 'Lodi', cod: 'LO'),
    new Province(name: 'Lucca', cod: 'LU'),
    new Province(name: 'Macerata', cod: 'MC'),
    new Province(name: 'Mantova', cod: 'MN'),
    new Province(name: 'Massa-Carrara', cod: 'MS'),
    new Province(name: 'Matera', cod: 'MT'),
    new Province(name: 'Messina', cod: 'ME'),
    new Province(name: 'Milano', cod: 'MI'),
    new Province(name: 'Modena', cod: 'MO'),
    new Province(name: 'Monza e Brianza', cod: 'MB'),
    new Province(name: 'Napoli', cod: 'NA'),
    new Province(name: 'Novara', cod: 'NO'),
    new Province(name: 'Nuoro', cod: 'NU'),
    new Province(name: 'Olbia-Tempio', cod: 'OT'),
    new Province(name: 'Oristano', cod: 'OR'),
    new Province(name: 'Padova', cod: 'PD'),
    new Province(name: 'Palermo', cod: 'PA'),
    new Province(name: 'Parma', cod: 'PR'),
    new Province(name: 'Pavia', cod: 'PV'),
    new Province(name: 'Perugia', cod: 'PG'),
    new Province(name: 'Pesaro e Urbino', cod: 'PU'),
    new Province(name: 'Pescara', cod: 'PE'),
    new Province(name: 'Piacenza', cod: 'PC'),
    new Province(name: 'Pisa', cod: 'PI'),
    new Province(name: 'Pistoia', cod: 'PT'),
    new Province(name: 'Pordenone', cod: 'PN'),
    new Province(name: 'Potenza', cod: 'PZ'),
    new Province(name: 'Prato', cod: 'PO'),
    new Province(name: 'Provincia del Sud Sardegna', cod: 'SU'),
    new Province(name: 'Ragusa', cod: 'RG'),
    new Province(name: 'Ravenna', cod: 'RA'),
    new Province(name: 'Reggio di Calabria', cod: 'RC'),
    new Province(name: 'Reggio Emilia', cod: 'RE'),
    new Province(name: 'Rieti', cod: 'RI'),
    new Province(name: 'Rimini', cod: 'RN'),
    new Province(name: 'Roma', cod: 'RM'),
    new Province(name: 'Rovigo', cod: 'RO'),
    new Province(name: 'Salerno', cod: 'SA'),
    new Province(name: 'San Marino', cod: 'SM'),
    new Province(name: 'Sassari', cod: 'SS'),
    new Province(name: 'Savona', cod: 'SV'),
    new Province(name: 'Siena', cod: 'SI'),
    new Province(name: 'Siracusa', cod: 'SR'),
    new Province(name: 'Sondrio', cod: 'SO'),
    new Province(name: 'Taranto', cod: 'TA'),
    new Province(name: 'Teramo', cod: 'TE'),
    new Province(name: 'Terni', cod: 'TR'),
    new Province(name: 'Torino', cod: 'TO'),
    new Province(name: 'Trapani', cod: 'TP'),
    new Province(name: 'Trento', cod: 'TN'),
    new Province(name: 'Treviso', cod: 'TV'),
    new Province(name: 'Trieste', cod: 'TS'),
    new Province(name: 'Udine', cod: 'UD'),
    new Province(name: 'Varese', cod: 'VA'),
    new Province(name: 'Venezia', cod: 'VE'),
    new Province(name: 'Verbano-Cusio-Ossola', cod: 'VB'),
    new Province(name: 'Vercelli', cod: 'VC'),
    new Province(name: 'Verona', cod: 'VR'),
    new Province(name: 'Vibo Valentia', cod: 'VV'),
    new Province(name: 'Vicenza', cod: 'VI'),
    new Province(name: 'Viterbo', cod: 'VT'),
  ];

  static Province getProvinceFromInitials(String initials) {
    return provinces.firstWhere((element) => element.cod == initials);
  }

  static String getInitialsFromProvince(String name) {
    return provinces.firstWhere((element) => element.name == name).cod;
  }
}
