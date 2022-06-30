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
    "Hotel",
    "assets/images/ic_hotel.png",
    "Ciwidey",
    9,
  ),
  DummyFasilitas(
    2,
    "Toilet",
    "assets/images/ic_toilet.png",
    "Lembang",
    8,
  ),
  DummyFasilitas(
    3,
    "Parkir Area",
    "assets/images/ic_parkir.png",
    "Ciwidey",
    8,
  ),
  DummyFasilitas(
    4,
    "Wifi Area",
    "assets/images/ic_wifi.png",
    "Lembang",
    9,
  ),
  DummyFasilitas(
    5,
    "Kantin Area",
    "assets/images/ic_kantin.png",
    "Lembang",
    9,
  ),
];
