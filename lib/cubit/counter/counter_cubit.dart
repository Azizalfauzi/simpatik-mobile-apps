import 'dart:math';

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(1);
  void setOne() => setOne();
  void incrementCounter() => emit(min(10, state + 1));
  void decrementCounter() => emit(max(1, state - 1));
}
