import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/home/hadeth/hadeth.dart';
import 'package:islamiapp/ui/home/hadeth/hadeth_details.dart';
import 'package:islamiapp/ui/home/hadeth/hadeth_details_args.dart';
import 'package:islamiapp/ui/home/hadeth/hadeth_name.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../providers/settings_provider.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  String hadethTitle = '';

  String hadethContent = '';

  List<String> hadethTitles = [];

  List<Hadeth> hadeths = [];

  @override
  Widget build(BuildContext context) {
    if (hadeths.isEmpty) {
      readHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_header.png')),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).accentColor,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        Container(
          child: Text(
            AppLocalizations.of(context)!.hadeth_number,
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
            itemCount: hadeths.length,
            itemBuilder: (context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetails.routeName,
                    arguments: HadethDetailsArguments(
                      title: hadeths[index].title,
                      content: hadeths[index].content,
                    ),
                  );
                },
                child: Center(
                  child: HadethName(
                    title: hadeths[index].title,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String text = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> splittedContent = text.split('#');
    // print(newText);
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadethContent = splittedContent[i];
      List<String> hadethlines = singleHadethContent.trim().split('\n');
      hadethTitle = hadethlines[0];
      hadethlines.removeAt(0);
      hadethContent = hadethlines.join('\n');

      print(hadethContent);
      Hadeth hadeth = Hadeth(content: hadethContent, title: hadethTitle);
      hadethList.add(hadeth);
      hadeths = hadethList;
      setState(() {});
    }
  }
}
