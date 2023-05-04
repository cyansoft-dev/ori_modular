import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/appstate/app_state.dart';
import '../../domain/usecases/scan_barcode_usecase.dart';

import '../../domain/entities/lock_key.dart';

@injectable
class ScanBarcodeCubit extends Cubit<AppState<LockKey>> {
  ScanBarcodeCubit(this._useCase) : super(const AppState.initial());
  final ScanBarcodeUseCase _useCase;

  Future<void> scan(String kodeToko) async {
    emit(const AppState.loading());

    final result = await _useCase(kodeToko);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
