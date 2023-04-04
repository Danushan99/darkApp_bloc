import 'package:dark_mode/controller/cubit/theme_cubit.dart';
import 'package:dark_mode/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (coontext) => ThemeCubit(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.isDark ? ThemeData.dark() : ThemeData.light(),
      showSemanticsDebugger: false,
      home: HomePage(),
    );
  }
}
