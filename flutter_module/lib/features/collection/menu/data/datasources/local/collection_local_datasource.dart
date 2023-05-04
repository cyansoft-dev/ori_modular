import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:injectable/injectable.dart';

import '/core/constants/file_constants.dart';
import '../../model/delivery_master_model.dart';

abstract class CollectionLocalDataSource {
  Future<DeliveryMasterModel> getCollectionMaster();
}

@Named("collectionLocalDataSource")
@LazySingleton(as: CollectionLocalDataSource)
class CollectionLocalDataSourceImpl implements CollectionLocalDataSource {
  @override
  Future<DeliveryMasterModel> getCollectionMaster() async {
    final result = await rootBundle.loadString(FileConstants.collectionMaster);
    final data = await compute<String, DeliveryMasterModel>(
        deliveryMasterModelFromJson, result);
    return data;
  }
}
