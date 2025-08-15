import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_hub_dash_board/constant.dart';
import 'package:flutter_hub_dash_board/core/exceptions/custom_exception.dart';
import 'package:flutter_hub_dash_board/core/failure/failure.dart';
import 'package:flutter_hub_dash_board/core/failure/firebase_server_failure.dart';
import 'package:flutter_hub_dash_board/core/utils/services/data_base/data_base_services.dart';
import 'package:flutter_hub_dash_board/core/utils/services/storage_services/storage_services.dart';
import 'package:flutter_hub_dash_board/features/product/data/models/product_model.dart';
import 'package:flutter_hub_dash_board/features/product/domain/entities/product_entity.dart';
import 'package:flutter_hub_dash_board/features/product/domain/repositories/add_product_repo.dart';

class AddProductRepoImpelment extends AddProductRepo {
  final StorageServices storageServices;
  final DataBaseServices dataBaseServices;

  AddProductRepoImpelment(this.storageServices, this.dataBaseServices);
  @override
  Future<Either<Failure, String>> imageStorge(File file) async {
    try {
      var imageurl = await storageServices.uploadFile(
        file,
        Constant.fruitsDataBasePath,
      );
      return right(imageurl);
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(errorMessage: e.message.toString()));

      // TODO
    }
  }

  @override
  Future<Either<Failure, void>> uploadproduct(
    ProductEntity addProductEntity,
  ) async {
    Map<String, dynamic> data = ProductModel.fromEntity(
      addProductEntity,
    ).toJson();
    try {
      var product = await dataBaseServices.addData(
        documentId: null,
        path: Constant.productCollection,
        data: data,
      );
      return right(product);
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(errorMessage: e.message.toString()));
    }
  }
}
