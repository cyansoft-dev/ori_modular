import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';

import '../../domain/usecases/stream_location_usecase.dart';
import '../../../home/domain/usecases/get_current_location_usecase.dart';
import '/core/appstate/app_state.dart';
import '/core/usecase/usecase.dart';

@injectable
class LocationCubit extends Cubit<AppState<Position>> {
  LocationCubit(this._usecase, this._streamUseCase)
      : super(const AppState.initial());
  final GetLocationUseCase _usecase;
  final StreamLocationUseCase _streamUseCase;
  Position? _position;

  @override
  Future<void> close() {
    _subscription?.cancel();
    _isDisposed = true;
    return super.close();
  }

  bool _isDisposed = false;
  StreamSubscription<Position>? _subscription;

  Future<void> start() async {
    emit(const AppState.loading());
    final result = await _usecase(NoParams());
    if (_isDisposed) return;

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      _position = data;
      emit(AppState.data(data));
    });
  }

  Future<void> streamLocation() async {
    _subscription = _streamUseCase().listen(
      (position) {
        if (_isDisposed) return;

        if (equal(position)) {
          emit(AppState.data(position));
        }

        _position = position;
      },
      onError: (e) {
        emit(AppState.error(Failure.fromException(e)));
      },
    );
  }

  bool equal(Position newPosition) {
    if (_position == null) {
      return false;
    }

    final double oldLatLong = (_position!.latitude * _position!.longitude);
    final double newLatLong = (newPosition.latitude * newPosition.longitude);

    if (oldLatLong != newLatLong) {
      return false;
    }

    return true;
  }
}
