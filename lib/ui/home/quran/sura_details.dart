import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/home/quran/sura_content.dart';
import 'package:islamiapp/ui/home/quran/sura_details_args.dart';
import 'package:islamiapp/ui/providers/settings_provider.dart';
import 'package:islamiapp/ui/theme_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraDetails extends StatefulWidget {
  static const routeName = 'SuraDetails';

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArguments;

    if (chapterContent.isEmpty) {
      readFile(args.index);
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
          title: Text(
            AppLocalizations.of(context)!.app_title,
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
                      child: chapterContent.isEmpty
                          ? CircularProgressIndicator(
                              color: Theme.of(context).primaryColor,
                            )
                          : Expanded(
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return Container(
                                    width: double.infinity,
                                    height: 2,
                                    color: Theme.of(context).accentColor,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                  );
                                },
                                itemCount: chapterContent.length,
                                itemBuilder: (context, int index) {
                                  return SuraContent(
                                      content: chapterContent[index]);
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

  void readFile(int index) async {
    Future.delayed(Duration(seconds: 3));
    String text = await rootBundle.loadString('assets/files/${index + 1}.txt');
    chapterContent = text.split('\n');
    print(chapterContent);
    setState(() {});
  }
}
