import 'package:flutter/material.dart';

import 'package:lista_usuarios/models/user.dart';
import 'package:lista_usuarios/services/api.dart' as api;
import 'package:lista_usuarios/widgets/user_detail.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  Future<List<User>> futureUsersList;

  @override
  void initState() {
    super.initState();
    futureUsersList = api.fetchUsersList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: futureUsersList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<User> users = snapshot.data;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(users[index].name),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserDetail(),
                      settings: RouteSettings(
                        arguments: users[index],
                      ),
                    ),
                  );
                },
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
