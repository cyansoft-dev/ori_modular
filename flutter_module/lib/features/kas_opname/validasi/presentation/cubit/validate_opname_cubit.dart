import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/validasi_opname_usecase.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../common/domain/entities/base_response.dart';

@injectable
class ValidateOpnameCubit extends Cubit<AppState<BaseResponse>> {
  ValidateOpnameCubit(this._useCase) : super(const AppState.initial());
  final ValidasiOpnameUseCase _useCase;

  Future<void> upload(ValidateParams params) async {
    emit(const AppState.loading());

    final result = await _useCase(params);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        emit(AppState.data(data));
      },
    );
  }
}
