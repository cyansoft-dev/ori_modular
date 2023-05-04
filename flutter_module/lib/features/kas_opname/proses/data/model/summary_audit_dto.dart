import 'package:objectbox/objectbox.dart';

enum AuditStatus {
  initial,
  locked,
  finished,
  uploaded,
  review,
  completed;

  factory AuditStatus.fromIndex(int? index) {
    if (index == null) {
      return AuditStatus.initial;
    }

    return AuditStatus.values.firstWhere(
      (e) => e.index == index,
      orElse: () => AuditStatus.initial,
    );
  }
}

@Entity()
class SummaryAuditDto {
  @Id()
  int id;

  String? toko;

  @Property(type: PropertyType.date)
  DateTime? tanggal;

  double? values;

  @Backlink('summary')
  final adjust = ToMany<AdjustmentAuditDto>();

  @Transient()
  AuditStatus? auditStatus;

  int? get status {
    _ensureStableEnumValues();
    return auditStatus?.index;
  }

  set status(int? value) {
    if (value == null) {
      auditStatus = null;
    } else {
      auditStatus = AuditStatus.values.elementAt(value);
    }
  }

  void _ensureStableEnumValues() {
    assert(AuditStatus.initial.index == 0);
    assert(AuditStatus.locked.index == 1);
    assert(AuditStatus.finished.index == 2);
    assert(AuditStatus.uploaded.index == 3);
    assert(AuditStatus.review.index == 4);
    assert(AuditStatus.completed.index == 5);
  }

  SummaryAuditDto({
    this.id = 0,
    this.toko,
    this.tanggal,
    this.values,
    this.auditStatus,
  });
}

@Entity()
class AdjustmentAuditDto {
  @Id()
  int id;

  double nominal;

  String? desc;

  final summary = ToOne<SummaryAuditDto>();

  AdjustmentAuditDto({
    this.id = 0,
    this.nominal = 0.0,
    this.desc,
  });
}
