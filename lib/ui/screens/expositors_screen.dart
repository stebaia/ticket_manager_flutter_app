import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../model/user_model/user.dart';

class ExpositorsScreen extends StatelessWidget {
  const ExpositorsScreen({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Scan List'),
    );
  }
}
