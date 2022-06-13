part of 'models.dart';

class DummyFasilitas {
  int id;
  String name;
  String image;
  String location;
  int star;
  DummyFasilitas(
    this.id,
    this.name,
    this.image,
    this.location,
    this.star,
  );
}

List<DummyFasilitas> mockFasilitas = [
  DummyFasilitas(
    1,
    "Ranca Upas",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    9,
  ),
  DummyFasilitas(
    2,
    "Farm House Lembang",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    8,
  ),
  DummyFasilitas(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    8,
  ),
  DummyFasilitas(
    4,
    "Tangkuban Perahu",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    9,
  ),
];
