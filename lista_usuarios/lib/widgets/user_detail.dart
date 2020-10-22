import 'package:flutter/material.dart';

import 'package:lista_usuarios/models/user.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      title: 'User details',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name),
              Text(user.userName),
              Text(user.email),
            ],
          ),
        ),
      ),
    );
  }
}
