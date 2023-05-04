import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '../../../../../core/utils/debouncer.dart';
import '../../domain/entities/tracking.dart';
import '../../domain/usecases/get_tracking_usecase.dart';

@injectable
class TrackingCubit extends Cubit<AppState<Tracking>> {
  TrackingCubit(this._useCase) : super(const AppState.initial());
  final GetTrackingUseCase _useCase;

  @override
  Future<void> close() {
    _isDisposed = true;
    _debouncer.reset();
    return super.close();
  }

  bool _isDisposed = false;
  Tracking _tracking = const Tracking();
  final Debouncer _debouncer = Debouncer(const Duration(seconds: 1));

  Future<void> getTracking(String kodeToko) async {
    emit(const AppState.loading());
    final result = await _useCase(kodeToko);

    if (_isDisposed) return;
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        _tracking = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> searchTracking(String type) async {
    emit(const AppState.loading());

    if (_isDisposed) return;
    _debouncer.call(() {
      final result = _tracking.copyWith(
          listTracking: _tracking.listTracking
              ?.where(
                  (e) => e.delivery!.toUpperCase().contains(type.toUpperCase()))
              .toList());
      emit(AppState.data(result));
    });
  }
}
