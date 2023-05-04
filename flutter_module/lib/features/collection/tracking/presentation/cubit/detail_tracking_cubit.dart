import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '../../domain/entities/detail_tracking.dart';
import '../../domain/usecases/get_detail_tracking_usecase.dart';

@injectable
class DetailTrackingCubit extends Cubit<AppState<DetailTracking>> {
  DetailTrackingCubit(this._useCase) : super(const AppState.initial());
  final GetDetailTrackingUseCase _useCase;

  @override
  Future<void> close() {
    _isDisposed = true;
    return super.close();
  }

  bool _isDisposed = false;

  Future<void> getDetailTracking(String idDelivery) async {
    emit(const AppState.loading());
    final result = await _useCase(idDelivery);

    if (_isDisposed) return;

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
