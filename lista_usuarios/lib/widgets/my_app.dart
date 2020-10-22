import 'package:flutter/material.dart';

import 'package:lista_usuarios/widgets/users_list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Usuários',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista de Usuários"),
        ),
        body: UsersList(),
      ),
    );
  }
}
