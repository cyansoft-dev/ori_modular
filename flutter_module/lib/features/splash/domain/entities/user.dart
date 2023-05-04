import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../login/data/model/user_model.dart';
import '../../data/model/user_dto.dart';

part 'user.freezed.dart';

User userFromModel(UserDataModel model) => User.fromModel(model);

User userFromDto(UserDto dto) => User.fromDto(dto);

@freezed
class User with _$User {
  const User._();

  const factory User({
    String? username,
    String? namalengkap,
    String? kodecabang,
    String? namacabang,
    String? jabatan,
    String? departement,
    bool? isStoreCrew,
    String? token,
    String? refreshToken,
  }) = _User;

  factory User.fromModel(UserDataModel model) => User(
      username: model.username,
      namalengkap: model.namalengkap,
      kodecabang: model.kodecabang,
      namacabang: model.namacabang,
      jabatan: model.jabatan,
      departement: model.departement,
      token: model.token,
      refreshToken: model.refreshToken,
      isStoreCrew: model.isStore);

  factory User.fromDto(UserDto model) => User(
      username: model.username,
      namalengkap: model.namalengkap,
      kodecabang: model.kodecabang,
      namacabang: model.namacabang,
      jabatan: model.jabatan,
      departement: model.departement,
      token: model.token,
      refreshToken: model.refreshToken,
      isStoreCrew: model.isStore);
}
