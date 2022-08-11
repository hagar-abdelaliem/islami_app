import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraContent extends StatefulWidget {
  static const String routName='suraContent';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  var suraName;

  List<String> ayat=[];

  @override
  Widget build(BuildContext context) {
    suraName=ModalRoute.of(context)?.settings.arguments as List;
    if(ayat.isEmpty){loadFile(suraName[1]);}
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text('Islami', style: Theme.of(context).textTheme.headline1,)),
          body: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(248, 248, 248, 0.6),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.only(top: 30,left: 50,right: 50,bottom: 70),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text('سورة '+suraName[0],style: Theme.of(context).textTheme.headline2,),
                Divider(thickness: 1, color: Theme.of(context).primaryColor,indent: 30,endIndent: 30,),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(20),
                    children: [
                      for(int i=0 ;i<ayat.length;i++)
                        Text(ayat[i],textDirection: TextDirection.rtl,style: const TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  void loadFile(int index) async{
    String content= await rootBundle.loadString('assets/files/${index}.txt');
    ayat.add(content);
    setState(() {});
  }
}
