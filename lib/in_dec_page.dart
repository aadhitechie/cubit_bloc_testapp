import 'package:bloc_pattern/cubit/counter_cubit.dart';
import 'package:bloc_pattern/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InDecPage extends StatelessWidget {
  const InDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit_counter = BlocProvider.of<CounterCubit>(context);
    return  Scaffold(
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
          ),          SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
                Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (ctx) => HomeScreen()));
            },
            child: Icon(Icons.arrow_back_ios_new_sharp),
          ),
        ],
      ),
    );
  }
}