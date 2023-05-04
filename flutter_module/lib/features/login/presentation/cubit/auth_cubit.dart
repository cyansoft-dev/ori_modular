import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/appstate/app_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../splash/domain/entities/user.dart';
import '../../../splash/domain/usecases/get_user_usecase.dart';

import '../../domain/usecases/login_usecase.dart';
import '../../../splash/domain/entities/app_info.dart';

@injectable
class AuthCubit extends Cubit<AppState<User>> {
  AuthCubit(this._useCase, this._loginUseCase)
      : super(const AppState.initial());

  final GetUserUseCase _useCase;
  final LoginUseCase _loginUseCase;

  Future<void> loginFromStorage() async {
    emit(const AppState.loading());

    final result = await _useCase(NoParams());
    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      emit(AppState.data(data));
    });
  }

  Future<void> loginFromNetwork(
      String userName, String password, AppInfo appInfo) async {
    emit(const AppState.loading());
    final result = await _loginUseCase(LoginParams(
      userName: userName,
      password: password,
      appInfo: appInfo,
    ));

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      emit(AppState.data(data));
    });
  }
}
