import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../menu/domain/entities/menu.dart';

@injectable
class SelectedSubmenuCubit extends Cubit<MenuData> {
  SelectedSubmenuCubit() : super(const MenuData());

  Future<void> setMenu(MenuData menu) async {
    emit(menu);
  }
}
