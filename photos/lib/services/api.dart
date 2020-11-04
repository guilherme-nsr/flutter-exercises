import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:photos/models/photo.dart';

final photosEndpoint = 'https://jsonplaceholder.typicode.com/photos';

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response = await client.get(photosEndpoint);

  return compute(parsePhotos, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}
