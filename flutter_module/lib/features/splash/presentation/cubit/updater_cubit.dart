import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/updater_data.dart';
import '../../domain/usecases/get_updater_usecase.dart';

@injectable
class UpdaterCubit extends Cubit<AppState<UpdaterData>> {
  UpdaterCubit(this._useCase) : super(const AppState.initial());

  final GetUpdaterUseCase _useCase;

  Future<void> getUpdater() async {
    emit(const AppState.loading());
    final result = await _useCase(NoParams());

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      emit(AppState.data(data));
    });
  }
}
