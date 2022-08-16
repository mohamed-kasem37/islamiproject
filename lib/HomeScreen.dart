import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Setting.dart';

import 'HadethScreen.dart';
import 'QuranScreen.dart';
import 'RadioScreen.dart';
import 'SebhaScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routname = 'homescreen';

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int indexselect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/default_bg.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islami_title,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexselect,
          onTap: (index) {
            indexselect = index;
            setState(() {});
          },
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(color: Colors.white),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('images/icon_quran.png')),
                label: AppLocalizations.of(context)!.quran_title,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/icon_sebha.png')),
              label: AppLocalizations.of(context)!.sabha_title,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('images/icon_hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth_title),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('images/icon_radio.png')),
                label: AppLocalizations.of(context)!.radio_title),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting)
          ],
        ),
        body: Container(
          child: Screens[indexselect],
        ),
      ),
    );
  }

  List<Widget> Screens = [
    QuranScreen(),
    SebhaScreen(),
    HadethScreen(),
    RadioScren(),
    SettingScreen()
  ];
}

