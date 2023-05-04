import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/extensions.dart';
import '../../../menu/domain/entities/delivery_master.dart';
import '../../domain/entities/data_collection.dart';

@injectable
class TempMasterCollectionCubit extends Cubit<DeliveryMaster> {
  TempMasterCollectionCubit() : super(const DeliveryMaster());
  final dateFormat = DateFormat("dd-MM-yyyy");

  Future<void> create(
      DeliveryMaster master, List<DataCollection> transactions) async {
    List<SalesDate> masterSales = [...?master.dataMaster?.salesDate];
    final listTgl = [
      ...transactions
          .where((e) => e.shift == "ALL")
          .map((e) => dateFormat.format(e.tanggal!))
    ];

    if (listTgl.isNotEmpty) {
      masterSales.removeWhere(
        (e) => listTgl.contains(dateFormat.format(e.tanggal!)),
      );
    }

    final listTrans = [...transactions.where((e) => e.shift != "ALL")];
    final dates = listTrans.map((e) => e.tanggal!).toList();
    if (dates.isNotEmpty) {
      for (var d in dates) {
        // check shift from transaction
        final transShift = listTrans
            .where((e) => e.tanggal.isSame(d))
            .map((r) => r.shift!)
            .toSet();

        // check shift from delivery master
        final masterShift = masterSales
                .firstWhere((e) => e.tanggal.isSame(d),
                    orElse: () => const SalesDate())
                .shift
                ?.toSet() ??
            <String>{};

        // validate shift input
        masterShift.removeWhere((e) => transShift.contains(e));

        if (masterShift.isEmpty) {
          masterSales.removeWhere(
            (e) => e.tanggal.isSame(d),
          );
        } else {
          for (var m in masterSales) {
            final index = masterSales.indexOf(m);
            if (m.tanggal.isSame(d)) {
              masterSales[index] = m.copyWith(shift: masterShift.toList());
            } else {
              masterSales[index] = m;
            }
          }
        }
      }
    }
    final tempMaster = master.dataMaster?.copyWith(salesDate: masterSales);
    master = master.copyWith(dataMaster: tempMaster);

    emit(master);
  }
}
