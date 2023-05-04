import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/delete_batch_transaction_usecase.dart';
import '../../domain/usecases/fetch_transaction_usecase.dart';
import '../../domain/usecases/truncate_transaction_usecase.dart';
import '/core/appstate/app_state.dart';
import '/core/usecase/usecase.dart';
import '../../domain/entities/data_collection.dart';
import '../../domain/usecases/add_transaction_usecase.dart';
import '../../domain/usecases/delete_transaction_usecase.dart';

@injectable
class TransactionCollectionCubit extends Cubit<AppState<ListDataCollection>> {
  TransactionCollectionCubit(
    this._addUseCase,
    this._fetchUseCase,
    this._deleteUseCase,
    this._truncateUseCase,
    this._deleteBatchUseCase,
  ) : super(const AppState.initial());

  final AddTransactionUseCase _addUseCase;
  final FetchTransactionUseCase _fetchUseCase;
  final DeleteTransactionUseCase _deleteUseCase;
  final TruncateTransactionUseCase _truncateUseCase;
  final DeleteBatchTransactionUseCase _deleteBatchUseCase;

  Future<void> fetch(String kdtk) async {
    emit(const AppState.loading());
    final result = await _fetchUseCase(kdtk);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> delete(int id) async {
    emit(const AppState.loading());
    final result = await _deleteUseCase(id);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> deleteBatch(List<int> ids) async {
    emit(const AppState.loading());
    final result = await _deleteBatchUseCase(ids);

    result.fold(
          (failure) => emit(AppState.error(failure)),
          (data) => emit(AppState.data(data)),
    );
  }

  Future<void> add(DataCollection data) async {
    emit(const AppState.loading());
    final result = await _addUseCase(data);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> truncate() async {
    emit(const AppState.loading());
    final result = await _truncateUseCase(NoParams());

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
