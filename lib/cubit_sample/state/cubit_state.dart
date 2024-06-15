import 'package:flutter/material.dart';

abstract class SampleCubitState {
  Color color = Colors.blue;
}

class InitialState extends SampleCubitState{
  InitialState(){
    color = Colors.green;
  }
}

class ChangeState extends SampleCubitState{
  ChangeState({Color? color}){
    this.color = color ?? Colors.black;
  }
}
class LoadingState extends SampleCubitState{

}
class LoadedState extends SampleCubitState{
  String? data;
  LoadedState({required String this.data});
}