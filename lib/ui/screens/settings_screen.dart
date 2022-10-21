import 'package:flutter/material.dart';

import '../../model/user_model/user.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Settings screen'),
    );
  }
}
