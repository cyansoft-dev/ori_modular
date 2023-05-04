import 'package:fpdart/fpdart.dart';

import '/core/failure/failure.dart';
import '../entities/menu.dart';

abstract class MenuRepository {
  Future<Either<Failure, Menu>> getMenu();
}
