import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediapp/component/appbar.dart';
import 'package:mediapp/models/users_model.dart';

class UserRecords extends StatelessWidget {
  const UserRecords({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediAppbar(title: user.name),
      body: Center(child: Text(user.name))
    );
  }
}