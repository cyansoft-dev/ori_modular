import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '/core/usecase/usecase.dart';
import '../../../../core/utils/debouncer.dart';
import '../../domain/entities/menu.dart';
import '../../domain/usecases/get_menu_usecase.dart';

@injectable
class MenuCubit extends Cubit<AppState<Menu>> {
  MenuCubit(this._useCase) : super(const AppState.initial());
  final GetMenuUseCase _useCase;

  @override
  Future<void> close() {
    _debouncer.reset();
    return super.close();
  }

  Menu _menu = const Menu();
  final Debouncer _debouncer = Debouncer(const Duration(seconds: 1));

  Future<void> getMenu() async {
    emit(const AppState.loading());
    final result = await _useCase(NoParams());

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      _menu = data;
      emit(AppState.data(_menu));
    });
  }

  Future<void> searchMenu(String title) async {
    emit(const AppState.loading());

    _debouncer.call(() {
      final filtered = _menu.menuMain
          ?.where((e) => e.title!.toUpperCase().contains(title.toUpperCase()))
          .toList();
      final data = _menu.copyWith(menuMain: filtered);
      emit(AppState.data(data));
    });
  }
}
