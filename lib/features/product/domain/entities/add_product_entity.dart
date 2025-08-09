class AddProductEntity {
  final String image, name, price, imageUrl, description;
  final num productCode;
  const AddProductEntity({
    required this.image,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.productCode,
  });
}
