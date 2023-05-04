import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/entities/plus_opname.dart';
import '../../domain/usecases/upload_plus_usecase.dart';

@injectable
class VerifikasiPlusCubit extends Cubit<AppState<BaseResponse>> {
  VerifikasiPlusCubit(this._plusOpnameUseCase) : super(const AppState.initial());
  final UploadPlusOpnameUseCase _plusOpnameUseCase;

  Future<void> upload(PlusOpname params) async {
    emit(const AppState.loading());

    final result = await _plusOpnameUseCase(params);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        emit(AppState.data(data));
      },
    );
  }
}
