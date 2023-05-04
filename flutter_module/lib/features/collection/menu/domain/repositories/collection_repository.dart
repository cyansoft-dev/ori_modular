import 'package:fpdart/fpdart.dart';

import '/core/failure/failure.dart';
import '../entities/delivery_master.dart';

abstract class CollectionRepository {
  Future<Either<Failure, DeliveryMaster>> getCollectMaster(String kodeToko);

  Future<Either<Failure, DeliveryMaster>> getCollectionMaster();
}
