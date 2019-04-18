import 'package:meta/meta.dart';

class User {
  static const String _keyName = 'name';
  static const String _keyEmail = 'email';
  final String name;
  final String email;

  const User({@required this.name, @required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(name: json[_keyName], email: json[_keyEmail]);
  }

  Map<String, dynamic> toJson() {
    return {_keyName: name, _keyEmail: email};
  }

  static List<User> fromJsonList(List<Map<String, dynamic>> jsonList) {
    var list = List<User>();
    for (var json in jsonList) {
      list.add(User.fromJson(json));
    }
    return list;
  }
}
