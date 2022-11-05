import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_manager_flutter_app/model/expositor_mapper/expositor_mapper.dart';
import 'package:ticket_manager_flutter_app/model/user_model/user.dart';
import 'package:ticket_manager_flutter_app/network/get_user_extra_by_20_service.dart';
import 'package:ticket_manager_flutter_app/provider/envirorment_provider.dart';

class ExpositorDetailScreen extends StatefulWidget {
  const ExpositorDetailScreen(
      {Key? key, required this.user, this.idUtente, this.codice20})
      : super(key: key);

  final User user;
  final int? idUtente;
  final String? codice20;
  @override
  State<ExpositorDetailScreen> createState() => _ExpositorDetailScreenState();
}

class _ExpositorDetailScreenState extends State<ExpositorDetailScreen> {
  EnvirormentProvider envirormentProvider = EnvirormentProvider();
  late User user;
  late int? idUtente;
  late String? codice20;

  @override
  void initState() {
    user = widget.user;
    idUtente = widget.idUtente;
    codice20 = widget.codice20;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: requestGetUtente(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                child: Center(
              child: Text('retrived user'),
            ));
          } else if (snapshot.hasError) {
            return Container(
                child: Center(
              child: Text('failed api call'),
            ));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }));
  }

  Future<ExpoisitorMapper> requestGetUtente() {
    if (idUtente != null) {
      GetUserExtraByCode20Service getUserExtraByCode20Service =
          new GetUserExtraByCode20Service();
      Future<ExpoisitorMapper> resultGetUserExtraByCode20 =
          getUserExtraByCode20Service.requestUserExtraBy20(
              user.id!,
              user.manifestationId!,
              codice20!,
              envirormentProvider.envirormentState);
      return resultGetUserExtraByCode20;
    } else {
      GetUserExtraByCode20Service getUserExtraByCode20Service =
          new GetUserExtraByCode20Service();
      return getUserExtraByCode20Service.requestUserExtraBy20(
          user.id!,
          user.manifestationId!,
          codice20!,
          envirormentProvider.envirormentState);
    }
  }
}
