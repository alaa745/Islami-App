import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islamiapp/ui/home/home_screen.dart';
import 'package:islamiapp/ui/theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = 'Splash';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });

    return Scaffold(
      body: Container(
        child: Image.asset(
          provider.themeMode == ThemeMode.dark
              ? 'assets/images/splash_dark.png'
              : 'assets/images/splash_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
