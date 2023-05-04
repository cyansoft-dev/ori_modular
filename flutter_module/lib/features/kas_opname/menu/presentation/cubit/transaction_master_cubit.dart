import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../domain/entities/master_opname.dart';
import '../../domain/usecases/add_master_sales_usecase.dart';
import '../../domain/usecases/get_current_master_usecase.dart';
import '../../domain/usecases/update_master_sales_usecase.dart';

@injectable
class TransactionMasterCubit extends Cubit<AppState<MasterOpname>> {
  TransactionMasterCubit(
      this._addUseCase, this._getUseCase, this._updateUseCase)
      : super(const AppState.initial());
  final AddMasterSalesUseCase _addUseCase;
  final GetCurrentMasterUseCase _getUseCase;
  final UpdateMasterSalesUseCase _updateUseCase;

  MasterOpname master = const MasterOpname();

  Future<void> add(String data) async {
    emit(const AppState.loading());
    final result = await _addUseCase(data);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        master = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> update(MasterOpname master) async {
    emit(const AppState.loading());
    final result = await _updateUseCase(master);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        master = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> get(String kdtk) async {
    emit(const AppState.loading());
    final result = await _getUseCase(kdtk);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        emit(AppState.data(data));
      },
    );
  }
}
