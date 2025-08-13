import 'dart:developer';
import 'dart:io';
import 'package:flutter_hub_dash_board/core/exceptions/custom_exception.dart';
import 'package:flutter_hub_dash_board/core/utils/services/storage_services/storage_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart' as p;

class SupaBaseStorageServces implements StorageServices {
  final supabase = Supabase.instance.client;

  @override
  Future<String> uploadFile(File file, String path) async {
    String extensionName = p.extension(file.path);
    String baseName = p.basenameWithoutExtension(file.path);

    try {
      // رفع الملف
      await supabase.storage
          .from('fruits-image')
          .upload("$path/$baseName$extensionName", file);

      // جلب الرابط العام للملف
      final imageUrl = supabase.storage
          .from('fruits-image')
          .getPublicUrl("$path/$baseName$extensionName");
      log(imageUrl);
      return imageUrl;
    } on StorageException catch (e) {
      if (e.error == "Duplicate") {
        return supabase.storage
            .from('fruits-image')
            .getPublicUrl("$path/$baseName$extensionName");
      } else {
        log(e.toString());
        throw CustomException("un expected error");
      }
    } on SocketException catch (e) {
      if (e.port == null) {
        throw CustomException(
          "there is an error with network , please check it and try again later",
        );
      } else {
        log(e.toString());
        throw CustomException("un expected error");
      }
    } catch (e) {
      log(e.toString());
      throw CustomException("un expected error");
    }
  }
}
// Failed host lookup: 