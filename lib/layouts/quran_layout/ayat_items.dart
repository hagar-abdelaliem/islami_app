import 'package:flutter/material.dart';

class Ayats extends StatelessWidget {
  String name;
  int num;
  Ayats(this.name,this.num);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(contentPadding: const EdgeInsets.only(left: 50,right: 50),
          title: Text('${num}', style: Theme.of(context).textTheme.headline2,),
          trailing: Text(name, style: Theme.of(context).textTheme.headline2,),
          onTap: (){},
        ),
        Divider(color: Theme.of(context).primaryColor,),
      ],
    );
  }
}
