import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/custom_button.dart';
import 'package:flutter_hub_dash_board/features/product/presentation/pages/add_product_page.dart';

class DashBoardBodyPage extends StatelessWidget {
  const DashBoardBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, AddProductPage.routeName);
              },
              text: Text(
                "DashBoard",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
