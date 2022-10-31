import "package:uuid/uuid.dart";

class Role {
  late final Uuid id;
  late final String name;

  Role({required this.id, required this.name});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;

    return data;
  }

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
