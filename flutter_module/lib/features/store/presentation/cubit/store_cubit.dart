import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '/core/usecase/usecase.dart';
import '../../../../core/utils/debouncer.dart';
import '../../domain/entities/store.dart';
import '../../domain/usecases/get_store_usecase.dart';

@injectable
class StoreCubit extends Cubit<AppState<ListStore>> {
  StoreCubit(this._useCase) : super(const AppState.initial());
  final GetStoreUseCase _useCase;

  @override
  Future<void> close() {
    _debouncer.reset();
    return super.close();
  }

  ListStore _store = const ListStore();
  final Debouncer _debouncer = Debouncer(const Duration(seconds: 1));

  Future<void> getStore() async {
    emit(const AppState.loading());
    final result = await _useCase(NoParams());

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      _store = data;
      emit(AppState.data(data));
    });
  }

  Future<void> searchStore(String title) async {
    emit(const AppState.loading());

    _debouncer.call(() {
      final stores = _store.stores ?? <Store>[];
      final filtered = stores
          .where((e) => e.kodetoko!.toUpperCase().contains(title.toUpperCase()))
          .toList();
      final data = _store.copyWith(stores: filtered);
      emit(AppState.data(data));
    });
  }
}
