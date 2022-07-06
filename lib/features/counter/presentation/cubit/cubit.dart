

import 'package:algoriza_testt/features/presentation/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 class CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super(InitialCounterStates());

  static  CounterCubit get(context) => BlocProvider.of<CounterCubit>(context);

  int Counter = 0 ;


  void inCrement()
  {
    Counter++;
    emit(CounterplusStates());
  }


  void deCrement()
  {
    Counter--;
    emit(CounterminusStates());
  }
}
