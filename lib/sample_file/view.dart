import 'package:bloc_practise/sample_file/bloc/sample_bloc.dart';
import 'package:bloc_practise/sample_file/bloc/sample_event.dart';
import 'package:bloc_practise/sample_file/bloc/sample_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sample_bloc2.dart';

class SamplePage extends StatelessWidget{
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SampleBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Row(
          children: [
            BlocBuilder<SampleBloc,SampleState>(
                builder: (context,state) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      state is ShowState1 ?Container(
                      width: 180,
                        height: 200,
                        color: Colors.blue,
                        child: const Center(
                          child: Text("Number 1"),
                        ),
                  ):Container(),
                      ElevatedButton(onPressed: (){
                        bloc.add(OnShowEvent1(context));},
                          child: Text("Show 2")),
                      ElevatedButton(onPressed: (){bloc.add(OnHideEvent1(context));},
                          child: Text("Hide 2"))
                    ],
                  );
                }
            ),
            SizedBox(width: 20,),
            BlocBuilder<SampleBloc2,SampleState2>(
                builder: (context,state) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      state is ShowState2 ?Container(
                        width: 180,
                        height: 200,
                        color: Colors.green,
                        child: const Center(
                          child: Text("Number 2"),
                        ),
                      ):Container(),
                      ]
                      // ElevatedButton(onPressed: (){
                      //   bloc2.add(onShowEvent1());},
                      //     child: Text("Show 1")),
                      // ElevatedButton(onPressed: (){bloc2.add(onHideEvent1());},
                      //     child: Text("Hide 1"))               ],
                  );
                }
            ),
          ],
        ),
      )
    );
  }

}