import 'package:flutter/material.dart';
import 'package:islami/models/hadethModel.dart';

class HadethContent extends StatelessWidget {
  static const String routeName = 'HadethContent';
  var hadeth;

  Future<void> loadFile() async {}

  @override
  Widget build(BuildContext context) {
    hadeth = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              title: Text(
            'Islami',
            style: Theme.of(context).textTheme.headline1,
          )),
          body: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(248, 248, 248, 0.6),
              borderRadius: BorderRadius.circular(15),
            ),
            margin:
                const EdgeInsets.only(top: 30, left: 50, right: 50, bottom: 70),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text(
                  hadeth.title,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Divider(
                  thickness: 1,
                  color: Theme.of(context).primaryColor,
                  indent: 30,
                  endIndent: 30,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      return Text(
                        hadeth.body,
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      );
                    },
                    padding: const EdgeInsets.all(20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
