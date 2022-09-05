// ignore_for_file: unnecessary_this

class Tweet {
  String? content;

  Tweet({this.content});

  Tweet.fromJson(Map<String, dynamic> json) {
    content = json['content'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = this.content;
    return data;
  }
}

class User {
  String? nick;
  String? username;
  String? avatar;
  String? profile;

  User({this.nick, this.username, this.avatar, this.profile});

  User.fromJson(Map<String, dynamic> json) {
    nick = json['nick'];
    username = json['username'];
    avatar = json['avatar'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nick'] = this.nick;
    data['username'] = this.username;
    data['avatar'] = this.avatar;
    data['profile'] = this.profile;
    return data;
  }
}

class Images {
  String? url;

  Images({this.url});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = this.url;
    return data;
  }
}

class Comments {
  String? content;
  User? sender;

  Comments({this.content, this.sender});

  Comments.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    sender = json['sender'] != null ? User.fromJson(json['sender']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = this.content;
    if (this.sender != null) {
      data['sender'] = this.sender!.toJson();
    }
    return data;
  }
}
