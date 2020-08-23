import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/guilherme.jpeg'),
              ),
              Text(
                'Guilherme Ribeiro',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100
                ),
              ),
              _buildCard('+55 86 98874 5298', Icons.phone),
              _buildCard('desaribeiro.guilherme@gmail.com', Icons.email),
            ],
          ),
        ),
      ),
    );
  }

  Card _buildCard(String text, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.teal,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
