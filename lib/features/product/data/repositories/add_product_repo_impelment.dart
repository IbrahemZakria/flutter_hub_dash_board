import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_hub_dash_board/core/exceptions/custom_exception.dart';
import 'package:flutter_hub_dash_board/core/failure/failure.dart';
import 'package:flutter_hub_dash_board/core/failure/firebase_server_failure.dart';
import 'package:flutter_hub_dash_board/core/utils/services/storage_services/storage_services.dart';
import 'package:flutter_hub_dash_board/features/product/domain/entities/add_product_entity.dart';
import 'package:flutter_hub_dash_board/features/product/domain/repositories/add_product_repo.dart';

class AddProductRepoImpelment extends AddProductRepo {
  final StorageServices storageServices;

  AddProductRepoImpelment(this.storageServices);
  @override
  Future<Either<Failure, String>> imageStorge(File file, String path) async {
    try {
      var imageurl = await storageServices.uploadFile(file, path);
      return right(imageurl);
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(errorMessage: e.message.toString()));

      // TODO
    }
  }

  @override
  Future<Either<Failure, void>> uploadproduct(
    AddProductEntity addProductEntity,
  ) {
    // TODO: implement uploadproduct
    throw UnimplementedError();
  }
}
