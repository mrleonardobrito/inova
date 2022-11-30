import 'package:uuid/uuid.dart';

class Auth {
  late final Uuid id;
  late final Uuid idUser;
  late final String email;
  late final String passwd;
  late final bool isautenticated;
  late final String role;

  Auth(
      {required this.id,
      required this.idUser,
      required this.email,
      required this.passwd,
      required this.isautenticated,
      required this.role});

  Auth.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idUser = json['id_user'];
    email = json['email'];
    passwd = json['passwd'];
    isautenticated = json['isautenticated'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['id_user'] = idUser;
    data['email'] = email;
    data['passwd'] = passwd;
    data['isautenticated'] = isautenticated;
    data['role'] = role;
    return data;
  }
}
