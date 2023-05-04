import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/message.dart';
import '../../domain/usecases/get_foreground_message_usecase.dart';

@injectable
class ForegroundMessageCubit extends Cubit<AppState<List<Message>>> {
  ForegroundMessageCubit(this._messageUseCase)
      : super(const AppState.initial()) {
    _subscription = _messageUseCase(NoParams()).listen((message) {
      emit(const AppState.loading());
      emit(AppState.data(message));
    }, onError: (error) {
      emit(AppState.error(Failure.another(message: "$error")));
    });
  }

  final GetForegroundMessageUseCase _messageUseCase;
  late StreamSubscription _subscription;
  List<Message> messages = <Message>[];

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
