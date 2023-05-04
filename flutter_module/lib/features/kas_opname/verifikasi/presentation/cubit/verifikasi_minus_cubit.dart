import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/entities/minus_opname.dart';
import '../../domain/usecases/upload_fraud_usecase.dart';
import '../../domain/usecases/upload_other_usecase.dart';
import '../../domain/usecases/upload_rrak_usecase.dart';
import '../../domain/usecases/upload_varian_usecase.dart';

@injectable
class VerifikasiMinusCubit extends Cubit<AppState<BaseResponse>> {
  VerifikasiMinusCubit(this._fraudUseCase, this._rrakUseCase, this._varianUseCase,
      this._otherUseCase)
      : super(const AppState.initial());
  final UploadMinusFraudUseCase _fraudUseCase;
  final UploadMinusRrakUseCase _rrakUseCase;
  final UploadMinusVarianUseCase _varianUseCase;
  final UploadMinusOtherUseCase _otherUseCase;

  Future<void> uploadFraud(MinusFraud params) async {
    emit(const AppState.loading());

    final result = await _fraudUseCase(params);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        emit(AppState.data(data));
      },
    );
  }

  Future<void> uploadRrak(MinusRrak params) async {
    emit(const AppState.loading());

    final result = await _rrakUseCase(params);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        emit(AppState.data(data));
      },
    );
  }

  Future<void> uploadVarian(MinusVarian params) async {
    emit(const AppState.loading());

    final result = await _varianUseCase(params);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        emit(AppState.data(data));
      },
    );
  }

  Future<void> uploadOther(MinusOther params) async {
    emit(const AppState.loading());

    final result = await _otherUseCase(params);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        emit(AppState.data(data));
      },
    );
  }

}
