import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/setting_data.dart';
import '../../domain/usecases/get_setting_usecase.dart';

@injectable
class SettingCubit extends Cubit<AppState<SettingData>> {
  SettingCubit(this._useCase) : super(const AppState.initial());

  final GetSettingUseCase _useCase;

  Future<void> getSetting() async {
    emit(const AppState.loading());
    final result = await _useCase(NoParams());

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      emit(AppState.data(data));
    });
  }
}
