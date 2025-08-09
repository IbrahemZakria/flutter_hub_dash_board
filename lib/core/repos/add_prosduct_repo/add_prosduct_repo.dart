import 'package:flutter_hub_dash_board/features/product/domain/entities/add_product_entity.dart';

abstract class AddProsductRepo {
  Future<void> uploadProduct(AddProductEntity addProductEntity);
}
