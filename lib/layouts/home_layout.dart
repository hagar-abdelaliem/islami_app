import 'package:flutter/material.dart';
import 'package:islami/layouts/ahadeth_layout.dart';
import 'package:islami/layouts/quran_layout/quran_layout.dart';
import 'package:islami/layouts/radio_layout.dart';
import 'package:islami/layouts/setting_layout.dart';
import 'package:islami/layouts/taspeh_layout.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String routeNam='Home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex=0;
  List<Widget> screens = [RadioScreen(), TaspehScreen(), AhadethScreen(), QuranScreen(), SettingScreen()];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text('Islami', style: Theme.of(context).textTheme.headline1,)),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index){setState(() {currentIndex=index;});},
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'Radio'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'Taspeh'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),label: 'Ahadeth'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),label: 'Quran'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            ],
          ),
          body: screens[currentIndex],
        ),
      ],
    );
  }
}
