import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
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
              provider.changeLanguage('en');
            },
            child: provider.languageCode == "en"
                ? getSelectedWidget(
                    context, AppLocalizations.of(context)!.english)
                : getUnSelectedWidget(
                    context, AppLocalizations.of(context)!.english),
          ),
          const SizedBox(height: 8.0),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: provider.languageCode == "ar"
                  ? getSelectedWidget(
                      context, AppLocalizations.of(context)!.arabic)
                  : getUnSelectedWidget(
                      context, AppLocalizations.of(context)!.arabic)),
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
