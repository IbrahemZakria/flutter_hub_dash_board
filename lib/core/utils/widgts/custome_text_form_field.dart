import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/utils/thems.dart';

// ignore: must_be_immutable
class CustomeTextFormField extends StatelessWidget {
  CustomeTextFormField({
    super.key,
    this.obscureText = false,
    this.hintText,
    this.onSaved,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.textColor = Colors.black,
    this.controller,
    this.borderRadius,
    this.maxLines,
    this.bordercolor = Colors.white,
    this.textType = TextInputType.emailAddress,
  });
  double? borderRadius;
  String? hintText;
  String? Function(String?)? validator;
  Function(String)? onSaved;
  bool obscureText;
  IconButton? prefixIcon;

  IconButton? suffixIcon;
  Color bordercolor;
  Color? textColor;
  TextEditingController? controller;
  int? maxLines;
  TextInputType? textType;
  OutlineInputBorder buildborder({Color bordercolor = Thems.lightgray}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 8),
      borderSide: BorderSide(color: bordercolor, width: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: true,
      controller: controller,
      validator: (value) {
        return validator != null ? validator!(value) : null;
      },
      onChanged: onSaved,
      maxLines: maxLines ?? 1,
      style: TextStyle(color: textColor),
      obscureText: obscureText,
      keyboardType: textType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Thems.kLightprimarycolor.withAlpha(10),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText ?? '',
        hintStyle: Thems.textStyle13SB,
        enabledBorder: buildborder(),

        errorBorder: buildborder(bordercolor: Thems.gray),
        focusedBorder: buildborder(bordercolor: Thems.gray),
        focusedErrorBorder: buildborder(bordercolor: Thems.gray),
      ),
    );
  }
}
