enum Size {
SMALL,
MEDIUM,
LARGE,
EXTRA_LARGE,
}

class ProductModel{
  final String name;
  final Set<Size> sizes;
  final double price;
  final double discount;
  final String brand;
  final String imageUrl;
  final String isFavorite;

  ProductModel({required this.name, required this.sizes, required this.price, required this.discount, required this.brand,
    required this.imageUrl, required this.isFavorite});
}