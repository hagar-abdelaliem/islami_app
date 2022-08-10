import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeNam='Home';
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
            currentIndex: 0,
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'Radio'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'Sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),label: 'Ahadeth'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),label: 'Quran'),
            ],
          ),
        ),
      ],
    );
  }
}
