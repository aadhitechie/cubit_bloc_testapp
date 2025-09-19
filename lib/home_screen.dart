import 'package:bloc_pattern/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final cubit_counter = CounterCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder(
              bloc: cubit_counter,
              builder: (context,state) {
                return Text('Counter number : $state');
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              cubit_counter.increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              cubit_counter.decrement();
            },
            child: Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
