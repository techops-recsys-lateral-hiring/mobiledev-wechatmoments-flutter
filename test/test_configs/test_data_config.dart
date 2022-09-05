// ignore_for_file: constant_identifier_names

import 'package:mobiledev_wechatmoments_flutter/model/mymodels.dart';

class TestDataConfig {
  static const String USER = "jsmith";
  static const String URL_HOST = "http://localhost:2727";

  static User JSON_USER = User(
      profile:
          "http://img2.findthebest.com/sites/default/files/688/media/images/Mingle_159902_i0.png",
      avatar:
          "http://info.thoughtworks.com/rs/thoughtworks2/images/glyph_badge.png",
      nick: "John Smith",
      username: TestDataConfig.USER);

  static const JSON_TWEETS = [
    {
      "content": "Good.",
      "sender": [
        {
          "username": "outman",
          "nick": "Super hero",
          "avatar":
              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRJm8UXZ0mYtjv1a48RKkFkdyd4kOWLJB0o_l7GuTS8-q8VF64w"
        }
      ]
    }
  ];

  static const JSON_COMMENTS = [
    [
      {
        "content": "Good.",
        "sender": [
          {
            "username": "outman",
            "nick": "Super hero",
            "avatar":
                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRJm8UXZ0mYtjv1a48RKkFkdyd4kOWLJB0o_l7GuTS8-q8VF64w"
          }
        ]
      }
    ]
  ];
}
