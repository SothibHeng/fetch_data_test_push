class Post {

  late final int userId;
  late final int id;
  late final String title;
  late final String body;

  // Named constructor
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body
  });

  // Factory constructor
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  // convert to json
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body
    };
  }

}