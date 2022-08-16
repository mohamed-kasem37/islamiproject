import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/HadethDetails.dart';
import 'package:islami/HadethScreen.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/QuranScreen.dart';
import 'package:islami/SebhaScreen.dart';
import 'package:islami/Setting.dart';
import 'package:islami/SuraDetailsScreen.dart';
import 'package:islami/setting_provider.dart';
import 'package:provider/provider.dart';

import 'SplashScreen.dart';

void main() {
  runApp(ChangeNotifierProvider<SettingProvider>(
      create: (buildcontext) {
        return SettingProvider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provideropject = Provider.of<SettingProvider>(context);

    return MaterialApp(
      theme: MyTheme.lighttheme,
      themeMode: provideropject.currentTheme,
      routes: {
        HomeScreen.routname: (_) => HomeScreen(),
        QuranScreen.routname: (_) => QuranScreen(),
        HadethScreen.routname: (_) => HadethScreen(),
        SebhaScreen.routname: (_) => SebhaScreen(),
        SuraDetails.routename: (_) => SuraDetails(),
        HadethDetails.routname: (_) => HadethDetails(),
        SplashScreen.routname: (_) => SplashScreen(),
        SettingScreen.routename: (_) => SettingScreen(),
      },
      initialRoute: SplashScreen.routname,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Arapic, no country code
      ],
      locale: Locale(provideropject.curentlanguage),
    );
  }

}
