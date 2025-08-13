import 'package:flutter/foundation.dart';

abstract class DataBaseServices {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    @required String? documentId,
  });
}
