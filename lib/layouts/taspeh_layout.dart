import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaspehScreen extends StatefulWidget {
  @override
  State<TaspehScreen> createState() => _TaspehScreenState();
}

class _TaspehScreenState extends State<TaspehScreen> {
  int counter=0, temp=0;
  String str='سبحان الله';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: InkWell(child: Image.asset('assets/images/sepha.png'),
            onTap: (){
              counter++;
              temp++;
              if(counter == 30){str='الحمد لله'; temp=0;}
              if(counter == 60){str='لا إله إلا الله'; temp=0;}
              if(counter == 90){str='سبحان الله'; counter=0; temp=0;}
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: 30),
        Text('عدد التسبيحات',style: Theme.of(context).textTheme.headline3,),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xffc6af8e),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text('${temp}',style: Theme.of(context).textTheme.headline2,),),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(str,style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),),
        ),
      ],
    );
  }
}
