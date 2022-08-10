import 'package:flutter/material.dart';
import 'package:islami/shared/styles/themes.dart';
import 'layouts/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeNam: (context)=>Home(),
      },
      initialRoute: Home.routeNam,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}



