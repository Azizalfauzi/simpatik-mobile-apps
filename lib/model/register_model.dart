part of 'models.dart';

class RegitserModel {
  RegitserModel({
    required this.code,
    required this.message,
    required this.data,
  });

  int code;
  String message;
  DataRegister data;

  factory RegitserModel.fromJson(Map<String, dynamic> json) => RegitserModel(
        code: json["code"],
        message: json["message"],
        data: DataRegister.fromJson(json["data"]),
      );
}

class DataRegister {
  DataRegister({
   required this.username,
   required this.email,
   required this.updatedAt,
   required this.createdAt,
   required this.id,
  });

  String username;
  String email;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory DataRegister.fromJson(Map<String, dynamic> json) => DataRegister(
        username: json["username"],
        email: json["email"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

}
