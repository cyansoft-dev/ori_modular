import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/data_tenant.dart';
import '../../domain/usecases/delete_data_tenant_usecase.dart';
import '../../domain/usecases/fetch_data_tenant_usecase.dart';
import '../../domain/usecases/put_data_tenant_usecase.dart';
import '../../domain/usecases/put_many_data_tenant_usecase.dart';
import '../../domain/usecases/truncate_data_tenant_usecase.dart';

@injectable
class TransactionTenantCubit extends Cubit<AppState<List<DataTenant>>> {
  TransactionTenantCubit(
      this._put, this._putMany, this._fetch, this._delete, this._truncate)
      : super(const AppState.initial());
  final PutDataTenantUseCase _put;
  final FetchDataTenantUseCase _fetch;
  final DeleteDataTenantUseCase _delete;
  final TruncateDataTenantUseCase _truncate;
  final PutManyDataTenantUseCase _putMany;

  Future<void> fetch(String kdtk) async {
    emit(const AppState.loading());
    final result = await _fetch(kdtk);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> add(DataTenant data) async {
    final result = await _put(data);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> addMany(List<DataTenant> data) async {
    final result = await _putMany(data);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> delete(int data) async {
    final result = await _delete(data);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }

  Future<void> truncate() async {
    final result = await _truncate(NoParams());
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
