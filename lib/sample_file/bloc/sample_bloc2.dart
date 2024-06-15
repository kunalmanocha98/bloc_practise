import 'dart:async';

import 'package:bloc_practise/sample_file/bloc/sample_event.dart';
import 'package:bloc_practise/sample_file/bloc/sample_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SampleBloc2 extends Bloc<SampleEvent2,SampleState2>{
  SampleBloc2(super.initialState){
    on<onShowEvent2>(_showEvent);
    on<onHideEvent2>(_hideEvent);
  }

  FutureOr<void> _showEvent(onShowEvent2 event, Emitter<SampleState2> emit) {
    emit(ShowState2());
  }

  FutureOr<void> _hideEvent(onHideEvent2 event, Emitter<SampleState2> emit) {
    emit(HideState2());
  }
}