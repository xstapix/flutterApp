
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(10) {
    on<CounterIncEvent>(_onInc);
    on<CounterDecEvent>(_onDec);
  }

  _onInc(CounterIncEvent event, Emitter<int> emit) {
    emit(state + 1);
  }
  _onDec(CounterDecEvent event, Emitter<int> emit) {
    emit(state - 1);
  }

}

abstract class CounterEvents {

}

class CounterIncEvent extends CounterEvents {}
class CounterDecEvent extends CounterEvents {}