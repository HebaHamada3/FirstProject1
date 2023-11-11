import 'package:http/http.dart' as http;
import '../model/makeupModel.dart';

class AppServices {
  static Future getData() async {
    var response = await http.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return makeupFromJson(jsonString);
    }
  }
}
