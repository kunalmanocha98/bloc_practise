import 'dart:async';

import 'package:bloc_practise/sample_file/bloc/sample_bloc2.dart';
import 'package:bloc_practise/sample_file/bloc/sample_event.dart';
import 'package:bloc_practise/sample_file/bloc/sample_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SampleBloc extends Bloc<SampleEvent,SampleState>{
  SampleBloc(super.initialState){
   on<OnShowEvent1>(_showEvent);
   on<OnHideEvent1>(_hideEvent);
  }



  FutureOr<void> _showEvent(OnShowEvent1 event, Emitter<SampleState> emit) {
    final bloc2 = BlocProvider.of<SampleBloc2>(event.context);
    bloc2.add(onShowEvent2());
    emit(ShowState1());
  }

  FutureOr<void> _hideEvent(OnHideEvent1 event, Emitter<SampleState> emit) {
    final bloc2 = BlocProvider.of<SampleBloc2>(event.context);
    bloc2.add(onHideEvent2());
    // emit(HideState1());
  }
}