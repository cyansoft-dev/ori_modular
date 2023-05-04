import 'package:objectbox/objectbox.dart';

import '../../../login/data/model/user_model.dart';

@Entity()
class UserDto {
  int id;
  String? username;
  String? namalengkap;
  String? kodecabang;
  String? namacabang;
  String? jabatan;
  String? departement;
  bool? isStore;
  String? token;
  String? refreshToken;

  UserDto({
    this.id = 0,
    this.username,
    this.namalengkap,
    this.kodecabang,
    this.namacabang,
    this.jabatan,
    this.departement,
    this.isStore,
    this.token,
    this.refreshToken,
  });

  factory UserDto.fromModel(UserDataModel model) => UserDto(
        username: model.username,
        namalengkap: model.namalengkap,
        kodecabang: model.kodecabang,
        namacabang: model.namacabang,
        jabatan: model.jabatan,
        departement: model.departement,
        isStore: model.isStore,
        token: model.token,
        refreshToken: model.refreshToken,
      );
}
