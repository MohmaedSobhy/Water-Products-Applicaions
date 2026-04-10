class UserModel {
  final String token;
  final String name;
  final String email;
  final String role;

  UserModel({
    required this.token,
    required this.name,
    required this.email,
    required this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'] as String,
      name: json['user']['name'] as String,
      email: json['user']['email'] as String,
      role: json['user']['role'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'token': token, 'name': name, 'email': email, 'role': role};
  }
}
