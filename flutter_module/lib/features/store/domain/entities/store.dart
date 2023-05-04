import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/store_model.dart';

part 'store.freezed.dart';

ListStore listStoreFromModel(List<StoreDataModel> models) =>
    ListStore.fromModel(models);
Store storeDataFromModel(StoreDataModel model) => Store.fromModel(model);

@freezed
class ListStore with _$ListStore {
  const ListStore._();

  const factory ListStore({
    List<Store>? stores,
  }) = _ListStore;

  factory ListStore.fromModel(List<StoreDataModel> models) =>
      ListStore(stores: models.map((store) => Store.fromModel(store)).toList());
}

@freezed
class Store with _$Store {
  const Store._();

  const factory Store({
    String? username,
    String? namalengkap,
    String? kodetoko,
    String? namatoko,
    String? groupname,
    String? kodecabang,
    String? namacabang,
    double? longitude,
    double? latitude,
  }) = _Store;

  factory Store.fromModel(StoreDataModel model) => Store(
        username: model.username,
        namalengkap: model.namalengkap,
        kodetoko: model.kodetoko,
        namatoko: model.namatoko,
        groupname: model.groupname,
        kodecabang: model.kodecabang,
        namacabang: model.namacabang,
        latitude: double.tryParse(model.latDecimal ?? ""),
        longitude: double.tryParse(model.longDecimal ?? ""),
      );
}
