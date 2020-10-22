import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:lista_usuarios/models/user.dart';

Future<List<User>> fetchUsersList() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/users');

  if (response.statusCode == 200) {
    final List usersListRaw = jsonDecode(response.body);

    List<User> usersList = [];

    usersListRaw.forEach((element) {
      usersList.add(User.fromJson(element));
    });

    return usersList;
  } else {
    throw Exception('Failed to load User');
  }
}
