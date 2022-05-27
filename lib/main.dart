import 'package:flutter/material.dart';


import 'views/home/home_page.dart';


final isDarkModeEnabled = ValueNotifier(false);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(
      valueListenable: isDarkModeEnabled,
      builder: (context, value, child) =>  MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
          scaffoldBackgroundColor: const Color(0xFF15202B),
        ),
        themeMode: isDarkModeEnabled.value ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        home: const HomePage(),
      ),
    );
  }
}


