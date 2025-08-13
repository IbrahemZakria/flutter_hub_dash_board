import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/custome_text_form_field.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.numberOfCalories,

    required this.numberOfMonthExpiration,
  });
  final TextEditingController name;
  final TextEditingController price;
  final TextEditingController code;
  final TextEditingController description;
  final TextEditingController numberOfCalories;

  final TextEditingController numberOfMonthExpiration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeTextFormField(
          controller: name,
          hintText: " produt name",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter your product name";
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          controller: price,
          hintText: " produt price",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter your product price";
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          controller: code,
          hintText: " produt code",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter your product code";
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          textType: TextInputType.number,
          controller: numberOfCalories,
          hintText: " number of calories",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter number of calories of the product";
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),

        CustomeTextFormField(
          textType: TextInputType.number,

          controller: numberOfMonthExpiration,
          hintText: "number Of Month Expiration",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "number Of Month Expiration to the product";
            }

            return null; // valid
          },
        ),

        SizedBox(height: 16),
        CustomeTextFormField(
          controller: description,
          maxLines: 5,
          hintText: " produt description",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter your product description";
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
