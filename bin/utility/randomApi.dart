import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

//Fetch data from the Random API
//    {userId: 1, id: 1, title: quidem molestiae enim}
Future<Map<String, dynamic>> fetchSingleAlbum() async {
  final response =
      await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw new Exception("Failed to connect to the Random API");
  }
}

//Fetch data from the Random API
//Future<List<Map<String,dynamic>>> fetchAllAlbums() async{
Future<List<dynamic>> fetchAllAlbums() async {
  final response =
      await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums'));
  if (response.statusCode == 200) {
    var all = jsonDecode(response.body);
    return all;
  } else {
    throw Exception("Failed to connect to the Random API");
  }
}

Future<List<dynamic>> fetchRandomAPI() async {
  final _apiURL = "https://randomuser.me/api/?results=50";
  //call the random API
  var response = await http.get(Uri.parse(_apiURL));
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['results'];
  } else {
    throw Exception("Failed to connect to the Random API");
  }
}

//https://daimler.neptune-software.cloud/api/entity/users
Future<List<dynamic>> fetchPlanet9API() async {
  const _apiURL = 'https://daimler.neptune-software.cloud/api/entity/users';
  const _authHeader = 'Basic YWRtaW46VGFrc2ltMTI=';

  final response = await http.get(
    Uri.parse(_apiURL),
    // Send authorization headers to the backend.
    headers: {
      HttpHeaders.authorizationHeader: _authHeader,
    },
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception("Failed to connect to the Random API");
  }
}
