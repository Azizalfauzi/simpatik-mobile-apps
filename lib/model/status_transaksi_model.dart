part of 'models.dart';

class StatusTransaksiModel {
  StatusTransaksiModel({
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
  String bankNumber;
  String bankName;
  String bankUserName;

  factory StatusTransaksiModel.fromJson(Map<String, dynamic> json) =>
      StatusTransaksiModel(
        id: json["id"],
        idBank: json["id_bank"],
        idWisata: json["id_wisata"],
        namaPelanggan: json["nama_pelanggan"],
        emailPelanggan: json["email_pelanggan"],
        nohpPelanggan: json["nohp_pelanggan"],
        tanggalPesan: json["tanggal_pesan"],
        totalHarga: json["total_harga"],
        jumlahTiket: json["jumlah_tiket"],
        buktiBayar: json["bukti_bayar"] == null ? "" : json["bukti_bayar"],
        statusTransaksi: json["status_transaksi"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        wisataName: json["wisata_name"],
        bankNumber: json["bank_number"],
        bankName: json["bank_name"],
        bankUserName: json["bank_user_name"],
      );
}
