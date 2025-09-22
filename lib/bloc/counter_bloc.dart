import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvents,int>{
  CounterBloc():super(0){
//counter decrement logic
    on<CounterInc>((event,emit){
      emit(state + 1);
    });

//counter decrement logic
    on<CounterDec>((event,emit){
      emit(state - 1);
    });
  }
  
}