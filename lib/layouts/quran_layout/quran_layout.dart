import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/layouts/quran_layout/ayat_items.dart';
import 'package:islami/models/surasModel.dart';

class QuranScreen extends StatelessWidget {
  List<SuraModel> sura= [
    SuraModel('الفاتحة',7),SuraModel('البقرة',286),SuraModel('آل عمران',200),SuraModel('النساء',176),SuraModel('المائدة',120),
    SuraModel('الأنعام',165),SuraModel('الأعراف',206),SuraModel('الأنفال',75),SuraModel('التوبة',129),SuraModel('يونس',109),
    SuraModel('هود',	123),SuraModel('يوسف',111),SuraModel('الرعد',43),SuraModel('إبراهيم',52),SuraModel('الحجر',99	),
    SuraModel('النحل',128),SuraModel('الإسراء',111),SuraModel('الكهف',110),SuraModel('مريم',98),SuraModel('طه',135),
    SuraModel('الأنبياء',112),SuraModel('الحج',78),SuraModel('المؤمنون',118),SuraModel('النور',64),SuraModel('الفرقان',77),
    SuraModel('الشعراء',227),SuraModel('النمل',93	),SuraModel('القصص',88	),SuraModel('العنكبوت',69),SuraModel('الروم',60),
    SuraModel('لقمان',34),SuraModel('السجدة',30),SuraModel('الأحزاب',73),SuraModel('سبأ',54),SuraModel('فاطر',45	),
    SuraModel('يس',83),SuraModel('الصافات',182),SuraModel('ص',88),SuraModel('الزمر',75),SuraModel('غافر',85),SuraModel('فصلت',54),
    SuraModel('الشورى',53),SuraModel('الزخرف',89),SuraModel('الدخان',59),SuraModel('الجاثية',37),SuraModel('الأحقاف',35),
    SuraModel('محمد',38),SuraModel('الفتح',29),SuraModel('الحجرات',18),SuraModel('ق',45	),SuraModel('الذاريات',60),
    SuraModel('الطور',49), SuraModel('النجم',62),SuraModel('القمر',55),SuraModel('الرحمن',78),SuraModel('الواقعة',96),
    SuraModel('الحديد',29),SuraModel('المجادلة',22), SuraModel('الحشر',24), SuraModel('الممتحنة',13), SuraModel('الصف',14),
    SuraModel('الجمعة',11),SuraModel('المنافقون',11),SuraModel('التغابن',18),SuraModel('الطلاق',12),SuraModel('التحريم',12),
    SuraModel('	الملك',30), SuraModel('القلم',52), SuraModel('الحاقة',52),SuraModel('المعارج',44),SuraModel('نوح',28	),
    SuraModel('الجن',28	),SuraModel('المزمل',20	),SuraModel('المدثر',56), SuraModel('القيامة',40), SuraModel('الإنسان',31),
    SuraModel('المرسلات',50),SuraModel('النبأ',40),SuraModel('النازعات',46),SuraModel('عبس',42	),SuraModel('التكوير',29	),
    SuraModel('الانفطار',19),SuraModel('المطففين',36),SuraModel('الإنشقاق',25),SuraModel('البروج',22), SuraModel('الطارق',17),
    SuraModel('الأعلى',19),SuraModel('الغاشية',26),SuraModel('الفجر',30),SuraModel('البلد',20),SuraModel('الشمس',15),
    SuraModel('الليل',21),SuraModel('الضحى',11),SuraModel('الشرح',8),SuraModel('التين',8),SuraModel('العلق',19),SuraModel('القدر',5),
    SuraModel('البينة',8),SuraModel('الزلزلة',8),SuraModel('العاديات',11),SuraModel('القارعة',11),SuraModel('التكاثر',8),
    SuraModel('العصر',3),SuraModel('الهمزة',9),SuraModel('الفيل',5),SuraModel('قريش',4),SuraModel('الماعون',7),SuraModel('الكوثر',3),
    SuraModel('الكافرون',6),SuraModel('النصر',3),SuraModel('المسد',5),SuraModel('الإخلاص',4),SuraModel('الفلق',5),SuraModel('الناس',6)];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/moshaf_bg.png')),
        Divider(thickness: 3, color: Theme.of(context).primaryColor,),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 20,right: 20),
          title: Text('عدد الآيات', style: Theme.of(context).textTheme.headline3,),
          trailing: Text('اسم السورة', style: Theme.of(context).textTheme.headline3,),
        ),
        Divider(thickness: 3, color: Theme.of(context).primaryColor,),
        Expanded(
            child: ListView.builder(
          itemCount: sura.length,
          itemBuilder: (context, i) {
            return Ayats(sura[i].name, sura[i].ayatNumber, i + 1);
          },
        ))
      ],
    );
  }
}
