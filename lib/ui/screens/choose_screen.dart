import 'dart:math';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:ticket_manager_flutter_app/model/id_value_model.dart';
import 'package:ticket_manager_flutter_app/model/user_model/user.dart';
import 'package:ticket_manager_flutter_app/ui/screens/home_screen.dart';
import 'package:ticket_manager_flutter_app/utils/theme/custom_theme.dart';

import '../../db/database_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../model/course_model/course.dart';
import '../../network/course_service.dart';
import '../../provider/dark_theme_provider.dart';
import '../../provider/envirorment_provider.dart';
import '../../store/dropdown_store/dropdown_store.dart';
import '../components/bazier_container.dart';

class ChooseScreen extends StatelessWidget {
  final User? user;
  final dropDownStore = DropdownStore();

  List<IdValueObject> idValueList = [];
  List<Course> getCourse = [];
  late Course selectedCourse;

  CourseService courseService = CourseService();

  ChooseScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    final envirormentProvider = Provider.of<EnvirormentProvider>(context);

    return Scaffold(
        backgroundColor: themeChange.darkTheme
            ? CupertinoColors.label
            : CupertinoColors.white,
        appBar: AppBar(
          backgroundColor: themeChange.darkTheme
              ? CupertinoColors.label
              : CupertinoColors.white,
          title: Text(
            user!.manifestationName!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: themeChange.darkTheme
                  ? CupertinoColors.white
                  : CupertinoColors.black,
            ),
          ),
        ),
        body: FutureBuilder(
            future: getCourses(user!, envirormentProvider),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                getCourse = snapshot.data as List<Course>;
                idValueList = mapCourseToIdValue(getCourse);
                return Stack(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * .60,
                      right: MediaQuery.of(context).size.width * .3,
                      child:
                          RotatedBox(quarterTurns: 2, child: BezierContainer()),
                    ),
                    /*Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 80,
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(children: [
                            Text(
                              AppLocalizations.of(context).manifestation,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              user!.manifestationName!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                        )),
                        */
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                AppLocalizations.of(context).selectCourse,
                                style: TextStyle(
                                    color: themeChange.darkTheme
                                        ? CupertinoColors.white
                                        : CupertinoColors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ThemeHelper.primaryColor,
                                  ),
                                  color: ThemeHelper.primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              width: double.infinity,
                              padding: EdgeInsets.all(8),
                              child: Observer(
                                  builder: (_) => DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                          isExpanded: true,
                                          hint: Text(
                                            "Seleziona un corso",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          iconEnabledColor: Colors.white,
                                          dropdownColor:
                                              ThemeHelper.primaryColor,
                                          items: dropDownListManifestation(),
                                          value: dropDownStore.selectedItem,
                                          onChanged: (value) {
                                            IdValueObject selectedItem =
                                                value as IdValueObject;
                                            dropDownStore
                                                .setSelectedItem(selectedItem);
                                            selectedCourse = getCourse
                                                .firstWhere((element) =>
                                                    element.id ==
                                                    selectedItem.id);
                                            dropDownStore.setSelected(true);
                                          }))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Observer(
                              builder: (_) => Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Colors.black,
                                  ),
                                  onPressed: () {
                                    clickButtonToScan(
                                        dropDownStore.isSelected, context);
                                  },
                                  child: Text(dropDownStore.isSelected
                                      ? AppLocalizations.of(context).go_to_scan
                                      : AppLocalizations.of(context)
                                          .selectCourse),
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                );
              } else if (snapshot.hasError) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 300,
                              child: TextButton.icon(
                                  icon: Icon(Icons.qr_code),
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () {
                                    User updateUser = user!;
                                    DatabaseHelper.instance
                                        .update(updateUser)
                                        .then((value) =>
                                            Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          HomePageScreen(
                                                            user: user!,
                                                          )),
                                              ModalRoute.withName('/home'),
                                            ));
                                  },
                                  label: Text('Controllo accessi')))
                        ]));
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            })));
  }

  void clickButtonToScan(bool enabled, BuildContext context) async {
    if (enabled) {
      User updateUser = user!;
      updateUser.courseId = selectedCourse.id;
      updateUser.courseName = selectedCourse.description;
      DatabaseHelper.instance
          .update(updateUser)
          .then((value) => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomePageScreen(
                          user: user!,
                        )),
                ModalRoute.withName('/home'),
              ));
    } else {
      return;
    }
  }

  List<DropdownMenuItem<IdValueObject>> dropDownListManifestation() {
    return idValueList
        .map((e) => DropdownMenuItem(
              child: Padding(
                child: Text(
                  e.value,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                padding: EdgeInsets.all(4),
              ),
              value: e,
            ))
        .toList();
  }

  Future<List<Course>> getCourses(
      User user, EnvirormentProvider envirormentProvider) {
    Future<List<Course>> requestCourse = courseService.requestCourses(
        user.manifestationId.toString(),
        user.id!,
        envirormentProvider.envirormentState);
    return requestCourse;
  }

  List<IdValueObject> mapCourseToIdValue(List<Course> list) {
    List<IdValueObject> idValueList = [];
    list.forEach((element) {
      idValueList
          .add(IdValueObject(id: element.id, value: element.description));
    });
    return idValueList;
  }
}
