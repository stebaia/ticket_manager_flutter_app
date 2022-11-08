import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:ticket_manager_flutter_app/model/response_set_utente/response_set_utente.dart';
import 'package:ticket_manager_flutter_app/network/vivaticket_api.dart';
import 'package:ticket_manager_flutter_app/utils/envirorment.dart';
import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert';

class SetUtenteService {
  final myTransformer = Xml2Json();

  Future<int> setUtenteApp(
      String idUtilizzatore,
      String idManifestazione,
      String codice20,
      String valore,
      String foto1,
      String foto2,
      String foto3,
      String note,
      String cap,
      String email,
      String siglaStato,
      String siglaProvincia,
      String nome,
      String cognome,
      String telefono,
      String ragioneSociale,
      String privacycommerciale,
      Envirorment envirorment) async {
    var envelope = '''
      <soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
        <soap12:Body>
          <Setutenteapp xmlns="http://tempuri.org/">
            <idutilizzatore>$idUtilizzatore</idutilizzatore>            
            <codice20>$codice20</codice20>
            <idmanifestazione>$idManifestazione</idmanifestazione>
            <valore>$valore</valore>
            <foto1>$foto1</foto1>
            <foto2>$foto2</foto2>
            <foto3>$foto3</foto3>
            <note>$note</note>
            <cap>$cap</cap>
            <email>$email</email>
            <siglastato>$siglaStato</siglastato>
            <siglaprovincia>$siglaProvincia</siglaprovincia>
            <nome>$nome</nome>
            <cognome>$cognome</cognome>
            <telefono>$telefono</telefono>
            <ragionesociale>$ragioneSociale</ragionesociale>
            <privacycommerciale>$privacycommerciale</privacycommerciale>
          </Setutenteapp>
        </soap12:Body>
      </soap12:Envelope>
    ''';

    http.Response response = await http.post(
        Uri.parse(VivaticketApi.REQUEST_SET_UTENTE_APP(envirorment)),
        headers: {
          "Content-Type": "text/xml; charset=utf-8",
          //"SOAPAction": "http://tempuri.org/GetAllCity",
          //"Host": "www.i2isoftwares.com"
          "Accept": "text/xml"
        },
        body: envelope);

    var rawXmlResponse = response.body;

// Use the xml package's 'parse' method to parse the response.
    XmlDocument customParseXml = XmlDocument.parse(rawXmlResponse);
    myTransformer.parse(rawXmlResponse);
    var jsonResponse = myTransformer.toParker();
    Map<String, dynamic> responseJson = json.decode(jsonResponse);
    AutogeneratedSetUtente setUtenteResponse =
        AutogeneratedSetUtente.fromJson(responseJson);
    //LoginResult result = LoginResult.fromJson(responseJsonjj["soap:Envelope"]["soap:Body"]["LoginUtenteResponse"]["LoginUtenteResult"]);
    print("DATAResult=" + response.body);
    String setutenteappResponse = setUtenteResponse
        .soapEnvelope!.soapBody!.setutenteappResponse!.setutenteappResult!;
    int value = int.parse(setutenteappResponse);
    return value;
  }
}
