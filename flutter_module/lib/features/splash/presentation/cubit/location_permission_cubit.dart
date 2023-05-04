import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/appstate/app_state.dart';
import '../../../../core/usecase/usecase.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/domain/usecases/request_location_usecase.dart';

@injectable
class LocationPermissionCubit extends Cubit<AppState<PermissionStatus>> {
  LocationPermissionCubit(this._useCase) : super(const AppState.initial());
  final RequestLocationUseCase _useCase;

  Future<void> checkPermission() async {
    emit(const AppState.loading());
    final result = await _useCase(NoParams());

    result.fold((failure) {
      emit(AppState.error(failure));
    }, (data) {
      emit(AppState.data(data));
    });
  }
}
