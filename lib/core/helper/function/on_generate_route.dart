import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/features/dashboard/presentation/pages/dash_board_page.dart';
import 'package:flutter_hub_dash_board/features/product/presentation/pages/add_product_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoardPage.routeName:
      return MaterialPageRoute(builder: (context) => DashBoardPage());
    case AddProductPage.routeName:
      return MaterialPageRoute(builder: (context) => AddProductPage());

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('Route not found'))),
      );
  }
}
