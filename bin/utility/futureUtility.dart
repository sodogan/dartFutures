import './user.dart';

//Future samples that does greeting!
Future<String> greet(username) {
  return Future.value(
    "Welcome $username",
  );
}

Future<User> getUser(username) {
  return Future.value(
    new User(id: username, userId: username, title: "testing"),
  );
}

Future<String> greetAsync() async {
  return await greet("sodogan");
}

Future<User> getUserAsync() async {
  return await getUser("sodogan");
}

//Utility class that does async and await!
class FutureUtility {
  String _order;

  Future<String> _orderLatte() {
    Future<String> future = new Future.delayed(
      Duration(seconds: 2),
          () => "Latte please",
    );
    return future;
  }

  //A getter that will fetch the order!
  Future<String> get order async {
    this._order = await _orderLatte();
    return this._order;
  }
}
