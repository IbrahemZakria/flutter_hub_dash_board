import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/custom_button.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/custome_text_form_field.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/user_message.dart';
import 'package:flutter_hub_dash_board/features/product/presentation/widgets/image_picker_widget.dart';

class AddProductPageBody extends StatefulWidget {
  const AddProductPageBody({super.key});

  @override
  State<AddProductPageBody> createState() => _AddProductPageBodyState();
}

class _AddProductPageBodyState extends State<AddProductPageBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController description = TextEditingController();
  bool isFeatured = false;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  CustomeTextFormField(
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
                  CheckboxListTile(
                    title: Text("Is featured product"),
                    value: isFeatured,
                    onChanged: (value) {
                      setState(() {
                        isFeatured = !isFeatured;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  ImagePickerWidget(
                    fileimage: (File? value) {
                      image = value?.path;
                    },
                  ),
                  SizedBox(height: 16),
                  CustomButton(
                    onTap: () {
                      if (image != null) {
                        if (formKey.currentState!.validate()) {
                          // هنا هنضيف المنتج
                        }
                      } else {
                        usermessage(
                          message: "لو سمحت اختر صوره",
                          backgroundColor: Colors.red,
                        );
                      }
                    },
                    text: "Add product",
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
