import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';

@injectable
class TapCounterCubit extends Cubit<AppState<int>> {
  TapCounterCubit() : super(const AppState.initial());
  DateTime? currentTap;
  int counter = 0;

  Future<void> increment() async {
    DateTime now = DateTime.now();

    if (currentTap == null ||
        now.difference(currentTap!) < const Duration(milliseconds: 1000)) {
      currentTap = now;
      counter++;
    } else {
      currentTap = null;
      counter = 0;
    }

    if (counter < 11) {
      emit(AppState.data(counter));
    }
  }
}
