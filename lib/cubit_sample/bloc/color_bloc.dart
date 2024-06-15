import 'package:bloc_practise/cubit_sample/state/cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ColorBloc extends Cubit<SampleCubitState>{
  ColorBloc(super.initialState);

  void changeColor(Color? color){
    emit(ChangeState(color: color));
  }

  void makeNetworkCall() async{
    emit(LoadingState());
    var response = await http.get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));
    emit(LoadedState(data: response.body));
  }
}