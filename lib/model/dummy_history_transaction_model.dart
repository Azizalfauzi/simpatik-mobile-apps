part of 'models.dart';

class DummyHistoryModel {
  int id;
  String name;
  String image;
  String location;
  int star;
  DummyHistoryModel(
    this.id,
    this.name,
    this.image,
    this.location,
    this.star,
  );
}

List<DummyHistoryModel> mockHistory = [
  DummyHistoryModel(
    1,
    "Ranca Upas",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    9,
  ),
  DummyHistoryModel(
    2,
    "Farm House Lembang",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    8,
  ),
  DummyHistoryModel(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    8,
  ),
  DummyHistoryModel(
    4,
    "Tangkuban Perahu",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    9,
  ),
];
