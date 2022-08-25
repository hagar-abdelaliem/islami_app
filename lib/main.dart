import 'package:flutter/material.dart';
import 'package:islami/layouts/ahadeth_layout/hadeth_content.dart';
import 'package:islami/layouts/quran_layout/sura_content.dart';
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
        Home.routeName: (context) => Home(),
        SuraContent.routeName: (context) => SuraContent(),
        HadethContent.routeName: (context) => HadethContent(),
      },
      initialRoute: Home.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}



