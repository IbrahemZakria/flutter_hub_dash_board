import 'package:dartz/dartz.dart';
import 'package:flutter_hub_dash_board/core/failure/failure.dart';

abstract class AddImageStorgeRepo {
  Future<Either<Failure, String>> uploadImage(String image);
}
