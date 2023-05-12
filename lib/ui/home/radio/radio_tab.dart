import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/settings_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);

    return Container(
      margin: const EdgeInsets.only(top: 150),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/radio_header.png'),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                AppLocalizations.of(context)!.quran_radio,
                style: TextStyle(
                    fontSize: 22,
                    color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  splashRadius: 30,
                  iconSize: 50,
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                  icon: const Icon(
                    Icons.skip_previous_rounded,
                    // size: 50,
                  ),
                ),
                IconButton(
                  splashRadius: 40,
                  iconSize: 70,
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    // size: 50,
                  ),
                ),
                IconButton(
                  splashRadius: 30,
                  iconSize: 50,
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                  icon: const Icon(
                    Icons.skip_next_rounded,
                    // size: 50,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
