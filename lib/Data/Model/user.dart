class User {
  final String avatarUrl;
  final String url;
  final String name;

  User(this.avatarUrl, this.url, this.name);

  User.empty({String empty = 'no data'})
      : avatarUrl = empty,
        url = empty,
        name = empty;

  User.fromJson(Map<String, dynamic> json)
      : avatarUrl = json['avatar_url'],
        url = json['url'],
        name = json['name'];
}
