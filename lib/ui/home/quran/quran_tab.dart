import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/home/quran/sura_details.dart';
import 'package:islamiapp/ui/home/quran/sura_details_args.dart';
import 'package:islamiapp/ui/home/quran/verse_name.dart';
import 'package:islamiapp/ui/theme_data.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  List<String> chapters = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/quran_header.png'),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).accentColor,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        Container(
          child: Text(
            'Chapter Name',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).accentColor,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 2,
                color: Theme.of(context).accentColor,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              );
            },
            itemCount: chapters.length,
            itemBuilder: (context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SuraDetails.routeName,
                    arguments: SuraDetailsArguments(
                      index: index,
                      title: chapters[index],
                    ),
                  );
                },
                child: Center(
                  child: VerseName(
                    title: chapters[index],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
