//{userId: 1, id: 1, title: quidem molestiae enim}
class User {
  final int userId;
  final int id;
  final String title;

  User({this.userId, this.id, this.title});

  factory User.fromJSON(Map<String, dynamic> json) =>
      User(userId: json["userId"], id: json["id"], title: json["title"]);

  Map<String, dynamic> toJson() =>
      {"userId": this.userId, "id": this.id, "title": this.title};

  @override
  String toString() {
    // TODO: implement toString
    return "userId :$userId\t"
        "id :$id \t"
        "title :$title";
  }
}
