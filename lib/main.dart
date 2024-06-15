import 'package:bloc_practise/cubit_sample/bloc/color_bloc.dart';
import 'package:bloc_practise/cubit_sample/state/cubit_state.dart';
import 'package:bloc_practise/sample_file/bloc/sample_bloc.dart';
import 'package:bloc_practise/sample_file/bloc/sample_bloc2.dart';
import 'package:bloc_practise/sample_file/bloc/sample_state.dart';
import 'package:bloc_practise/sample_file/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_sample/view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) {
            return SampleBloc(ShowState1());
          },
        ),
        BlocProvider(
          create: (BuildContext context) {
            return SampleBloc2(ShowState2());
          },
        ),
        BlocProvider(
          create: (BuildContext context) {
            return ColorBloc(InitialState());
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ViewPage(),
      ),
    );
  }
}

