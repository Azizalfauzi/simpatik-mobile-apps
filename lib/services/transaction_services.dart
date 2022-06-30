part of 'services.dart';

class TransactionServices {
  static Future<TransaksiModel> createTransaction(
    int idBank,
    int idWisata,
    String namaPelanggan,
    String emailPelanggan,
    String noHpPelanggan,
    int statusTransaksi,
    int jumlahTiket,
    int totalHarga,
    String buktiBayar,
    String tanggalPesan,
  ) async {
    String apiURL = urlSimpatik + "transaksi";

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
      "tanggal_pesan": tanggalPesan,
    });

    var response = await http.post(
      Uri.parse(apiURL),
      headers: headers,
      body: body,
    );
    // print(response.body);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      TransaksiModel result = TransaksiModel.fromJson(data['data']);
      return result;
    } else {
      return throw Exception('Gagal melakukan registrasi!');
    }
  }

  static Future<List<StatusTransaksiModel>> getDataTransaksi() async {
    try {
      final reponse = await Dio().get(urlSimpatik + 'transaksi');
      final json = reponse.data;

      if (reponse.statusCode == 200) {
        print(json['data']);
        List<StatusTransaksiModel> result = (json['data'] as Iterable)
            .map((e) => StatusTransaksiModel.fromJson(e))
            .toList();
        print(result.toString());
        return result;
      } else if (reponse.statusCode == 404) {
        return throw Exception(json['message']);
      } else {
        return throw Exception(json['msg']);
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<TranasksiDetailData> getDetailTranasksi(int id) async {
    try {
      final reponse =
          await Dio().get(urlSimpatik + 'transaksi/' + id.toString());
      final json = reponse.data;
      print(json);
      if (reponse.statusCode == 200) {
        TranasksiDetailData result = TranasksiDetailData.fromJson(json['data']);
        print(result);
        return result;
      } else if (reponse.statusCode == 404) {
        return throw Exception(json['message']);
      } else {
        return throw Exception(json['msg']);
      }
    } catch (e) {
      rethrow;
    }
  }
}
