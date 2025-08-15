import 'package:flutter_hub_dash_board/features/product/domain/entities/product_entity.dart';

abstract class AddProsductRepo {
  Future<void> uploadProduct(ProductEntity addProductEntity);
}
