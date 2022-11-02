import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ticket_manager_flutter_app/network/logout_service.dart';

import '../../db/database_helper.dart';
import '../../model/user_model/user.dart';
import '../../provider/dark_theme_provider.dart';
import '../../provider/envirorment_provider.dart';
import '../../utils/envirorment.dart';
import '../../utils/theme/custom_theme.dart';
import 'login_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key, required this.user})
      : super(
          key: key,
        );

  final User user;

  @override
  State<SettingsScreen> createState() => _SettingUserScreenState();
}

class _SettingUserScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    final envirormentTheme = Provider.of<EnvirormentProvider>(context);
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'VIVA2021',
              style: TextStyle(
                  color: ThemeHelper.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Text('test@vivaticket.com')
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Preferenze'.toUpperCase(),
            style: TextStyle(
              color: CupertinoColors.systemGrey,
              letterSpacing: 1.6,
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      Container(
        height: 50,
        color: themeChange.darkTheme
            ? CupertinoColors.label
            : CupertinoColors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.person,
                  color: themeChange.darkTheme
                      ? CupertinoColors.white
                      : CupertinoColors.label,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Modifica utente',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color:
                          themeChange.darkTheme ? Colors.white : Colors.black),
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.chevron_forward,
                  color: themeChange.darkTheme
                      ? CupertinoColors.white
                      : CupertinoColors.label,
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        height: 50,
        color: themeChange.darkTheme
            ? CupertinoColors.label
            : CupertinoColors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.wifi_slash,
                  color: themeChange.darkTheme
                      ? CupertinoColors.white
                      : CupertinoColors.label,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Offline Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color:
                          themeChange.darkTheme ? Colors.white : Colors.black),
                ),
                Spacer(),
                CupertinoSwitch(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        height: 50,
        color: themeChange.darkTheme
            ? CupertinoColors.label
            : CupertinoColors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.moon,
                  color: themeChange.darkTheme
                      ? CupertinoColors.white
                      : CupertinoColors.label,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Dark Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color:
                          themeChange.darkTheme ? Colors.white : Colors.black),
                ),
                Spacer(),
                CupertinoSwitch(
                  value: themeChange.darkTheme,
                  onChanged: (value) {
                    themeChange.darkTheme = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      GestureDetector(
        child: Container(
          height: 50,
          color: themeChange.darkTheme
              ? CupertinoColors.label
              : CupertinoColors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.rocket,
                    color: themeChange.darkTheme
                        ? CupertinoColors.white
                        : CupertinoColors.label,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Root Mode',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: themeChange.darkTheme
                            ? Colors.white
                            : Colors.black),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.chevron_forward,
                    color: themeChange.darkTheme
                        ? CupertinoColors.white
                        : CupertinoColors.label,
                  ),
                ],
              ),
            ),
          ),
        ),
        onDoubleTap: () {
          /*Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => RootScreen()),
              );
              */
        },
      ),
      GestureDetector(
          child: Container(
            height: 60,
            color: themeChange.darkTheme
                ? CupertinoColors.label
                : CupertinoColors.white,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.square_arrow_left,
                      color: themeChange.darkTheme
                          ? CupertinoColors.white
                          : CupertinoColors.label,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: themeChange.darkTheme
                              ? Colors.white
                              : Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.chevron_forward,
                      color: themeChange.darkTheme
                          ? CupertinoColors.white
                          : CupertinoColors.label,
                    ),
                  ],
                ),
              ),
            ),
          ),
          onTap: () =>
              Navigator.of(context).restorablePush(_dialogBuilder, arguments: {
                'idUser': widget.user.id,
                'envirorment': envirormentTheme.envirormentState.toString()
              })),
    ]));
  }

  static Future<int> requestLogout(int id, Envirorment envirorment) {
    LogoutService logoutService = new LogoutService();
    Future<int> responseLogout = logoutService.requestLogout(id, envirorment);
    return responseLogout;
  }

  static Route<Object?> _dialogBuilder(
    BuildContext context,
    Object? arguments,
  ) {
    Map mapArguments = arguments as Map;
    int idUser = mapArguments["idUser"];
    Envirorment envirorment = mapArguments["envirorment"] == "staging"
        ? Envirorment.staging
        : Envirorment.production;

    return CupertinoDialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(AppLocalizations.of(context).titleDialogLogout),
          content: Text(AppLocalizations.of(context).contentDialogLogout),
          actions: <Widget>[
            CupertinoDialogAction(
                child: Text(AppLocalizations.of(context).yes),
                onPressed: () {
                  requestLogout(idUser, envirorment).then((value) {
                    if (value == 1) {
                      DatabaseHelper.instance.delete(idUser).then((value) =>
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              ModalRoute.withName("/login")));
                    }
                  });
                }),
            CupertinoDialogAction(
              child: Text(AppLocalizations.of(context).no),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
