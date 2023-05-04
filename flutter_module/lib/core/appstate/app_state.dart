import 'package:freezed_annotation/freezed_annotation.dart';

import '../failure/failure.dart';

part 'app_state.freezed.dart';

@freezed
class AppState<T> with _$AppState<T> {
  const AppState._();

  const factory AppState.initial() = _Initial;
  const factory AppState.loading() = _Loading;
  const factory AppState.data(T data) = _Data;
  const factory AppState.error(Failure error) = _Error;

  bool get isInit => maybeWhen(initial: () => true, orElse: () => false);

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get isSuccess => maybeMap(data: (_) => true, orElse: () => false);

  bool get isError => maybeWhen(error: (_) => true, orElse: () => false);

  T? get data => maybeWhen(data: (data) => data, orElse: () => null);

  Failure? get error =>
      maybeWhen(error: (failure) => failure, orElse: () => null);
}
