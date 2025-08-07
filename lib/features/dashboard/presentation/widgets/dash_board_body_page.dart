import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/custom_button.dart';

class DashBoardBodyPage extends StatelessWidget {
  const DashBoardBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomButton(onTap: () {}, text: "DashBoard")],
        ),
      ),
    );
  }
}
