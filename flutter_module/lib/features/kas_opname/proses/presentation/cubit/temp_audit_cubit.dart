import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/summary_audit_dto.dart';
import '../../domain/entities/data_audit.dart';

@injectable
class TempAuditCubit extends Cubit<DataAudit> {
  TempAuditCubit() : super(const DataAudit());

  DataAudit _data = const DataAudit();
  Future<void> setDanaCurrent(DanaCurrent data) async {
    _data = _data.copyWith(danaCurrent: data);
    emit(_data);
  }

  Future<void> setDanaRrak(DanaRrak data) async {
    _data = _data.copyWith(danaRrak: data);
    emit(_data);
  }

  Future<void> setDanaKas(DanaKas data) async {
    _data = _data.copyWith(danaKas: data);
    emit(_data);
  }

  Future<void> setDataLast(DanaLastDay data) async {
    _data = _data.copyWith(danaLastDay: data);
    emit(_data);
  }

  Future<void> completed() async {
    _data = _data.copyWith(status: AuditStatus.finished);
    emit(_data);
  }
}
