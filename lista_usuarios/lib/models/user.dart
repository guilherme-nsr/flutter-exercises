class User {
  final String name;
  final String userName;
  final String email;

  User({this.name, this.userName, this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      userName: json['username'],
      email: json['email'],
    );
  }
}
