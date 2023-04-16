import 'package:mobx/mobx.dart';
import 'package:ticket_manager_flutter_app/network/scan_manager_service.dart';

import '../../model/check_manager_model/check_model.dart';
import '../../utils/envirorment.dart';

part 'normalScan_store.g.dart';

class NormalScanStore = _NormalScanStore with _$NormalScanStore;

abstract class _NormalScanStore with Store {
  ScanManagerService scanScervice = ScanManagerService();

  @observable
  ObservableFuture<CheckManagerResult> fetchScanResult = emptyResponse;

  @observable
  CheckManagerResult scanState =
      CheckManagerResult(value: "0", description: "");

  @computed
  bool get hasResults =>
      fetchScanResult != emptyResponse &&
      fetchScanResult.status == FutureStatus.fulfilled;

  static ObservableFuture<CheckManagerResult> emptyResponse =
      ObservableFuture.value(CheckManagerResult(value: "0", description: ""));

  @action
  Future<CheckManagerResult> fetchScan(
      String idmanifestazione,
      String codice20,
      String idutilizzatore,
      String idcorso,
      String ckexit,
      Envirorment envirorment) async {
        try{
 final future = scanScervice.requestCheckManager(idmanifestazione, codice20,
        idutilizzatore, idcorso, ckexit, envirorment);
    fetchScanResult = ObservableFuture(future);
    return scanState = await future;
        }catch(e){
          
          return Future<CheckManagerResult>.value(CheckManagerResult(value: "250", description: "Errore nella scansione",));
        }
   
  }

  @action
  void setScanState(CheckManagerResult value) {
    scanState = value;
  }
}
