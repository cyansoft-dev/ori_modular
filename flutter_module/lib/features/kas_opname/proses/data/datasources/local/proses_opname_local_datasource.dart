import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:injectable/injectable.dart';

import '/core/constants/file_constants.dart';
import '../../../../../../core/database/database.dart';
import '../../../../../../core/database/objectbox.g.dart';
import '../../model/kas_master_model.dart';
import '../../model/summary_audit_dto.dart';

abstract class ProsesOpnameLocalDataSource {
  Future<KasMasterModel> getKasMaster();

  Future<SummaryAuditDto?> addSummaryAudit(SummaryAuditDto data);

  Future<SummaryAuditDto?> updateSummaryAudit(SummaryAuditDto data);

  Future<SummaryAuditDto?> getSummaryByStore(String store);

  Future<bool> truncateSummary();
}

@Named("prosesOpnameLocalDataSource")
@LazySingleton(as: ProsesOpnameLocalDataSource)
class ProsesOpnameLocalDataSourceImpl implements ProsesOpnameLocalDataSource {
  final Database _database;
  ProsesOpnameLocalDataSourceImpl(@Named("database") this._database);

  @override
  Future<KasMasterModel> getKasMaster() async {
    final result = await rootBundle.loadString(FileConstants.collectionMaster);
    final data =
        await compute<String, KasMasterModel>(kasMasterModelFromJson, result);
    return data;
  }

  @override
  Future<SummaryAuditDto?> addSummaryAudit(SummaryAuditDto data) async {
    final box = _database.store.box<SummaryAuditDto>();
    if (data.toko != null && data.tanggal != null) {
      final query = box.query(SummaryAuditDto_.toko.equals(data.toko!));
      final builder = query.build();
      builder.remove();
      box.put(data);
      return await getSummaryByStore(data.toko!);
    }
    return null;
  }

  @override
  Future<SummaryAuditDto?> getSummaryByStore(String store) async {
    final box = _database.store.box<SummaryAuditDto>();
    final now = DateTime.now();
    final curDate =
        DateTime(now.year, now.month, now.day).millisecondsSinceEpoch;
    final conditions = SummaryAuditDto_.toko
        .equals(store)
        .and(SummaryAuditDto_.tanggal.equals(curDate));
    final query = box.query(conditions).build();
    final result = query.findFirst();
    return result;
  }

  @override
  Future<bool> truncateSummary() async {
    final result = await _database.deleteAllData<SummaryAuditDto>();
    if (result.isEmpty) {
      return Future.value(true);
    }
    return Future.value(false);
  }

  @override
  Future<SummaryAuditDto?> updateSummaryAudit(SummaryAuditDto data) async {
    final box = _database.store.box<SummaryAuditDto>();
    final conditions = SummaryAuditDto_.id.equals(data.id);
    final query = box.query(conditions).build();
    final result = query.count();
    if (result > 0) {
      box.put(data);
    }

    final updData = query.findFirst();
    return updData;
  }
}
