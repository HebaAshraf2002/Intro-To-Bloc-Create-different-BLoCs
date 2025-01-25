import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_bloc_event.dart';
part 'theme_bloc_state.dart';

class ThemeBlocBloc extends Bloc<ThemeBlocEvent, ThemeBlocState> {
  ThemeBlocBloc() : super(LighTheme()) {
    on<ThemeBlocEvent>((event, emit) {
      if (state is LighTheme) {
        emit(DarkTheme());
      } else {
        emit(LighTheme());
      }
    });
  }
}
