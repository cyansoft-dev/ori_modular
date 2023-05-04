import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '../../domain/entities/delivery_master.dart';
import '../../domain/usecases/get_master_collect_usecase.dart';

@injectable
class MasterCollectCubit extends Cubit<AppState<DeliveryMaster>> {
  MasterCollectCubit(this._useCase) : super(const AppState.initial());
  final GetMasterCollectUseCase _useCase;

  Future<void> getData(String kodeToko) async {
    emit(const AppState.loading());
    final result = await _useCase.call(kodeToko);

    result.fold((failure) => emit(AppState.error(failure)),
        (data) => emit(AppState.data(data)));
  }
}
