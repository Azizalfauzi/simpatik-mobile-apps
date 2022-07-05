part of 'models.dart';

class LoginModel {
  LoginModel({
    required this.code,
    required this.message,
    required this.data,
  });

  int code;
  String message;
  DataLogin data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        code: json["code"],
        message: json["message"],
        data: DataLogin.fromJson(json["data"]),
      );
}

class DataLogin {
  DataLogin({
    required this.accessToken,
    required this.tokenType,
    required this.user,
  });

  AccessToken accessToken;
  String tokenType;
  User user;

  factory DataLogin.fromJson(Map<String, dynamic> json) => DataLogin(
        accessToken: AccessToken.fromJson(json["access_token"]),
        tokenType: json["token_type"],
        user: User.fromJson(json["user"]),
      );
}

class AccessToken {
  AccessToken({
    required this.name,
    required this.abilities,
    required this.tokenableId,
    required this.tokenableType,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String name;
  List<String> abilities;
  int tokenableId;
  String tokenableType;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory AccessToken.fromJson(Map<String, dynamic> json) => AccessToken(
        name: json["name"],
        abilities: List<String>.from(json["abilities"].map((x) => x)),
        tokenableId: json["tokenable_id"],
        tokenableType: json["tokenable_type"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );
}

class User {
  User({
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

  factory User.fromJson(Map<String, dynamic> json) => User(
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
