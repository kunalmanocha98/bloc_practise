import 'package:bloc_practise/cubit_sample/bloc/color_bloc.dart';
import 'package:bloc_practise/cubit_sample/state/cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewPage extends StatelessWidget{
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ColorBloc,SampleCubitState>(
        builder: (context,state){
          if(state is ChangeState || state is InitialState) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    BlocProvider.of<ColorBloc>(context).changeColor(Colors.red);
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    color: state.color,
                  ),
                ),
                ElevatedButton(onPressed: () {
                  BlocProvider.of<ColorBloc>(context).makeNetworkCall();
                }, child: Text("Remove"))
              ],
            );
          }else if(state is LoadingState){
            return const CircularProgressIndicator();
          }else if(state is LoadedState){
            return Text(state.data??"No data");
          }else{
            return Text("No STATE");
          }
        },
      ),
    );
  }

}