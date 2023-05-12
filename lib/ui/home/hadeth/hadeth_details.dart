import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/home/hadeth/hadeth_content.dart';
import 'package:islamiapp/ui/home/hadeth/hadeth_details_args.dart';
import 'package:islamiapp/ui/home/quran/sura_content.dart';
import 'package:islamiapp/ui/home/quran/sura_details_args.dart';
import 'package:islamiapp/ui/theme_data.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class HadethDetails extends StatefulWidget {
  static const routeName = 'HadethDetails';

  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  List<String> hadethContent = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);

    var args =
        ModalRoute.of(context)?.settings.arguments as HadethDetailsArguments;

    if (hadethContent.isEmpty) {
      hadethContent = args.content.split('\n');
      setState(() {});
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.themeMode == ThemeMode.dark
              ? 'assets/images/main_background_dark.png'
              : 'assets/images/main_background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          // centerTitle: true,
          title: const Text(
            'Islami',
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 48, horizontal: 15),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Text(
                          args.title,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 2,
                        color: Theme.of(context).accentColor,
                        margin: const EdgeInsets.only(bottom: 15)),
                    Container(
                      child: hadethContent.isEmpty
                          ? CircularProgressIndicator(
                              color: Theme.of(context).primaryColor,
                            )
                          : Expanded(
                              child: ListView.builder(
                                itemCount: hadethContent.length,
                                itemBuilder: (context, int index) {
                                  return HadethContent(
                                      content: hadethContent[index]);
                                },
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
