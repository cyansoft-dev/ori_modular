import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../domain/entities/data_audit.dart';
import '../../domain/entities/summary_audit.dart';
import '../../domain/usecases/upload_kas_opname_usecase.dart';

@injectable
class UploadDanaOpnameCubit extends Cubit<AppState<SummaryAudit>> {
  UploadDanaOpnameCubit(this._useCase) : super(const AppState.initial());
  final UploadKasOpnameUseCase _useCase;

  Future<void> upload(DataAudit data) async {
    emit(const AppState.loading());
    final result = await _useCase(data);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
