import 'package:bloc/bloc.dart';
import 'package:flutter_hub_dash_board/features/product/domain/entities/add_product_entity.dart';
import 'package:flutter_hub_dash_board/features/product/domain/repositories/add_product_repo.dart';
part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this.addProductRepo) : super(AddProductInitial());
  final AddProductRepo addProductRepo;
  Future<void> addProduct(AddProductEntity addProductEntity) async {
    emit(AddProductLoadingState());
    var response = await addProductRepo.imageStorge(addProductEntity.image!);
    response.fold(
      (failure) {
        emit(AddProductFailureState(errorMessage: failure.errorMessage));
      },
      (r) async {
        addProductEntity.imageUrl = r;
        var result = await addProductRepo.uploadproduct(addProductEntity);
        result.fold(
          ((failure) {
            emit(AddProductFailureState(errorMessage: failure.errorMessage));
          }),
          ((r) {
            emit(AddProductSuccessSteate());
          }),
        );
      },
    );
  }
}
