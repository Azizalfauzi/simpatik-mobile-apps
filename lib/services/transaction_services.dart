part of 'services.dart';

class TransactionServices {
  static Future<String> createTransaction(
    String idBank,
    String idWisata,
    String namaPelanggan,
    String emailPelanggan,
    String noHpPelanggan,
    int statusTransaksi,
    int jumlahTiket,
    int totalHarga,
    String buktiBayar,
  ) async {
    String apiURL = "domain/login";

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    var body = json.encode({
      "id_bank": idBank,
      "id_wisata": idWisata,
      "nama_pelanggan": namaPelanggan,
      "email_pelanggan": emailPelanggan,
      "nohp_pelanggan": noHpPelanggan,
      "status_transaksi": statusTransaksi,
      "jumlah_tiket": jumlahTiket,
      "total_harga": totalHarga,
      "bukti_bayar": buktiBayar,
    });

    var apiResult = await http.post(
      Uri.parse(apiURL),
      headers: headers,
      body: body,
    );

    var jsonObject = json.decode(apiResult.body);
    if (apiResult.statusCode >= 300) {
      return jsonObject; // you can mapping json object also here
    } else {
      return jsonObject; // you can mapping json object also here
    }
  }
}
