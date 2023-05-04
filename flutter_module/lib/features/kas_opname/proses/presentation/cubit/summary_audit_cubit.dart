import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '/core/appstate/app_state.dart';
import '../../data/model/summary_audit_dto.dart';
import '../../domain/entities/summary_audit.dart';
import '../../domain/usecases/get_summary_audit_usecase.dart';
import '../../domain/usecases/put_summary_audit_usecase.dart';
import '../../domain/usecases/truncate_summary_audit_usecase.dart';
import '../../domain/usecases/update_summary_audit_usecase.dart';

@injectable
class SummaryAuditCubit extends Cubit<AppState<SummaryAudit>> {
  SummaryAuditCubit(
    this._addUseCase,
    this._getUseCase,
    this._truncateUseCase,
    this._updateUseCase,
  ) : super(const AppState.initial());

  final PutSummaryAuditUseCase _addUseCase;
  final TruncateSummaryAuditUseCase _truncateUseCase;
  final GetSummaryAuditUseCase _getUseCase;
  final UpdateSummaryAuditUseCase _updateUseCase;

  SummaryAudit _summary = const SummaryAudit();

  Future<void> put(SummaryAudit summary) async {
    emit(const AppState.loading());

    final result = await _addUseCase.call(summary);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        _summary = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> updateSummary(SummaryAudit newData) async {
    emit(const AppState.loading());
    final summary = _summary.copyWith(
        summary: newData.summary, status: newData.status);
    final result = await _updateUseCase.call(summary);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        _summary = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> updateAdjustment(AdjustmentAudit value) async {
    emit(const AppState.loading());
    final adjusts = [...?_summary.adjust, value];
    final summary = _summary.copyWith(adjust: adjusts);
    final result = await _updateUseCase.call(summary);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        _summary = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> updateStatus(AuditStatus value) async {
    emit(const AppState.loading());
    final summary = _summary.copyWith(status: value);
    final result = await _updateUseCase.call(summary);
    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        _summary = data;
        emit(AppState.data(data));
      },
    );
  }

  Future<void> getByStore(String store) async {
    emit(const AppState.loading());
    final result = await _getUseCase.call(store);

    result.fold(
      (failure) => emit(AppState.error(failure)),
      (data) {
        _summary = data;
        emit(AppState.data(data));
      },
    );
  }
}
