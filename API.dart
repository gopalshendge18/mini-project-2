import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nlp/API.dart';

Future<String> fetchdata(String user, String ans ) async {
  http.Response response =
      await http.get(Uri.parse('https://myapies.herokuapp.com/?user=$user&standard=$ans'));
      

  Map<String,dynamic> data = jsonDecode(response.body);
  if (response.statusCode == 200) {
    if (data['results'] != null) { 
      return data['results'];
      
    }
    return "asddaghgsdd";
  } else {
    return "kiran";
  }
}
