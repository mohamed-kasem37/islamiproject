import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/setting_provider.dart';
import 'package:provider/provider.dart';

import 'Setting_language.dart';
import 'Setting_mode.dart';

class SettingScreen extends StatefulWidget {
  static const String routename = 'SettingScreen';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var poviderLanguage = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          AppLocalizations.of(context)!.setteing_lang,
          style: Theme.of(context).textTheme.headline4,
        ),
        InkWell(
          onTap: () {
            Onclicklanguage();
            //  print('gergreger${poviderLanguage.currentTheme}');
          },
          child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 1, color: Theme.of(context).primaryColor),
                color: Colors.white,
              ),
              child: Text(
                cheak(poviderLanguage.curentlanguage),
                style: Theme.of(context).textTheme.headline6,
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.setting_theme,
          style: Theme.of(context).textTheme.headline4,
        ),
        InkWell(
          onTap: () {
            Onclicktheme();
          },
          child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 1, color: Theme.of(context).primaryColor),
                color: Colors.white,
              ),
              child: Text(
                cheakmode('${poviderLanguage.currentTheme}'),
                style: Theme.of(context).textTheme.headline6,
              )),
        ),
      ]),
    );
  }

  void Onclicktheme() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BottomSheetMode(),
    );
  }

  void Onclicklanguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SettingLanguage(),
    );
  }

  String cheak(String x) {
    if (x == "en")
      return 'English';
    else
      return 'العربية';
  }

  String cheakmode(String x) {
    if (x == "ThemeMode.light")
      return 'Light';
    else
      return 'Dark';
  }
}
