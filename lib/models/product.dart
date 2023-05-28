class Product {
  int id;
  String title;
  String price;
  String description;
  String category;
  String image;
  Map<String, dynamic> rating;

  Product(this.id, this.title, this.price, this.description, this.category,
      this.image, this.rating);

  factory Product.fromJson(Map<String, dynamic> parsedJson) {
    return Product(
      parsedJson['id'],
      parsedJson['title'],
      parsedJson['price'].toString(),
      parsedJson['description'],
      parsedJson['category'],
      parsedJson['image'],
      parsedJson['rating'],
    );
  }
}
