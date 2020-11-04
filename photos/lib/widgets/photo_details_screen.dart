import 'package:flutter/material.dart';
import 'package:photos/models/photo.dart';

class PhotoDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Photo photo = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo details'),
      ),
      body: Center(
        child: Image.network(photo.url),
      ),
    );
  }
}
