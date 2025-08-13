import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_hub_dash_board/core/utils/services/data_base/data_base_services.dart';

class FireStoreServices implements DataBaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    @required String? documentId,
  }) async {
    CollectionReference collectionReference = firestore.collection(path);

    if (documentId != null) {
      await collectionReference.doc(documentId).set(data);
    } else {
      await collectionReference.add(data);
    }
  }
}
