import 'package:flutter/material.dart';
import 'package:photos/widgets/photos_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photos',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Photos'),
        ),
        body: PhotosScreen(),
      ),
    );
  }
}
