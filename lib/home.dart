import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeNam='Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('isalmi'),
      ),
    );
  }
}
