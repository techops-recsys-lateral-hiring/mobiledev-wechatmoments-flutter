import 'package:http/http.dart' as http;
import 'package:mobiledev_wechatmoments_flutter/config/url_constants.dart';
import '../model/mymodels.dart';
import 'dart:convert';

class TweetService {
  Future<List> getTweets(String userName) async {
    final url = UrlConstants.tweetsUrl(userName);
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      try {
        final tweets = body
            .map(
              (item) => Tweet.fromJson(item),
            )
            .toList();

        return tweets;
      } catch (e) {
        print(e);
        throw "Unable to retrieve tweets.";
      }
    } else {
      throw "Unable to retrieve tweets.";
    }
  }
}
