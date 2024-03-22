import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<List<dynamic>> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> responseList = jsonDecode(response.body);
      return responseList;
    } else {
      throw Exception(
          "There is an error with StatusCode ${response.statusCode} at Api().get(...)");
    }
  }
}
