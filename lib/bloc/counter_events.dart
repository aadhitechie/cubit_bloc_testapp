part of 'counter_bloc.dart';


sealed class CounterEvents {}

class CounterInc extends CounterEvents{}
class CounterDec extends CounterEvents{}