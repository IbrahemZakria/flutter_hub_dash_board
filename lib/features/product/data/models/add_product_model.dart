import 'dart:core';
import 'dart:io';

import 'package:flutter_hub_dash_board/features/product/domain/entities/add_product_entity.dart';

class AddProductModel extends AddProductEntity {
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
  final num raitingCount;
  final num averageCount;
  AddProductModel({
    required this.numberOfCalories,
    required this.numberOfMonthExpiration,
    required this.isOrganic,
    required this.isFeatured,

    required this.raitingCount,
    required this.averageCount,
    this.image,
    required this.name,
    required this.price,
    this.imageUrl,
    required this.description,
    required this.productCode,
  }) : super(
         isFeatured: isFeatured,
         image: image,
         name: name,
         price: price,
         imageUrl: imageUrl,
         description: description,
         productCode: productCode,
         numberOfCalories: numberOfCalories,
         numberOfMonthExpiration: numberOfMonthExpiration,
         isOrganic: isOrganic,
         raitingCount: raitingCount,
         averageCount: averageCount,
       );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
      'description': description,
      'productCode': productCode,
      'numberOfCalories': numberOfCalories,
      'numberOfMonthExpiration': numberOfMonthExpiration,
      'isOrganic': isOrganic,
      'raitingCount': raitingCount,
      'averageCount': averageCount,
      'isFeatured': isFeatured,
    };
  }

  factory AddProductModel.fromJson(Map<String, dynamic> json) {
    return AddProductModel(
      name: json['name'] ?? '',
      price: json['price']?.toString() ?? '0',
      imageUrl: json['imageUrl'],
      description: json['description'] ?? '',
      productCode: json['productCode']?.toString() ?? '',
      numberOfCalories: json['numberOfCalories'] ?? 0,
      numberOfMonthExpiration: json['numberOfMonthExpiration'] ?? 0,
      isOrganic: json['isOrganic'] ?? false,
      raitingCount: json['raitingCount'] ?? 0,
      averageCount: json['averageCount'] ?? 0,
      isFeatured: json["isFeatured"],
    );
  }
  factory AddProductModel.fromEntity(AddProductEntity entity) {
    return AddProductModel(
      isFeatured: entity.isFeatured,
      image: entity.image,
      name: entity.name,
      price: entity.price,
      imageUrl: entity.imageUrl,
      description: entity.description,
      productCode: entity.productCode,
      numberOfCalories: entity.numberOfCalories,
      numberOfMonthExpiration: entity.numberOfMonthExpiration,
      isOrganic: entity.isOrganic,
      raitingCount: entity.raitingCount ?? 0,
      averageCount: entity.averageCount ?? 0,
    );
  }
}
