class User {
  final String avatarUrl;
  final String url;
  final String name;
  final String bio;

  User(this.avatarUrl, this.url, this.name, this.bio);

  User.empty({String empty = 'no data'})
      : avatarUrl = empty,
        url = empty,
        name = empty,
        bio = empty;

  User.fromJson(Map<String, dynamic> json)
      : avatarUrl = json['avatar_url'],
        url = json['url'],
        name = json['name'],
        bio = json['bio'];
}
