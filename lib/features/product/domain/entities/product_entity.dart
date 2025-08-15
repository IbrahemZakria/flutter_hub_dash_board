import 'dart:io';

import 'package:flutter_hub_dash_board/features/product/domain/entities/review_entity.dart';

class ProductEntity {
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
  List<ReviewEntity> reviewEntity;
  num? sellsCount;

  ProductEntity({
    this.sellsCount,

    required this.reviewEntity,
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
