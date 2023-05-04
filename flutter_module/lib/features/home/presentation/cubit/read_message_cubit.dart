import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../domain/usecases/read_message_usecase.dart';

@injectable
class ReadMessageCubit extends Cubit<AppState<bool>> {
  ReadMessageCubit(this._useCase) : super(const AppState.initial());
  final ReadMessageUseCase _useCase;

  Future<void> read(int messageId) async {
    emit(const AppState.loading());
    final result = await _useCase.call(messageId);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
