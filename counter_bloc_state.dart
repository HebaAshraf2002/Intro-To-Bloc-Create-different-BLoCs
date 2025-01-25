part of 'counte_bloc.dart';

@immutable
abstract class CounterBlocState {}

class CounterValue extends CounterBlocState {
  final int counter;
  CounterValue(this.counter);
}
