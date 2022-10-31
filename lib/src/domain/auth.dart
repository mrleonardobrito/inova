import 'package:inova/src/domain/role.dart';
import 'package:uuid/uuid.dart';

class Auth {
  late final Uuid id;
  late final String email;
  late final String passwd;
  late final bool isautenticated;
  late final Role role;

  Auth(
      {required this.id,
      required this.email,
      required this.passwd,
      required this.isautenticated,
      required this.role});

  Auth.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    passwd = json['passwd'];
    isautenticated = json['isautenticated'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['passwd'] = this.passwd;
    data['isautenticated'] = this.isautenticated;
    data['role'] = this.role;
    return data;
  }
}
