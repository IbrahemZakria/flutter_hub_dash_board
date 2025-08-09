import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/features/product/presentation/widgets/add_product_page_body.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});
  static const String routeName = "AddProductPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddProductPageBody());
  }
}
