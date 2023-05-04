import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/failure/failure.dart';
import '../../../splash/domain/entities/user.dart';
import '../entities/faq.dart';
import '../entities/message.dart';

abstract class HomeRepository {
  Future<Either<Failure, bool>> logout(User user);

  Future<Either<Failure, Position>> getCurrentPosition();

  Future<Either<Failure, List<FaqData>>> getFaq();

  Stream<Position> getStreamLocation();

  Stream<List<Message>> onMessage();

  Stream<List<Message>> onBackgroundMessage();

  Future<Either<Failure, Message>> getInitialMessage();

  Stream<List<Message>> fetchLocalMessage();

  Future<Either<Failure, bool>> readMessage(int messageId);
}
