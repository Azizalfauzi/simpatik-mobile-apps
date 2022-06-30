part of 'models.dart';

class TransaksiModel {
  TransaksiModel({
    required this.idBank,
    required this.idWisata,
    required this.namaPelanggan,
    required this.emailPelanggan,
    required this.nohpPelanggan,
    required this.tanggalPesan,
    required this.statusTransaksi,
    required this.jumlahTiket,
    required this.totalHarga,
    required this.buktiBayar,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  int idBank;
  int idWisata;
  String namaPelanggan;
  String emailPelanggan;
  String nohpPelanggan;
  String tanggalPesan;
  int statusTransaksi;
  int jumlahTiket;
  int totalHarga;
  String buktiBayar;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory TransaksiModel.fromJson(Map<String, dynamic> json) => TransaksiModel(
        idBank: json["id_bank"],
        idWisata: json["id_wisata"],
        namaPelanggan: json["nama_pelanggan"],
        emailPelanggan: json["email_pelanggan"],
        nohpPelanggan: json["nohp_pelanggan"],
        tanggalPesan: json["tanggal_pesan"],
        statusTransaksi: json["status_transaksi"],
        jumlahTiket: json["jumlah_tiket"],
        totalHarga: json["total_harga"],
        buktiBayar: json["bukti_bayar"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );
}
