part of 'counte_bloc.dart';

@immutable
abstract class CounterBlocEvent {}

class IncrementCounter extends CounterBlocEvent {}
class DecrementCounter extends CounterBlocEvent {}

