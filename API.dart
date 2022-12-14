import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nlp/API.dart';

Future<Map> fetchdata(String user, String ans) async {
  http.Response response = await http
      .get(Uri.parse('https://10.40.3.148:8000/?user=$user&standard=$ans'));

  Map<String, dynamic> data = jsonDecode(response.body);
  if (response.statusCode == 200) {
    if (data['results'] != null) {
      return data;
    }
    return data;
  } else {
    return data;
  }
}
