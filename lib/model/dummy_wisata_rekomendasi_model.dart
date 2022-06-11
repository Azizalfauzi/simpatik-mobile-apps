part of 'models.dart';
class DummyWisataRekomendasi {
  int id;
  String name;
  String image;
  String location;
  int star;
  DummyWisataRekomendasi(
    this.id,
    this.name,
    this.image,
    this.location,
    this.star,
  );
}

List<DummyWisataRekomendasi> mockRekomendasi = [
  DummyWisataRekomendasi(
    1,
    "Ranca Upas",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    9,
  ),
  DummyWisataRekomendasi(
    2,
    "Farm House Lembang",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    8,
  ),
  DummyWisataRekomendasi(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/ic_rancaupas.jpg",
    "Ciwidey",
    8,
  ),
  DummyWisataRekomendasi(
    4,
    "Tangkuban Perahu",
    "assets/images/ic_rancaupas.jpg",
    "Lembang",
    9,
  ),
];
