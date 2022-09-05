class UrlConstants {
  static const host = "http://localhost:2727";

  static String userProfleUrl(String name) {
    return "${UrlConstants.host}/user/$name";
  }

  static String tweetsUrl(String name) {
    return "${UrlConstants.host}/user/$name/tweets";
  }
}
