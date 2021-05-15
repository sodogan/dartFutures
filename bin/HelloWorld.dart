import 'dart:convert';

import 'utility/invalidAgeException.dart';
import 'utility/randomUser.dart';
import 'utility/user.dart';
import 'utility/person.dart';
import 'utility/futureUtility.dart';
import 'utility/randomApi.dart';

void main(List<String> arguments) async {

//Classic like promise style!
greet("solen")
.then((userName)=>userName)
.then((response)=>print("My motto: $response"))
.catchError((err)=>print(err));


var util = new FutureUtility();
print(await util.order);
/* Fetching the Planet9  API
 *
*/
  List<dynamic> planet9Users = await fetchPlanet9API();
  print("Planet9 API Users:$planet9Users");

/* Fetching the Random API
 *
 */
  List<dynamic> randomUsers = await fetchRandomAPI();
  List<RandomUser> randomUserList =
      randomUsers.map((randomUser) => RandomUser.fromJSON(randomUser)).toList();
  print("Random API:$randomUserList");

//fetch single Album
  Map<String, dynamic> album = await fetchSingleAlbum();
//can create an object from this!
  var user = User.fromJSON(album);
  print(user);
//print(album);

//Fetch all the albums
  List<dynamic> allAlbums = await fetchAllAlbums();
  print(allAlbums);

  List<User> allUsers = allAlbums.map((user) => User.fromJSON(user)).toList();

  print(allUsers);
} //end Main
