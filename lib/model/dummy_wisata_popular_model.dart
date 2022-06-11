part of 'models.dart';

class DummyWisataPopular {
  int id;
  String name;
  String image;
  String location;
  int star;
  DummyWisataPopular(
    this.id,
    this.name,
    this.image,
    this.location,
    this.star,
  );
}

List<DummyWisataPopular> mockPopular = [
  DummyWisataPopular(
    1,
    "Ranca Upas",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    9,
  ),
  DummyWisataPopular(
    2,
    "Farm House Lembang",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    8,
  ),
  DummyWisataPopular(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    8,
  ),
  DummyWisataPopular(
    4,
    "Tangkuban Perahu",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    9,
  ),
];
