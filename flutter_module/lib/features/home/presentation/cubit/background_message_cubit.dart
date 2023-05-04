import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/message.dart';
import '../../domain/usecases/get_background_message_usecase.dart';

@injectable
class BackgroundMessageCubit extends Cubit<AppState<List<Message>>> {
  BackgroundMessageCubit(this._messageUseCase)
      : super(const AppState.initial()) {
    _subscription = _messageUseCase(NoParams()).listen((message) {
      emit(AppState.data(message));
    }, onError: (error) {
      emit(AppState.error(Failure.another(message: "$error")));
    });
  }

  final GetBackgroundMessageUseCase _messageUseCase;
  late StreamSubscription<List<Message>> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
