part of 'models.dart';

class DummyOngoingModel {
  int id;
  String name;
  String image;
  String location;
  int star;
  DummyOngoingModel(
    this.id,
    this.name,
    this.image,
    this.location,
    this.star,
  );
}

List<DummyOngoingModel> mockOnGoing = [
  DummyOngoingModel(
    1,
    "Ranca Upas",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    9,
  ),
  DummyOngoingModel(
    2,
    "Farm House Lembang",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    8,
  ),
  DummyOngoingModel(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    8,
  ),
  DummyOngoingModel(
    4,
    "Tangkuban Perahu",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    9,
  ),
];
