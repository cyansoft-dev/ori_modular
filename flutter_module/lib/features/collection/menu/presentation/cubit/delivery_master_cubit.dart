import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '../../domain/entities/delivery_master.dart';
import '../../domain/usecases/get_delivery_master_usecase.dart';

@injectable
class DeliveryMasterCubit extends Cubit<AppState<DeliveryMaster>> {
  DeliveryMasterCubit(this._useCase) : super(const AppState.initial());

  final GetDeliveryMasterUseCase _useCase;

  late DeliveryMaster _master;

  Future<void> getData(String kodeToko) async {
    emit(const AppState.loading());
    final result = await _useCase.call(kodeToko);

    result.fold((failure) => emit(AppState.error(failure)), (data) async {
      _master = data;
      emit(AppState.data(_master));
    });
  }
}
