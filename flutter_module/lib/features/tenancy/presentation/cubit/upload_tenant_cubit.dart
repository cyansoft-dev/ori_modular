import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../common/domain/entities/base_response.dart';
import '../../domain/entities/data_tenant.dart';
import '../../domain/usecases/upload_data_tenant_usecase.dart';

@injectable
class UploadTenantCubit extends Cubit<AppState<BaseResponse>> {
  UploadTenantCubit(this._useCase) : super(const AppState.initial());
  final UploadDataTenantUseCase _useCase;

  Future<void> upload(List<DataTenant> param) async {
    emit(const AppState.loading());

    final result = await _useCase(param);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
