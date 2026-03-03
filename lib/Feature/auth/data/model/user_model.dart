class UserModel {
  final String token;
  final String name;
  final String email;
  final String role;
  final String refreshToken;

  UserModel({
    required this.token,
    required this.name,
    required this.email,
    required this.role,
    required this.refreshToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      refreshToken: json['refreshToken'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'name': name,
      'email': email,
      'role': role,
      'refreshToken': refreshToken,
    };
  }
}
