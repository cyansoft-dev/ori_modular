import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../model/faq_model.dart';
import '../../domain/entities/faq.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/utils/connection_checker.dart';
import '../../../splash/domain/entities/user.dart';
import '../../domain/entities/message.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/local/home_local_datasource.dart';
import '../datasources/remote/home_remote_datasource.dart';

@Named("homeRepository")
@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;
  final HomeLocalDataSource _localDataSource;
  final ConnectionChecker _checker;

  HomeRepositoryImpl(
    @Named("homeRemoteDataSource") this._remoteDataSource,
    @Named("homeLocalDataSource") this._localDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, bool>> logout(User user) async {
    if (await _checker.status == ConnectionStatus.connected) {
      try {
        final response = await _remoteDataSource.postLogout(user.username!);
        if (response) {
          await _localDataSource.deleteUser(user.username!);
          return Right(response);
        } else {
          return const Left(Failure.cache());
        }
      } catch (e) {
        return Left(Failure.fromException(e));
      }
    } else {
      return const Left(Failure.noNetwork());
    }
  }

  @override
  Future<Either<Failure, Position>> getCurrentPosition() async {
    try {
      final position = await _localDataSource.getCurrentPosition();

      return Right(position);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Stream<List<Message>> onBackgroundMessage() {
    final stream = _remoteDataSource.onBackgroundMessage();
    return stream.asyncMap((e) async {
      final list = await _localDataSource.update(e);
      return list.map((e) => Message.fromDto(e)).toList();
    });
  }

  @override
  Stream<List<Message>> onMessage() {
    final stream = _remoteDataSource.onMessage();
    return stream.asyncMap((e) async {
      final list = await _localDataSource.update(e);
      return list.map((e) => Message.fromDto(e)).toList();
    });
  }

  @override
  Stream<List<Message>> fetchLocalMessage() {
    final stream = _localDataSource.fetch();
    return stream.map(
      (e) => e.map((e) => Message.fromDto(e)).toList(),
    );
  }

  @override
  Future<Either<Failure, bool>> readMessage(int messageId) async {
    try {
      final update = await _localDataSource.updateMessage(messageId);
      return Right(update);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Stream<Position> getStreamLocation() {
    return _localDataSource.getStreamPosition();
  }

  @override
  Future<Either<Failure, Message>> getInitialMessage() async {
    try {
      Message msg = const Message();
      final message = await _remoteDataSource.getInitialMessage();
      if (message != null) {
        final list = await _localDataSource.update(message);
        msg = Message.fromDto(list.last);
      }
      return Right(msg);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<FaqData>>> getFaq() async {
    if (await _checker.status == ConnectionStatus.connected) {
      try {
        final response = await _remoteDataSource.getFaq();
        if (response.data != null) {
          final data = await compute<List<FaqDataModel>, List<FaqData>>(
              listFaqDataFromModel, response.data!);
          return Right(data);
        } else {
          return const Left(Failure.cache());
        }
      } catch (e) {
        return Left(Failure.fromException(e));
      }
    } else {
      return const Left(Failure.noNetwork());
    }
  }
}
