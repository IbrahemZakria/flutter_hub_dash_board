import 'package:flutter_hub_dash_board/features/product/domain/entities/review_entity.dart';

class ReviewModel {
  final String image;
  final String name;
  final String date;
  final String reviewDescription;
  final int ratting;

  ReviewModel({
    required this.image,
    required this.name,
    required this.date,
    required this.reviewDescription,
    required this.ratting,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      image: json['image'] ?? '',
      name: json['name'] ?? '',
      date: json['date'] ?? '',
      reviewDescription: json['reviewDescription'] ?? '',
      ratting: json['ratting'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'date': date,
      'reviewDescription': reviewDescription,
      'ratting': ratting,
    };
  }

  factory ReviewModel.fromReviewEntity(ReviewEntity entity) {
    return ReviewModel(
      image: entity.image,
      name: entity.name,
      date: entity.date,
      reviewDescription: entity.reviewDescription,
      ratting: entity.ratting,
    );
  }
}
