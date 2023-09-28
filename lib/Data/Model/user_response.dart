class UserResponse {
  String avatarUrl;
  String url;
  String name;
  String bio;

  UserResponse(this.avatarUrl, this.url, this.name, this.bio);

  UserResponse.fromJson(Map<String, dynamic> json)
      : avatarUrl = json['avatar_url'],
        url = json['url'],
        name = json['name'],
        bio = json['bio'];
}
