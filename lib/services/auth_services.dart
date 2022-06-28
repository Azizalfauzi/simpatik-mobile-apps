part of 'services.dart';

class AuthServices {
  static Future<RegitserModel> registerApp(
    String email,
    String password,
    String confirmPassword,
    String username,
  ) async {
    try {
      String apiURL = urlSimpatik + "register";

      // Map<String, String> headers = {
      //   "Content-Type": "application/json",
      //   "Accept": "application/json",
      // };

      var body = json.encode({
        "email": email,
        "password": password,
        "conPassword": confirmPassword,
        "username": username,
      });

      var response = await http.post(
        Uri.parse(apiURL),
        body: body,
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        RegitserModel result = RegitserModel.fromJson(data);
        return result; // you can mapping json object also here
      } else {
        return throw Exception('Gagal melakukan registrasi!');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<LoginModel> loginApp(
    String username,
    String password,
  ) async {
    try {
      print(username + password);
      String apiURL = urlSimpatik + "login";

      Map<String, String> headers = {
        "Content-Type": "application/json",
        "Accept": "application/json",
      };

      var body = json.encode({
        "username": username,
        "password": password,
      });

      var apiResult = await http.post(
        Uri.parse(apiURL),
        headers: headers,
        body: body,
      );
      print(apiResult.body);
      if (apiResult.statusCode == 200) {
        var response = json.decode(apiResult.body);
        LoginModel result = LoginModel.fromJson(response);
        return result;
      } else {
        return throw Exception('Gagal melakukan login!');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('token');
    preferences.remove('id');
  }
}
