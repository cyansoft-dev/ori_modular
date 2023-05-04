import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '/core/appstate/app_state.dart';
import '../../../../../core/utils/debouncer.dart';
import '../../domain/entities/kurset.dart';
import '../../domain/usecases/get_kurset_usecase.dart';

@injectable
class KursetCubit extends Cubit<AppState<List<Kurset>>> {
  KursetCubit(this._useCase) : super(const AppState.initial());
  final GetKursetUseCase _useCase;

  @override
  Future<void> close() {
    isDisposed = true;
    debouncer.reset();
    return super.close();
  }

  bool isDisposed = false;
  List<Kurset> kurset = const <Kurset>[];
  final Debouncer debouncer = Debouncer(const Duration(seconds: 1));
  DateFormat dateFormat = DateFormat("dd-MM-yyyy");

  Future<void> getKurset(String kodeToko) async {
    emit(const AppState.loading());
    final result = await _useCase(kodeToko);

    if (isDisposed) return;
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        kurset = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> searchKurset(String search) async {
    emit(const AppState.loading());

    if (isDisposed) return;
    debouncer.call(() {
      final data = kurset.where((e) {
        final tgl = DateFormat("dd-MM-yyyy").format(e.tanggal!);

        return tgl.contains(search);
      }).toList();
      emit(AppState.data(data));
    });
  }
}
