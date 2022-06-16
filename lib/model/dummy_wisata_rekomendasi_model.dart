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
    "assets/images/image_destination1.png",
    "Ciwidey",
    9,
  ),
  DummyWisataRekomendasi(
    2,
    "Farm House Lembang",
    "assets/images/image_destination2.png",
    "Lembang",
    8,
  ),
  DummyWisataRekomendasi(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/image_destination3.png",
    "Ciwidey",
    8,
  ),
  DummyWisataRekomendasi(
    4,
    "Tangkuban Perahu",
    "assets/images/image_destination4.png",
    "Lembang",
    9,
  ),
];
