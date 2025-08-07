import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/features/dashboard/presentation/widgets/dash_board_body_page.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});
  static const String routeName = "DashBoardPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DashBoardBodyPage());
  }
}
