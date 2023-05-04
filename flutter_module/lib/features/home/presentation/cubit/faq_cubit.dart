import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '/core/usecase/usecase.dart';
import '../../domain/entities/faq.dart';
import '../../domain/usecases/get_faq_usecase.dart';

@injectable
class FaqCubit extends Cubit<AppState<List<FaqData>>> {
  FaqCubit(this._useCase) : super(const AppState.initial());

  @override
  Future<void> close() {
    _isDisposed = true;
    return super.close();
  }

  final GetFaqUseCase _useCase;
  bool _isDisposed = false;

  List<FaqData> _data = <FaqData>[];
  Future<void> getFaq() async {
    emit(const AppState.loading());

    final result = await _useCase(NoParams());
    if (_isDisposed) return;

    result.fold(
      (failure) {
        emit(AppState.error(failure));
      },
      (data) {
        _data = data;
        emit(AppState.data(_data));
      },
    );
  }

  Future<void> setExpand(int index, bool isExpanded) async {
    List<FaqData> listData = List.from(_data);
    final dt = listData[index];
    listData[index] = dt.copyWith(isExpanded: isExpanded);
    // _data = listData;
    emit(AppState.data(listData));
  }
}
