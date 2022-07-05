part of 'models.dart';

class RegisterModel {
  RegisterModel({
    required this.code,
    required this.message,
    required this.data,
  });

  int code;
  String message;
  Data data;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  Data({
    required this.username,
    required this.email,
    required this.name,
    required this.alamat,
    required this.notelp,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String username;
  String email;
  String name;
  String alamat;
  String notelp;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        username: json["username"],
        email: json["email"],
        name: json["name"],
        alamat: json["alamat"],
        notelp: json["notelp"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );
}
