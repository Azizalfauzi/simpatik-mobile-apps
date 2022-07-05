part of 'services.dart';

class AuthServices {
  static Future<RegisterModel> registerApp(
    String username,
    String password,
    String confirmPassword,
    String email,
    String name,
    String alamat,
    String notelp,
  ) async {
    try {
      String apiURL = urlSimpatik + "register";

      Map<String, String> headers = {
        "Content-Type": "application/json",
        "Accept": "application/json",
      };

      var body = json.encode({
        "username": username,
        "password": password,
        "conPassword": confirmPassword,
        "email": email,
        "name": name,
        "alamat": alamat,
        "notelp": notelp,
      });

      var response = await http.post(
        Uri.parse(apiURL),
        headers: headers,
        body: body,
      );
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        RegisterModel result = RegisterModel.fromJson(data);
        return result; // you can mapping json object also here
      } else {
        return throw Exception('Gagal melakukan registrasi!');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<LoginModel> loginApp(
    String email,
    String password,
  ) async {
    try {
      String apiURL = urlSimpatik + "login";

      Map<String, String> headers = {
        "Content-Type": "application/json",
        "Accept": "application/json",
      };

      var body = json.encode({
        "email": email,
        "password": password,
      });

      var apiResult = await http.post(
        Uri.parse(apiURL),
        headers: headers,
        body: body,
      );

      if (apiResult.statusCode == 200) {
        var response = json.decode(apiResult.body);
        LoginModel result = LoginModel.fromJson(response);
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setInt('id', result.data.user.id);
        preferences.setString('name', result.data.user.username);
        preferences.setString('email', result.data.user.email);
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
    preferences.remove('id');
    preferences.remove('name');
    preferences.remove('email');
  }
}
