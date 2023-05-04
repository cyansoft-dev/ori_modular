import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/appstate/app_state.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/usecases/cancel_request_usecase.dart';

import '../../domain/usecases/lock_sales_usecase.dart';

@injectable
class LockSalesCubit extends Cubit<AppState<BaseResponse>> {
  LockSalesCubit(this._useCase, this._cancelUseCase)
      : super(const AppState.initial());
  final LockSalesUseCase _useCase;
  final CancelRequestUseCase _cancelUseCase;

  Future<void> lock(String kodeToko, String station) async {
    emit(const AppState.loading());
    final params = LockSalesParams(
      kodeToko: kodeToko,
      station: station,
    );

    final result = await _useCase(params);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> cancel() async {
    await _cancelUseCase();
  }
}
