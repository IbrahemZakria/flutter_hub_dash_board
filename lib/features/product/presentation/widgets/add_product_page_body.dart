import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hub_dash_board/core/utils/services/get_it_services.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/custom_button.dart';
import 'package:flutter_hub_dash_board/core/utils/widgts/user_message.dart';
import 'package:flutter_hub_dash_board/features/product/domain/entities/product_entity.dart';
import 'package:flutter_hub_dash_board/features/product/domain/entities/review_entity.dart';
import 'package:flutter_hub_dash_board/features/product/domain/repositories/add_product_repo.dart';
import 'package:flutter_hub_dash_board/features/product/presentation/cubit/add_product/add_product_cubit.dart';
import 'package:flutter_hub_dash_board/features/product/presentation/widgets/custom_check_box_list_tile.dart';
import 'package:flutter_hub_dash_board/features/product/presentation/widgets/form_fields.dart';
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
  TextEditingController numberOfCalories = TextEditingController();
  TextEditingController numberOfMonthExpiration = TextEditingController();
  bool isFeatured = false;
  bool isOrganic = false;
  File? image;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProductCubit(getIt<AddProductRepo>()),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    FormFields(
                      name: name,
                      price: price,
                      code: code,
                      description: description,
                      numberOfCalories: numberOfCalories,
                      numberOfMonthExpiration: numberOfMonthExpiration,
                    ),
                    CustomCheckBoxListTile(
                      onChanged: (bool? value) {
                        isOrganic = value!;
                      },
                      title: "Is featured product",
                    ),
                    SizedBox(height: 16),

                    CustomCheckBoxListTile(
                      title: 'is organic product',
                      onChanged: (bool? value) {
                        isOrganic = value!;
                      },
                    ),
                    SizedBox(height: 16),
                    ImagePickerWidget(
                      fileimage: (File? value) {
                        image = value;
                      },
                    ),
                    SizedBox(height: 16),
                    BlocConsumer<AddProductCubit, AddProductState>(
                      listener: (context, state) {
                        if (state is AddProductSuccessSteate) {
                          usermessage(
                            message: "تم اضافه المنتج بنجاح",
                            backgroundColor: Colors.green,
                          );
                        }
                        if (state is AddProductFailureState) {
                          usermessage(
                            message: state.errorMessage,
                            backgroundColor: Colors.green,
                          );
                        }
                      },
                      builder: (context, state) {
                        return CustomButton(
                          onTap: () {
                            if (image != null) {
                              if (formKey.currentState!.validate()) {
                                ProductEntity entity = ProductEntity(
                                  reviewEntity: [
                                    ReviewEntity(
                                      image: "image",
                                      name: "name",
                                      date: "date",
                                      reviewDescription: "reviewDescription",
                                      ratting: 5,
                                    ),
                                  ],
                                  image: image!,
                                  name: name.text,
                                  price: price.text,
                                  description: description.text,
                                  productCode: code.text,
                                  numberOfCalories: int.parse(
                                    numberOfCalories.text
                                            .replaceFirst(RegExp(r"^0+"), "")
                                            .isEmpty
                                        ? "0"
                                        : numberOfCalories.text.replaceFirst(
                                            RegExp(r"^0+"),
                                            "",
                                          ),
                                  ),
                                  numberOfMonthExpiration: int.parse(
                                    numberOfMonthExpiration.text
                                            .replaceFirst(RegExp(r"^0+"), "")
                                            .isEmpty
                                        ? "0"
                                        : numberOfMonthExpiration.text
                                              .replaceFirst(RegExp(r"^0+"), ""),
                                  ),
                                  isOrganic: isOrganic,
                                  isFeatured: isFeatured,
                                );
                                context.read<AddProductCubit>().addProduct(
                                  entity,
                                );
                              }
                            } else {
                              usermessage(
                                message: "لو سمحت اختر صوره",
                                backgroundColor: Colors.red,
                              );
                            }
                          },
                          text: state is AddProductLoadingState
                              ? Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
                                  "Add product",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                        );
                      },
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
