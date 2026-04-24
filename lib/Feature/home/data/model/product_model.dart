class ProductModel {
  final int sold;
  final List<String> images;
  final int ratingsQuantity;
  final String title;
  final String slug;
  final String description;
  final int quantity;
  final double price;
  final String imageCover;
  final double ratingsAverage;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;

  ProductModel({
    required this.sold,
    required this.images,
    required this.ratingsQuantity,
    required this.title,
    required this.slug,
    required this.description,
    required this.quantity,
    required this.price,
    required this.imageCover,
    required this.ratingsAverage,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      sold: json['sold'] ?? 0,
      images: List<String>.from(json['images'] ?? []),
      ratingsQuantity: json['ratingsQuantity'] ?? 0,
      title: json['title'] ?? '',
      slug: json['slug'] ?? '',
      description: json['description'] ?? '',
      quantity: json['quantity'] ?? 0,
      price: (json['price'] ?? 0).toDouble(),
      imageCover: json['imageCover'] ?? '',
      ratingsAverage: (json['ratingsAverage'] ?? 0).toDouble(),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      id: json['id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sold': sold,
      'images': images,
      'ratingsQuantity': ratingsQuantity,
      'title': title,
      'slug': slug,
      'description': description,
      'quantity': quantity,
      'price': price,
      'imageCover': imageCover,
      'ratingsAverage': ratingsAverage,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'id': id,
    };
  }
}
