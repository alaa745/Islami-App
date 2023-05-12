import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/home/settings/Theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headline5,
          ),
          InkWell(
            onTap: () {
              ShowThemeBottomSheet(context);
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).cardColor,
                border: Border.all(
                  color: Theme.of(context).accentColor,
                  width: 1,
                ),
              ),
              child: Text(
                'Light',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Language',
            style: Theme.of(context).textTheme.headline5,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).cardColor,
                border: Border.all(
                  color: Theme.of(context).accentColor,
                  width: 1,
                ),
              ),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }
}
