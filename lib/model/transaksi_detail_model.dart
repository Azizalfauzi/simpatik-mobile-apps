part of 'models.dart';

class TransaksiDetailData {
  TransaksiDetailData({
    required this.id,
    required this.idBank,
    required this.idWisata,
    required this.namaPelanggan,
    required this.emailPelanggan,
    required this.nohpPelanggan,
    required this.tanggalPesan,
    required this.totalHarga,
    required this.jumlahTiket,
    required this.buktiBayar,
    required this.statusTransaksi,
    required this.createdAt,
    required this.updatedAt,
    required this.wisataName,
    required this.wisataImage,
    required this.bankNumber,
    required this.bankName,
    required this.bankUserName,
  });

  int id;
  int idBank;
  int idWisata;
  String namaPelanggan;
  String emailPelanggan;
  String nohpPelanggan;
  String tanggalPesan;
  String totalHarga;
  int jumlahTiket;
  String buktiBayar;
  int statusTransaksi;
  DateTime createdAt;
  DateTime updatedAt;
  String wisataName;
  String wisataImage;
  String bankNumber;
  String bankName;
  String bankUserName;

  factory TransaksiDetailData.fromJson(Map<String, dynamic> json) =>
      TransaksiDetailData(
        id: json["id"],
        idBank: json["id_bank"],
        idWisata: json["id_wisata"],
        namaPelanggan: json["nama_pelanggan"],
        emailPelanggan: json["email_pelanggan"],
        nohpPelanggan: json["nohp_pelanggan"],
        tanggalPesan: json["tanggal_pesan"],
        totalHarga: json["total_harga"],
        jumlahTiket: json["jumlah_tiket"],
        buktiBayar: json["bukti_bayar"],
        statusTransaksi: json["status_transaksi"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        wisataName: json["wisata_name"],
        wisataImage: json["wisata_image"],
        bankNumber: json["bank_number"],
        bankName: json["bank_name"],
        bankUserName: json["bank_user_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_bank": idBank,
        "id_wisata": idWisata,
        "nama_pelanggan": namaPelanggan,
        "email_pelanggan": emailPelanggan,
        "nohp_pelanggan": nohpPelanggan,
        "tanggal_pesan": tanggalPesan,
        "total_harga": totalHarga,
        "jumlah_tiket": jumlahTiket,
        "bukti_bayar": buktiBayar,
        "status_transaksi": statusTransaksi,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "wisata_name": wisataName,
        "wisata_image": wisataImage,
        "bank_number": bankNumber,
        "bank_name": bankName,
        "bank_user_name": bankUserName,
      };
}
