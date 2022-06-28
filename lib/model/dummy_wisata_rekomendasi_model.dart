part of 'models.dart';

class DummyWisataRekomendasi {
  int id;
  String name;
  String image;
  String location;
  String deskripsi;
  int price;
  int star;

  DummyWisataRekomendasi(
    this.id,
    this.name,
    this.image,
    this.location,
    this.deskripsi,
    this.price,
    this.star,
  );
}

List<DummyWisataRekomendasi> mockRekomendasi = [
  DummyWisataRekomendasi(
    1,
    "Ranca Upas",
    "assets/images/image_destination1.png",
    "Ciwidey",
    "Lore is a documentary podcast on topics such as folklore, legends, and historical events, often with a focus on the macabre.",
    250000,
    9,
  ),
  DummyWisataRekomendasi(
    2,
    "Farm House Lembang",
    "assets/images/image_destination2.png",
    "Lembang",
    "Lore is a documentary podcast on topics such as folklore, legends, and historical events, often with a focus on the macabre.",
    550000,
    8,
  ),
  DummyWisataRekomendasi(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/image_destination3.png",
    "Ciwidey",
    "Lore is a documentary podcast on topics such as folklore, legends, and historical events, often with a focus on the macabre.",
    450000,
    8,
  ),
  DummyWisataRekomendasi(
    4,
    "Tangkuban Perahu",
    "assets/images/image_destination4.png",
    "Lembang",
    "Lore is a documentary podcast on topics such as folklore, legends, and historical events, often with a focus on the macabre.",
    350000,
    9,
  ),
];
