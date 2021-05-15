import 'futureUtility.dart';
//{userId: 1, id: 1, title: quidem molestiae enim}
class Name{
  final String title;
  final String first;
  final String last;

  Name({this.title,this.first,this.last});
  factory Name.fromJSON(Map<String,dynamic> json)=>Name(
    title: json["title"],
    first:json["first"],
    last:json["last"]
  );

  @override
  String toString() {
    // TODO: implement toString
    return  "title :$title\t"
        "first :$first \t"
        "last :$last"
    ;
  }
}
/*
"picture": {
"large": "https://randomuser.me/api/portraits/women/47.jpg",
"medium": "https://randomuser.me/api/portraits/med/women/47.jpg",
"thumbnail": "https://randomuser.me/api/portraits/thumb/women/47.jpg"
}
*/

class Picture{
  final String large;
  final String medium;
  final String thumbnail;

  Picture({this.large,this.medium,this.thumbnail});

  factory Picture.fromJSON(Map<String,dynamic> json)=>
     Picture(large:json["large"],medium: json["medium"],thumbnail: json["thumbnail"]);

  @override
  String toString() {
    // TODO: implement toString
    return  "large :$large\t"
        "medium :$medium \t"
        "thumbnail :$thumbnail"
    ;
  }


}


class RandomUser{
  final String gender;
  final Name name;
  final String email;
  final Picture picture;

  RandomUser({ this.gender,this.name, this.email,this.picture});

  factory RandomUser.fromJSON(Map<String,dynamic> json)=>
       RandomUser(gender:json["gender"],
                name:Name.fromJSON(json["name"]),
                email: json["email"],
                picture: Picture.fromJSON(json["picture"])
        );



  @override
  String toString() {
    // TODO: implement toString
    return  "gender :$gender\t"
            "email :$email \t"
            "name :$name  \t"
            "picture :$picture"
    ;
  }

}
