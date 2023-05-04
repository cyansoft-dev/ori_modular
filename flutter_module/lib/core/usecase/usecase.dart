import 'package:fpdart/fpdart.dart';
import '../failure/failure.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}

abstract class StreamUseCase<T, P> {
  Stream<T> call(P params);
}


class NoParams {}