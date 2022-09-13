import 'package:http/http.dart' as http;
import 'package:mobiledev_wechatmoments_flutter/config/url_constants.dart';
import '../model/mymodels.dart';
import 'dart:convert';

class UserService {
  Future<User> getUserProfile(String userName) async {
    final url = UrlConstants.userProfleUrl(userName);
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      User userData = User.fromJson(body);

      return userData;
    } else {
      throw "Unable to retrieve users.";
    }
  }
}
