import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/helper/function/on_generate_route.dart';
import 'package:flutter_hub_dash_board/core/utils/thems.dart';
import 'package:flutter_hub_dash_board/features/dashboard/presentation/pages/dash_board_page.dart';

class FruitsHubDashBoard extends StatelessWidget {
  const FruitsHubDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DashBoardPage.routeName,
      onGenerateRoute: onGenerateRoute,
      title: 'Flutter Demo',
      theme: Thems.lightTheme,
    );
  }
}
