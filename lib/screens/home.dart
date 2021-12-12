import 'package:flutter/material.dart';
import 'package:mediapp/component/appbar.dart';
import 'package:mediapp/models/users_model.dart';
import 'package:mediapp/screens/user_records.dart';

class Home extends StatelessWidget {
  final users = List.generate(20, (i) => User(i, 'Vishwajeet $i'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MediAppbar(title: 'Members'),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(users[index].name),
                leading: const Icon(Icons.person),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              UserRecords(user: users[index])))
                },
              );
            }));
  }
}
