import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/views/home/bloc/theme_switch_bloc.dart';

import 'views/home/home_page.dart';

// final isDarkModeEnabled = ValueNotifier(false);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // BlocProvider
  // BlocBuilder

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeSwitchBloc>(
      create: (context) => ThemeSwitchBloc(),
      child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark().copyWith(
              appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
              scaffoldBackgroundColor: const Color(0xFF15202B),
            ),
            themeMode: (state as ThemeSwitch).isDark
                ? ThemeMode.dark
                : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
