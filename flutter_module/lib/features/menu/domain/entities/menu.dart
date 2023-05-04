import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/menu_model.dart';

part 'menu.freezed.dart';

Menu menuFromModel(MenuModel models) => Menu.fromModel(models);

MenuData menuDataFromModel(MenuDataModel model) => MenuData.fromModel(model);

@freezed
class Menu with _$Menu {
  const Menu._();

  const factory Menu({
    List<MenuData>? menuMain,
    List<MenuData>? menuCollection,
    List<MenuData>? menuTenancy,
    List<MenuData>? menuKasOpname,
  }) = _Menu;

  factory Menu.fromModel(MenuModel models) => Menu(
        menuMain:
            models.menuUtama?.map((menu) => MenuData.fromModel(menu)).toList(),
        menuCollection: models.menuCollection
            ?.map((menu) => MenuData.fromModel(menu))
            .toList(),
        menuTenancy:
            models.menuTenant?.map((menu) => MenuData.fromModel(menu)).toList(),
      menuKasOpname:models.menuKasOpname?.map((menu) => MenuData.fromModel(menu)).toList(),
      );
}

@freezed
class MenuData with _$MenuData {
  const MenuData._();

  const factory MenuData({
    int? id,
    String? title,
    String? subtitle,
    String? path,
    String? icon,
    bool? detectPosition,
  }) = _MenuData;

  factory MenuData.fromModel(MenuDataModel model) => MenuData(
        id: model.id,
        title: model.title,
        subtitle: model.subtitle,
        path: model.path,
        icon: model.icon,
        detectPosition: model.lockLocation == "true",
      );
}
