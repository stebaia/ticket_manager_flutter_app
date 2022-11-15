import 'package:flutter/material.dart';
import 'package:ticket_manager_flutter_app/utils/envirorment.dart';
import 'package:ticket_manager_flutter_app/utils/offilne_mode.dart';
import 'package:ticket_manager_flutter_app/utils/theme/dark_theme.dart';

class OfflineModeProvider with ChangeNotifier {
  OfflineModePreferences envirormentPreferences = OfflineModePreferences();
  bool _offlineMode = false;

  bool get getOfflineMode => _offlineMode;

  set offlineMode(bool value) {
    _offlineMode = value;
    envirormentPreferences.setOfflineMode(value);
    notifyListeners();
  }
}
