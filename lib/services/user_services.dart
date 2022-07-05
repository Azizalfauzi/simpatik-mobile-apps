part of 'services.dart';

class UserServices {
  static Future<UserGetModel> getDataUser() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      int? id = preferences.getInt('id');
      final reponse = await Dio().get(urlSimpatik + 'profile/' + id.toString());
      final json = reponse.data;
      print(json);
      if (reponse.statusCode == 200) {
        UserGetModel result = UserGetModel.fromJson(json['data']);
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

  static Future<int> updateUser(
    String name,
    String email,
    String noTelp,
    String alamat,
  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int? id = preferences.getInt('id');
    String apiURL = urlSimpatik + "profile/" + id.toString();

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    var body = json.encode({
      "name": name,
      "email": email,
      "notelp": noTelp,
      "alamat": alamat,
    });

    var response = await http.put(
      Uri.parse(apiURL),
      headers: headers,
      body: body,
    );
    // print(response.body);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      return data['data'];
    } else {
      return throw Exception('Gagal melakukan update user!');
    }
  }
}
