import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_hub_dash_board/core/failure/failure.dart';
import 'package:flutter_hub_dash_board/features/product/domain/entities/product_entity.dart';

abstract class AddProductRepo {
  Future<Either<Failure, void>> uploadproduct(ProductEntity addProductEntity);
  Future<Either<Failure, String>> imageStorge(File file);
}
