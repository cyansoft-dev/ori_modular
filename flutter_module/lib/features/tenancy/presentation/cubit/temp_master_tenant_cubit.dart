import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/master_tenant.dart';
import '../../domain/entities/data_tenant.dart';

@injectable
class TempMasterTenantCubit extends Cubit<List<MasterTenant>> {
  TempMasterTenantCubit() : super(<MasterTenant>[]);

  Future<void> create(List<MasterTenant> master, List<DataTenant> data) async {
    final tempMaster = [...master];
    for (var i in data) {
      tempMaster.removeWhere((e) => e.kdtk == i.kdtk && e.noPsm == i.noPsm);
    }

    emit(tempMaster);
  }
}
