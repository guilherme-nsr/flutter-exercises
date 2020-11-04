import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:photos/models/photo.dart';
import 'package:photos/services/api.dart';
import 'package:photos/widgets/photos_grid.dart';

class PhotosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Photo>>(
      future: fetchPhotos(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);

        return snapshot.hasData
            ? PhotosGrid(photos: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}
