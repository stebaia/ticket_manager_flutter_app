import '../model/nation.dart';

class NationsUtils {
  static List<Nation> nations = [
    new Nation(name: 'Afghanistan', cod: 'AFG'),
    new Nation(name: 'Albania', cod: 'ALB'),
    new Nation(name: 'Algeria', cod: 'DZA'),
    new Nation(name: 'Andorra', cod: 'AND'),
    new Nation(name: 'Angola', cod: 'AGO'),
    new Nation(name: 'Anguilla', cod: 'AIA'),
    new Nation(name: 'Antigua e Barbuda', cod: 'ATG'),
    new Nation(name: 'Antille Olandesi', cod: 'ANT'),
    new Nation(name: 'Arabia Saudita', cod: 'SAU'),
    new Nation(name: 'Argentina', cod: 'ARG'),
    new Nation(name: 'Armenia', cod: 'ARM'),
    new Nation(name: 'Aruba', cod: 'ABW'),
    new Nation(name: 'Australia', cod: 'AUS'),
    new Nation(name: 'Austria', cod: 'AUT'),
    new Nation(name: 'Azerbaijan', cod: 'AZE'),
    new Nation(name: 'Bahamas', cod: 'BHS'),
    new Nation(name: 'Bangladesh', cod: 'BGD'),
    new Nation(name: 'Belgio', cod: 'BEL'),
    new Nation(name: 'Belize', cod: 'BLZ'),
    new Nation(name: 'Benin', cod: 'BEN'),
    new Nation(name: 'Bermuda', cod: 'BMU'),
    new Nation(name: 'Bhutan', cod: 'BTN'),
    new Nation(name: 'Bielorussia', cod: 'BLR'),
    new Nation(name: 'Bolivia', cod: 'BOL'),
    new Nation(name: 'Bosnia ed Erzegovina', cod: 'BIH'),
    new Nation(name: 'Botswana', cod: 'BWA'),
    new Nation(name: 'Brasile', cod: 'BRA'),
    new Nation(name: 'Brunei', cod: 'BRN'),
    new Nation(name: 'Bulgaria', cod: 'BGR'),
    new Nation(name: 'Burkina Faso', cod: 'BFA'),
    new Nation(name: 'Burundi', cod: 'BDI'),
    new Nation(name: 'Cambogia', cod: 'KHM'),
    new Nation(name: 'Camerun', cod: 'CMR'),
    new Nation(name: 'Canada', cod: 'CAN'),
    new Nation(name: 'Capo Verde', cod: 'CPV'),
    new Nation(name: 'Carolina del Nord', cod: 'NCL'),
    new Nation(name: 'Ciad', cod: 'TCD'),
    new Nation(name: 'Cile', cod: 'CHL'),
    new Nation(name: 'Cina', cod: 'CHN'),
    new Nation(name: 'Cipro', cod: 'CYP'),
    new Nation(name: 'CittÃ Â  del Vaticano', cod: 'VAT'),
    new Nation(name: 'Colombia', cod: 'COL'),
    new Nation(name: 'Corea del Nord', cod: 'PRK'),
    new Nation(name: 'Corea del Sud', cod: 'KOR'),
    new Nation(name: 'Costa dAvorio', cod: 'CIV'),
    new Nation(name: 'Costa Rica', cod: 'CRI'),
    new Nation(name: 'Croazia', cod: 'HRV'),
    new Nation(name: 'Cuba', cod: 'CUB'),
    new Nation(name: 'Danimarca', cod: 'DNK'),
    new Nation(name: 'Dominica', cod: 'DMA'),
    new Nation(name: 'Ecuador', cod: 'ECU'),
    new Nation(name: 'Egitto', cod: 'EGY'),
    new Nation(name: 'El Salvador', cod: 'SLV'),
    new Nation(name: 'Emirati Arabi Uniti', cod: 'ARE'),
    new Nation(name: 'Eritrea', cod: 'ERI'),
    new Nation(name: 'Estonia', cod: 'EST'),
    new Nation(name: 'Etiopia', cod: 'ETH'),
    new Nation(name: 'Filippine', cod: 'PHL'),
    new Nation(name: 'Finlandia', cod: 'FIN'),
    new Nation(name: 'Francia', cod: 'FRA'),
    new Nation(name: 'Gabon', cod: 'GAB'),
    new Nation(name: 'Gambia', cod: 'GMB'),
    new Nation(name: 'Georgia', cod: 'GEO'),
    new Nation(name: 'Germania', cod: 'DEU'),
    new Nation(name: 'Ghana', cod: 'GHA'),
    new Nation(name: 'Giamaica', cod: 'JAM'),
    new Nation(name: 'Giappone', cod: 'JPN'),
    new Nation(name: 'Gibuti', cod: 'DJI'),
    new Nation(name: 'Giordania', cod: 'JOR'),
    new Nation(name: 'Grecia', cod: 'GRC'),
    new Nation(name: 'Grenada', cod: 'GRD'),
    new Nation(name: 'Groenlandia', cod: 'GRL'),
    new Nation(name: 'Guadalupa', cod: 'GLP'),
    new Nation(name: 'Guatemala', cod: 'GTM'),
    new Nation(name: 'Guinea', cod: 'GIN'),
    new Nation(name: 'Guinea Equatoriale', cod: 'GNQ'),
    new Nation(name: 'Guinea-Bissau', cod: 'GNB'),
    new Nation(name: 'Guyana', cod: 'GUY'),
    new Nation(name: 'Haiti', cod: 'HTI'),
    new Nation(name: 'Honduras', cod: 'HND'),
    new Nation(name: 'Hong Kong', cod: 'HKG'),
    new Nation(name: 'India', cod: 'IND'),
    new Nation(name: 'Indonesia', cod: 'IDN'),
    new Nation(name: 'Inghilterra', cod: 'GBR'),
    new Nation(name: 'Iran', cod: 'IRN'),
    new Nation(name: 'Iraq', cod: 'IRQ'),
    new Nation(name: 'Irlanda', cod: 'IRL'),
    new Nation(name: 'Islanda', cod: 'ISL'),
    new Nation(name: 'Israele', cod: 'ISR'),
    new Nation(name: 'Italia', cod: 'ITA'),
    new Nation(name: 'Kazakistan', cod: 'KAZ'),
    new Nation(name: 'Kenya', cod: 'KEN'),
    new Nation(name: 'Kiribati', cod: 'KIR'),
    new Nation(name: 'Kuwait', cod: 'KWT'),
    new Nation(name: 'Lesotho', cod: 'LSO'),
    new Nation(name: 'Lettonia', cod: 'LVA'),
    new Nation(name: 'Libano', cod: 'LBN'),
    new Nation(name: 'Liberia', cod: 'LBR'),
    new Nation(name: 'Libia', cod: 'LBY'),
    new Nation(name: 'Liechtenstein', cod: 'LIE'),
    new Nation(name: 'Lituania', cod: 'LTU'),
    new Nation(name: 'Lussemburgo', cod: 'LUX'),
    new Nation(name: 'Macao', cod: 'MAC'),
    new Nation(name: 'Macedonia', cod: 'MKD'),
    new Nation(name: 'Madagascar', cod: 'MDG'),
    new Nation(name: 'Malawi', cod: 'MWI'),
    new Nation(name: 'Maldive', cod: 'MDV'),
    new Nation(name: 'Malesia', cod: 'MYS'),
    new Nation(name: 'Mali', cod: 'MLI'),
    new Nation(name: 'Malta', cod: 'MLT'),
    new Nation(name: 'Marocco', cod: 'MAR'),
    new Nation(name: 'Martinica', cod: 'MTQ'),
    new Nation(name: 'Mauritania', cod: 'MRT'),
    new Nation(name: 'Mauritius', cod: 'MUS'),
    new Nation(name: 'Messico', cod: 'MEX'),
    new Nation(name: 'Moldavia', cod: 'MDA'),
    new Nation(name: 'Monaco', cod: 'MCO'),
    new Nation(name: 'Mongolia', cod: 'MNG'),
    new Nation(name: 'Montenegro', cod: 'MNE'),
    new Nation(name: 'Mozambico', cod: 'MOZ'),
    new Nation(name: 'Namibia', cod: 'NAM'),
    new Nation(name: 'Nepal', cod: 'NPL'),
    new Nation(name: 'Nicaragua', cod: 'NIC'),
    new Nation(name: 'Niger', cod: 'NER'),
    new Nation(name: 'Nigeria', cod: 'NGA'),
    new Nation(name: 'Norvegia', cod: 'NOR'),
    new Nation(name: 'Nuova Zelanda', cod: 'NZL'),
    new Nation(name: 'Oman', cod: 'OMN'),
    new Nation(name: 'Paesi Bassi', cod: 'NLD'),
    new Nation(name: 'Pakistan', cod: 'PAK'),
    new Nation(name: 'Panama', cod: 'PAN'),
    new Nation(name: 'Papua Nuova Guinea', cod: 'PNG'),
    new Nation(name: 'Paraguay', cod: 'PRY'),
    new Nation(name: 'PerÃ¹', cod: 'PER'),
    new Nation(name: 'Polonia', cod: 'POL'),
    new Nation(name: 'Porto Rico', cod: 'PRI'),
    new Nation(name: 'Portogallo', cod: 'PRT'),
    new Nation(name: 'Qatar', cod: 'QAT'),
    new Nation(name: 'Rep. Centrafricana', cod: 'CAF'),
    new Nation(name: 'Rep. del Congo', cod: 'COD'),
    new Nation(name: 'Rep. Dominicana', cod: 'DOM'),
    new Nation(name: 'Repubblica Ceca', cod: 'CZE'),
    new Nation(name: 'Romania', cod: 'ROU'),
    new Nation(name: 'Ruanda', cod: 'RWA'),
    new Nation(name: 'Russia', cod: 'RUS'),
    new Nation(name: 'SÃ£o TomÃ© e PrÃ­ncipe', cod: 'STP'),
    new Nation(name: 'Saint Kitts e Nevis', cod: 'KNA'),
    new Nation(name: 'Samoa', cod: 'ASM'),
    new Nation(name: 'San Marino', cod: 'SMR'),
    new Nation(name: 'Santa Lucia', cod: 'LCA'),
    new Nation(name: 'Senegal', cod: 'SEN'),
    new Nation(name: 'Serbia', cod: 'SRB'),
    new Nation(name: 'Seychelles', cod: 'SYC'),
    new Nation(name: 'Sierra Leone', cod: 'SLE'),
    new Nation(name: 'Singapore', cod: 'SGP'),
    new Nation(name: 'Siria', cod: 'SYR'),
    new Nation(name: 'Slovacchia', cod: 'SVK'),
    new Nation(name: 'Slovenia', cod: 'SVN'),
    new Nation(name: 'Somalia', cod: 'SOM'),
    new Nation(name: 'Spagna', cod: 'ESP'),
    new Nation(name: 'Sri Lanka', cod: 'LKA'),
    new Nation(name: 'Stati Uniti (USA)', cod: 'USA'),
    new Nation(name: 'Sudafrica', cod: 'ZAF'),
    new Nation(name: 'Sudan', cod: 'SDN'),
    new Nation(name: 'Suriname', cod: 'SUR'),
    new Nation(name: 'Svezia', cod: 'SWE'),
    new Nation(name: 'Svizzera', cod: 'CHE'),
    new Nation(name: 'Swaziland', cod: 'SWZ'),
    new Nation(name: 'Taiwan', cod: 'TWN'),
    new Nation(name: 'Tanzania', cod: 'TZA'),
    new Nation(name: 'Timor Est', cod: 'TLS'),
    new Nation(name: 'Togo', cod: 'TGO'),
    new Nation(name: 'Trinidad e Tobago', cod: 'TTO'),
    new Nation(name: 'Tunisia', cod: 'TUN'),
    new Nation(name: 'Turchia', cod: 'TUR'),
    new Nation(name: 'Turkmenistan', cod: 'TKM'),
    new Nation(name: 'Ucraina', cod: 'UKR'),
    new Nation(name: 'Uganda', cod: 'UGA'),
    new Nation(name: 'Ungheria', cod: 'HUN'),
    new Nation(name: 'Uruguay', cod: 'URY'),
    new Nation(name: 'Uzbekistan', cod: 'UZB'),
    new Nation(name: 'Vanuatu', cod: 'VUT'),
    new Nation(name: 'Venezuela', cod: 'VEN'),
    new Nation(name: 'Yemen', cod: 'YEM'),
    new Nation(name: 'Zambia', cod: 'ZMB'),
  ];

  static Nation getNationFromInitials(String initials) {
    return nations.firstWhere((element) => element.cod == initials);
  }

  static String getInitialsFromNation(String name) {
    return nations.firstWhere((element) => element.name == name).cod;
  }
}
