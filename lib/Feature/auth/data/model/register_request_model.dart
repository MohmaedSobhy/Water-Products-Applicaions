class RegisterRequestModel {
  final String userName;
  final String email;
  final String password;
  final String rePassword;

  RegisterRequestModel({
    required this.userName,
    required this.email,
    required this.password,
    required this.rePassword,
  });

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'email': email,
      'password': password,
      'rePassword': rePassword,
    };
  }
}
