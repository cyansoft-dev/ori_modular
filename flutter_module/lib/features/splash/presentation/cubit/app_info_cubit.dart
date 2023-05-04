import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/app_info.dart';
import '../../domain/usecases/app_info_usecase.dart';

@injectable
class AppInfoCubit extends Cubit<AppState<AppInfo>> {
  AppInfoCubit(this._useCase) : super(const AppState.initial());

  final AppInfoUseCase _useCase;

  Future<void> getAppInfo() async {
    emit(const AppState.loading());
    final result = await _useCase(NoParams());

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      emit(AppState.data(data));
    });
  }
}
