import 'package:flutter/material.dart';
import 'package:photos/models/photo.dart';
import 'package:photos/widgets/photo_details_screen.dart';

class PhotosGrid extends StatelessWidget {
  final List<Photo> photos;

  const PhotosGrid({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        print('downloading image $index');
        return GestureDetector(
          child: Image.network(photos[index].thumbnailUrl),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PhotoDetailsScreen(),
                settings: RouteSettings(
                  arguments: photos[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
