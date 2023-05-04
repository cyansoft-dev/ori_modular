import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/entities/data_collection.dart';
import '../../domain/usecases/upload_transaction_usecase.dart';

@injectable
class UploadCollectionCubit extends Cubit<AppState<BaseResponse>> {
  UploadCollectionCubit(this._useCase) : super(const AppState.initial());

  final UploadTransactionUseCase _useCase;

  Future<void> upload(List<DataCollection> data) async {
    emit(const AppState.loading());

    final upload = ListDataCollection(data: data);
    final result = await _useCase(upload);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
