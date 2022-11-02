import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../model/expositor_model/expositor_model.dart';
import '../../model/user_model/user.dart';
import '../../network/get_users_extra_service.dart';
import '../../provider/dark_theme_provider.dart';
import '../../provider/envirorment_provider.dart';
import '../../utils/theme/custom_theme.dart';

class ExpositorsScreen extends StatefulWidget {
  const ExpositorsScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  State<ExpositorsScreen> createState() => _ExpositorListScreenState();
}

class _ExpositorListScreenState extends State<ExpositorsScreen> {
  GetUsersExtraService getUsersExtraService = GetUsersExtraService();

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    final envirormentProvider = Provider.of<EnvirormentProvider>(context);
    User user = widget.user;

    Future<List<Miatabella>> getExpositorList() {
      Future<List<Miatabella>> requestExpositor = getUsersExtraService
          .requestUsersExtra(user.id!, envirormentProvider.envirormentState);
      return requestExpositor;
    }

    return CupertinoScrollbar(
        child: FutureBuilder(
      future: getExpositorList(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<Miatabella> expositorList = snapshot.data as List<Miatabella>;
          return ListView.builder(
              shrinkWrap: true,
              itemCount: null == expositorList ? 0 : expositorList.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: GestureDetector(
                      child: Card(
                          color: themeChange.darkTheme
                              ? CupertinoColors.label
                              : CupertinoColors.white,
                          elevation: 16,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${expositorList[index].ragionesociale}",
                                        style: TextStyle(
                                            color: themeChange.darkTheme
                                                ? CupertinoColors.white
                                                : CupertinoColors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "${expositorList[index].nome} ${expositorList[index].cognome}",
                                        style: TextStyle(
                                            color: themeChange.darkTheme
                                                ? CupertinoColors.white
                                                : CupertinoColors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Icon(
                                    CupertinoIcons.chevron_forward,
                                    color: ThemeHelper.primaryColor,
                                  ),
                                )
                              ],
                            ),
                          )),
                      onTap: () => {
                        /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FormExpositorScreen(
                                  expositor: expositorList[index],
                                  user: user,
                                ),
                              ),
                            )
                            */
                      },
                    ));
              });
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              'Non ci sono espositori',
              style: TextStyle(
                color: themeChange.darkTheme ? Colors.white : Colors.black,
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    ));
  }
}
