import 'package:flutter_hub_dash_board/core/utils/services/data_base/data_base_services.dart';
import 'package:flutter_hub_dash_board/core/utils/services/data_base/fire_store_services.dart';
import 'package:flutter_hub_dash_board/core/utils/services/storage_services/storage_services.dart';
import 'package:flutter_hub_dash_board/core/utils/services/storage_services/supa_base_storage_servces.dart';
import 'package:flutter_hub_dash_board/features/product/data/repositories/add_product_repo_impelment.dart';
import 'package:flutter_hub_dash_board/features/product/domain/repositories/add_product_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<StorageServices>(SupaBaseStorageServces());
  getIt.registerSingleton<DataBaseServices>(FireStoreServices());
  getIt.registerSingleton<AddProductRepo>(
    AddProductRepoImpelment(
      getIt<StorageServices>(),
      getIt<DataBaseServices>(),
    ),
  );
}
