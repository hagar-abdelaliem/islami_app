import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/layouts/ahadeth_layout/hadeth_content.dart';
import 'package:islami/models/hadethModel.dart';

class AhadethScreen extends StatelessWidget {
  HadethModel hadethModel = HadethModel('title', 'body');
  List<String> ahadeth = [];

  Future<void> loadAllAhadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    ahadeth = content.trim().split('#\r\n');
  }

  void convertHadethToHadethModel(int index) {
    List<String> hadeth = ahadeth[index].split('\n');
    hadethModel.title = hadeth[0];
    hadeth.removeAt(0);
    hadethModel.body = hadeth.join('\n');
  }

  @override
  Widget build(BuildContext context) {
    loadAllAhadethFile();
    return Column(
      children: [
        Center(child: Image.asset('assets/images/basmala.png')),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          'الأحاديث',
          style: Theme.of(context).textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(
                      'حديث رقم ${i + 1}',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      convertHadethToHadethModel(i);
                      Navigator.pushNamed(context, HadethContent.routeName,
                          arguments: hadethModel);
                    },
                  );
                }))
      ],
    );
  }
}
