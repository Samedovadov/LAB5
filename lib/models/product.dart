class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final double rating;
  final List<String> categories;

  const Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
    required this.categories,
  });
}
