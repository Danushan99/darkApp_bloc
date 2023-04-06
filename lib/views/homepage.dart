import 'package:dark_mode/controller/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("theme : ${theme.isDark ? 'Dark' : 'light'}"),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  theme.changeTheam();
                },
                child: Text("Change Theme"))
          ],
        ),
      ),
    );
  }
}
