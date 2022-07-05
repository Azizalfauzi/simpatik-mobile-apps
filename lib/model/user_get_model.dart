part of 'models.dart';

class UserGetModel {
  UserGetModel({
    required this.id,
    required this.username,
    required this.email,
    required this.emailVerifiedAt,
    required this.alamat,
    required this.notelp,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String username;
  String email;
  dynamic emailVerifiedAt;
  String alamat;
  String notelp;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserGetModel.fromJson(Map<String, dynamic> json) => UserGetModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        alamat: json["alamat"],
        notelp: json["notelp"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
