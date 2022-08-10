import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/moshaf_bg.png')),
      ],
    );
  }
}
