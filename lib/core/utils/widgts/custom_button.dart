import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/utils/thems.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.width = double.infinity,
  });
  final VoidCallback? onTap;
  final Widget text;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Thems.kprimarycolor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: width,
        height: 60,
        child: Center(child: text),
      ),
    );
  }
}
