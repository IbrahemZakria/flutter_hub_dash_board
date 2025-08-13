import 'dart:io';

class AddProductEntity {
  final String name;
  final String price;
  String? imageUrl;
  final String description;
  File? image;
  final String productCode;
  final int numberOfMonthExpiration;
  final bool isOrganic;
  final bool isFeatured;
  int numberOfCalories;
  num? raitingCount;
  num? averageCount;

  AddProductEntity({
    required this.numberOfCalories,
    required this.numberOfMonthExpiration,
    required this.isOrganic,
    required this.isFeatured,
    this.raitingCount,
    this.averageCount,
    this.image,
    required this.name,
    required this.price,
    this.imageUrl,
    required this.description,
    required this.productCode,
  });
}
