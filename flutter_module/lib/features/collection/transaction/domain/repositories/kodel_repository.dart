import 'package:fpdart/fpdart.dart';

import '../../../../common/domain/entities/base_response.dart';
import '/core/failure/failure.dart';
import '../entities/data_collection.dart';

abstract class KodelRepository {
  Future<Either<Failure, ListDataCollection>> fetchTransaction(String kdtk);

  Future<Either<Failure, ListDataCollection>> addTransaction(
      DataCollection data);

  Future<Either<Failure, ListDataCollection>> deleteTransaction(int id);

  Future<Either<Failure, ListDataCollection>> deleteBatchTransaction(List<int> ids);

  Future<Either<Failure, BaseResponse>> uploadTransaction(
      ListDataCollection data);

  Future<Either<Failure, ListDataCollection>> truncateTransaction();
}
