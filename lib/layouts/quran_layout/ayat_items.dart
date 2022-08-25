import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/layouts/quran_layout/sura_content.dart';

class Ayats extends StatelessWidget {
  String name;
  int num;
  int index;
  Ayats(this.name,this.num,this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(contentPadding: const EdgeInsets.only(left: 50,right: 50),
          title: Text('${num}', style: Theme.of(context).textTheme.headline2,),
          trailing: Text(name, style: Theme.of(context).textTheme.headline2,),
          onTap: (){
          Navigator.pushNamed(context, SuraContent.routeName,
                arguments: [name, index]);
          },
        ),
        Divider(color: Theme.of(context).primaryColor,),
      ],
    );
  }
}
