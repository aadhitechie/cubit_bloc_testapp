import 'package:bloc_pattern/bloc/counter_bloc.dart';
import 'package:bloc_pattern/cubit/counter_cubit.dart';
import 'package:bloc_pattern/in_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final cubit_counter = BlocProvider.of<CounterCubit>(context);
    //final bloc_counter = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CounterBloc,int>(
              // bloc: bloc_counter,
              builder: (context, state) {
                return Text('Counter number : $state');
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: () {
          
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (ctx) => InDecPage()));
        },
        
      ),
    );
  }
}
