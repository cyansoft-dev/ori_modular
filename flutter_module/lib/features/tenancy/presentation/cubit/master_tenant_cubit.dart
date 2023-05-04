import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/appstate/app_state.dart';
import '../../domain/entities/master_tenant.dart';
import '../../domain/usecases/get_local_master_tenant_usecase.dart';
import '../../domain/usecases/get_remote_master_tenant_usecase.dart';

@injectable
class MasterTenantCubit extends Cubit<AppState<List<MasterTenant>>> {
  MasterTenantCubit(this._localUseCase, this._remoteUseCase)
      : super(const AppState.initial());
  final GetLocalMasterTenantUseCase _localUseCase;
  final GetRemoteMasterTenantUseCase _remoteUseCase;

  Future<void> get(String kdtk) async {
    emit(const AppState.loading());

    final result = await _remoteUseCase(kdtk);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
