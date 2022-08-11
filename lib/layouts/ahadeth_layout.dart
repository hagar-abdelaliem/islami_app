import 'package:flutter/material.dart';

class AhadethScreen extends StatelessWidget {
  const AhadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/basmala.png')),
        Divider(thickness: 3, color: Theme.of(context).primaryColor,),
        Text('الأحاديث', style: Theme.of(context).textTheme.headline3,textAlign: TextAlign.center,),
        Divider(thickness: 3, color: Theme.of(context).primaryColor,),
        Expanded(
            child: ListView(
              children: [
                for(int i=1;i<=50;i++)
                  ListTile(
                    title: Text('حديث رقم ${i}', style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,),
                    onTap: (){},
                  )
              ],
            )
        )
      ],
    );
  }
}