part of 'add_product_cubit.dart';

abstract class AddProductState {
  const AddProductState();
}

class AddProductInitial extends AddProductState {}

class AddProductLoadingState extends AddProductState {}

class AddProductSuccessSteate extends AddProductState {}

class AddProductFailureState extends AddProductState {
  final String errorMessage;

  AddProductFailureState({required this.errorMessage});
}
