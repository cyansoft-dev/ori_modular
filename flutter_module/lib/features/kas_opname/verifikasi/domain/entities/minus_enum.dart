part of 'minus_opname.dart';

enum RefundStatus {
  sudahBayar("SUDAH BAYAR"), belumBayar("BELUM BAYAR");

  final String status;
  const RefundStatus(this.status);

  @override
  String toString() => status;

  factory RefundStatus.fromString(String? status) => values.firstWhere((e) => e.status == status, orElse: ()=> RefundStatus.belumBayar);
}

enum JenisSanksi {
  lisan("LISAN"),
  teguran("SURAT TEGURAN"),
  peringatan1("SURAT PERINGATAN 1"),
  peringatan2("SURAT PERINGATAN 2"),
  peringatan3("SURAT PERINGATAN 3"),
  out("DIKELUARKAN"),
  nothing("TIDAK ADA SANKSI");

  final String sanksi;
  const JenisSanksi(this.sanksi);

  @override
  String toString() => sanksi;

  factory JenisSanksi.fromString(String? status) => values.firstWhere((e) => e.sanksi == status, orElse: ()=> JenisSanksi.nothing);
}


enum VarianStatus {
  belumSerah("BELUM DISERAHKAN"), sudahSerah("SUDAH DISERAHKAN KE AS / FINANCE"), potongSales("SUDAH POTONG SALES");

  final String status;
  const VarianStatus(this.status);

  @override
  String toString() => status;

  factory VarianStatus.fromString(String? status) => values.firstWhere((e) => e.status == status, orElse: ()=> VarianStatus.belumSerah);
}

enum InputStatus {
  fraud, rrak, varian, other;
}