import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/features/dashboard/presentation/pages/dash_board_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoardPage.routeName:
      return MaterialPageRoute(builder: (context) => DashBoardPage());

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('Route not found'))),
      );
  }
}
