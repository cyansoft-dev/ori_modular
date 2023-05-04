import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../../splash/domain/entities/user.dart';

import '../../../../core/appstate/app_state.dart';

@injectable
class LogoutCubit extends Cubit<AppState<bool>> {
  LogoutCubit(this._useCase) : super(const AppState.initial());
  final LogoutUseCase _useCase;

  Future<void> logout(User userData) async {
    emit(const AppState.loading());
    final result = await _useCase.call(userData);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
