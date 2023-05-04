import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../store/domain/entities/store.dart';

@injectable
class SelectedStoreCubit extends Cubit<Store> {
  SelectedStoreCubit() : super(const Store());

  Future<void> setStore(Store store) async {
    emit(store);
  }
}
