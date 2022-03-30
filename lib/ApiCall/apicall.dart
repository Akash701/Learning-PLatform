import 'package:http/http.dart' as http;
import 'dart:convert';

const Api1 = "http://learningapp.e8demo.com";
const Api2 = "/api/home_page/";

class Networking {
  Networking(this.url1, this.url2);

  final String url1;
  final String url2;
  Future apicall() async {
    http.Response response = await http.get(Uri.http(url1, url2));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

class GetUserData {
  Future<dynamic> UserInfo(cityName) async {
    Networking network = Networking(Api1, Api2);
    var UserData = await network.apicall();
    return UserData;
  }
}
