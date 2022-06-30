part of 'models.dart';

class WisataModel {
  WisataModel({
    required this.id,
    required this.wisataName,
    required this.tiketPrice,
    required this.wisataRating,
    required this.wisataDescription,
    required this.wisataLocation,
    required this.wisataImage,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String wisataName;
  String tiketPrice;
  String wisataRating;
  dynamic wisataDescription;
  dynamic wisataLocation;
  String wisataImage;
  bool status;
  DateTime createdAt;
  DateTime updatedAt;

  factory WisataModel.fromJson(Map<String, dynamic> json) => WisataModel(
        id: json["id"],
        wisataName: json["wisata_name"],
        tiketPrice: json["tiket_price"],
        wisataRating: json["wisata_rating"],
        wisataDescription: json["wisata_description"],
        wisataLocation: json["wisata_location"],
        wisataImage: json["wisata_image"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
