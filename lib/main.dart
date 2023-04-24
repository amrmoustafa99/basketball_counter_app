import 'package:basketball_counter_app/Cubit/Counter_Cubit.dart';
import 'package:basketball_counter_app/Modules/pointsCounter.dart';
import 'package:basketball_counter_app/helpers/ColorsSys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorSys.five,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: ColorSys.five,
            onPrimary: Colors.white,
            // Colors that are not relevant to AppBar in LIGHT mode:
            primaryVariant: Colors.yellow,
            secondary: Colors.red,
            secondaryVariant: Colors.grey,
            onSecondary: Colors.grey,
            background: Colors.grey,
            onBackground: Colors.grey,
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
          ),
        ),
        home: Homepage(),
      ),
    );
  }
}
