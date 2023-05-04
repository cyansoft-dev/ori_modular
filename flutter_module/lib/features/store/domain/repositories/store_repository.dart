import 'package:fpdart/fpdart.dart';

import '/core/failure/failure.dart';
import '../entities/store.dart';

abstract class StoreRepository {
  Future<Either<Failure, ListStore>> getStore();
}
