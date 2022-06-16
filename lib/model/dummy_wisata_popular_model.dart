part of 'models.dart';

class DummyWisataPopular {
  int id;
  String name;
  String image;
  String location;
  int rating;
  DummyWisataPopular(
    this.id,
    this.name,
    this.image,
    this.location,
    this.rating,
  );
}

List<DummyWisataPopular> mockPopular = [
  DummyWisataPopular(
    1,
    "Ranca Upas",
    "assets/images/image_destination1.png",
    "Ciwidey",
    9,
  ),
  DummyWisataPopular(
    2,
    "Farm House Lembang",
    "assets/images/image_destination2.png",
    "Lembang",
    8,
  ),
  DummyWisataPopular(
    3,
    "Kawah Putih Ciwidey",
    "assets/images/image_destination3.png",
    "Ciwidey",
    8,
  ),
  DummyWisataPopular(
    4,
    "Tangkuban Perahu",
    "assets/images/image_destination4.png",
    "Lembang",
    9,
  ),
];
