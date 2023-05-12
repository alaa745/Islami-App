import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/theme_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../providers/settings_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int sebhaCount = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);

    return Center(
      child: Column(
        children: [
          Image.asset(provider.themeMode == ThemeMode.dark
              ? 'assets/images/sebha_header_dark.png'
              : 'assets/images/sebha_header.png'),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Text(AppLocalizations.of(context)!.sebha_count,
                style: Theme.of(context).textTheme.bodyText2),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 75,
            width: 65,
            child: Card(
              // color: const Color(0xFFFB7935F),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  sebhaCount.toString(),
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyText2?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyText2?.color,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style,
            onPressed: () {
              sebhaCount++;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context)!.sobahn_allah,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyText2?.fontSize,
                  fontWeight: FontWeight.bold,
                  color: ThemeMode.system == ThemeMode.dark
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
