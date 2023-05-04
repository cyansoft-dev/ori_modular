import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/data_collection.dart';

@injectable
class TempInputCubit extends Cubit<DataCollection> {
  TempInputCubit() : super(const DataCollection());

  DataCollection _temp = const DataCollection();
  Future<void> setInitial(DataCollection data) async {
    _temp = _temp.copyWith(
      kdtk: data.kdtk,
      type: data.type,
      delivery: data.delivery,
      idDelivery: data.idDelivery,
      status: TransactionStatus.setDate,
    );
    emit(_temp);
  }

  Future<void> setTransaction(DataCollection data) async {
    _temp = _temp.copyWith(
      kdtk: data.kdtk,
      type: data.type,
      delivery: data.delivery,
      idDelivery: data.idDelivery,
      tanggal: data.tanggal,
      jumlDetail: data.jumlDetail,
      shift: data.shift,
      status: TransactionStatus.setDetail,
    );
    emit(_temp);
  }

  Future<void> setDetail(DetailTransaction data) async {
    final List<DetailTransaction> details = [...?_temp.details];
    final index = details.indexWhere((d) => d.seqno! == data.seqno!);

    if (index < 0) {
      details.add(data);
    } else {
      details[index] = data;
    }

    _temp = _temp.copyWith(details: details);
    emit(_temp);
  }

  Future<void> setSummary(SummaryTransaction data) async {
    final List<SummaryTransaction> summary = [...?_temp.summary];

    final index = summary.indexWhere((d) => d.seqno! == data.seqno!);

    if (index < 0) {
      summary.add(data);
    } else {
      summary[index] = data;
    }

    _temp = _temp.copyWith(summary: summary);
    emit(_temp);
  }

  Future<void> setDescriptionSummary(int id, String description) async {
    final List<SummaryTransaction> summary = [...?_temp.summary];
    final index = summary.indexWhere((d) => d.seqno! == id);

    if (index >= 0) {
      final data = summary[index].copyWith(description: description);
      summary[index] = data;
    }

    _temp = _temp.copyWith(summary: summary);
    emit(_temp);
  }

  Future<void> setStatus(TransactionStatus status) async {
    _temp = _temp.copyWith(status: status);
    emit(_temp);
  }

  Future<void> reset() async {
    _temp = const DataCollection();
    emit(_temp);
  }
}
