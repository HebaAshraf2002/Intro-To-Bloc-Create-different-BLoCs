import 'package:createdifferentblocs/views/Blocs/Counter_Bloc/counte_bloc.dart';
import 'package:createdifferentblocs/views/Blocs/Theme_Bloc/theme_bloc.dart';
import 'package:createdifferentblocs/views/Counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => ThemeBlocBloc()),
        ],
        child: BlocBuilder<ThemeBlocBloc, ThemeBlocState>(
          builder: (context, themestate) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: themestate is LighTheme ? ThemeData.light() : ThemeData.dark(),
              home: Counter(title: 'Flutter Demo Home Page'),
            );
          },
        ));
  }
}
