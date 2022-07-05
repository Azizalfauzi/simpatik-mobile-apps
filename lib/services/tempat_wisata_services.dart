part of 'services.dart';

class TempatWisataServices {
  static Future<List<WisataModel>> getDataWisata() async {
    try {
     
      final reponse = await Dio().get(urlSimpatik + 'tempat-wisata');
      final json = reponse.data;
      print(json);
      if (reponse.statusCode == 200) {
        List<WisataModel> result = (json['data'] as Iterable)
            .map((e) => WisataModel.fromJson(e))
            .toList();

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
