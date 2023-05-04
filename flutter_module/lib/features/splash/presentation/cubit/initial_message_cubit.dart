import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../home/domain/entities/message.dart';
import '../../../home/domain/usecases/get_initial_message_usecase.dart';

@injectable
class InitialMessageCubit extends Cubit<AppState<Message>> {
  InitialMessageCubit(this._useCase) : super(const AppState.initial());
  final GetInitialMessageUseCase _useCase;

  Future<void> getInitialMessage() async {
    emit(const AppState.loading());
    final result = await _useCase(NoParams());

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (message) => emit(
        AppState.data(message),
      ),
    );
  }
}
