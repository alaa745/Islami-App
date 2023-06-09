import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.enableLightMode();
            },
            child: provider.themeMode == ThemeMode.light
                ? getSelectedWidget(
                    context, AppLocalizations.of(context)!.light)
                : getUnSelectedWidget(
                    context, AppLocalizations.of(context)!.light),
          ),
          const SizedBox(height: 8.0),
          InkWell(
              onTap: () {
                provider.enableDarkMode();
              },
              child: provider.themeMode == ThemeMode.dark
                  ? getSelectedWidget(
                      context, AppLocalizations.of(context)!.dark)
                  : getUnSelectedWidget(
                      context, AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget getSelectedWidget(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
