import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

enum TimeSharing {
  PAGI, SIANG, SORE, PETANG, MALAM;

  @override
  String toString() => name;
}

@injectable
class TimerCubit extends Cubit<TimeSharing> {
  TimerCubit() : super(TimeSharing.PAGI);

  Timer? _timer;
  DateTime _date = DateTime.now();

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }

  Future<void> startTime() async {
    _updateState();
    _timer = Timer.periodic(
      const Duration(minutes: 1),
      (timer) {
        final now = DateTime.now();
        if (now.hour != _date.hour){
          _date = now;
          _updateState();
        }
      },
    );
  }

  Future<void> _updateState() async {
    if (_date.hour >= 4 && _date.hour < 10) {
      emit(TimeSharing.PAGI);
    }

    if (_date.hour >= 10 && _date.hour < 15) {
      emit(TimeSharing.SIANG);
    }

    if (_date.hour >= 15 && _date.hour < 17) {
      emit(TimeSharing.SORE);
    }

    if (_date.hour >= 17 && _date.hour < 19) {
      emit(TimeSharing.PETANG);
    }

    if (_date.hour >= 19 && _date.hour < 4) {
      emit(TimeSharing.MALAM);
    }

  }
}
