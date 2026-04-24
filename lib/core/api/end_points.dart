abstract class EndPoints {
  static const String baseUrl = "https://ecommerce.routemisr.com/api/v1/";
  static const String login = "${baseUrl}auth/signin";
  static const String register = "${baseUrl}auth/signup";
  static const String allProduct = "${baseUrl}products";
  static const String allCategories = "${baseUrl}categories";
  static const String favourite = "${baseUrl}wishlist";
  static const String addToCart = "${baseUrl}cart";
}
