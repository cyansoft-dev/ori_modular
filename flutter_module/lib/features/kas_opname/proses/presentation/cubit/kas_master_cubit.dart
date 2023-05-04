import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/kas_master.dart';
import '../../domain/usecases/get_kas_master_usecase.dart';
import '/core/appstate/app_state.dart';

@injectable
class KasMasterCubit extends Cubit<AppState<KasMaster>> {
  KasMasterCubit(this._useCase) : super(const AppState.initial());

  final GetKasMasterUseCase _useCase;

  late KasMaster _master;

  Future<void> getData(String kodeToko) async {
    emit(const AppState.loading());
    final result = await _useCase.call(kodeToko);

    result.fold((failure) => emit(AppState.error(failure)), (data) async {
      _master = data;
      emit(AppState.data(_master));
    });
  }
}
