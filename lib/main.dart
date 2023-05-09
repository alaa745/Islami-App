import 'package:flutter/material.dart';
import 'package:islamiapp/ui/home/hadeth/hadeth_details.dart';
import 'package:islamiapp/ui/home/home_screen.dart';
import 'package:islamiapp/ui/home/quran/sura_details.dart';
import 'package:islamiapp/ui/splash/splash_screen.dart';
import 'package:islamiapp/ui/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
