import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '../../domain/usecases/check_collection_sokas_usecase.dart';
import '../../../../common/domain/entities/base_response.dart';


@injectable
class CheckCollectionCubit extends Cubit<AppState<BaseResponse>> {
  CheckCollectionCubit(this._useCase) : super(const AppState.initial());
  final CheckCollectionSokasUseCase _useCase;

  Future<void> validate(String kodeToko) async {
    emit(const AppState.loading());

    final result = await _useCase(kodeToko);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) => emit(AppState.data(data)),
    );
  }
}
