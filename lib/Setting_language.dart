import 'package:flutter/material.dart';
import 'package:islami/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingLanguage extends StatefulWidget {
  @override
  State<SettingLanguage> createState() => _SettingLanguageState();
}

class _SettingLanguageState extends State<SettingLanguage> {
  @override
  Widget build(BuildContext context) {
    var poviderLanguage = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(

//2.12  2.43   beshoy    1660
          children: [
            InkWell(
                onTap: () {
                  poviderLanguage.changelanguage('en');
                },
                child: poviderLanguage.curentlanguage == 'en'
                    ? selectedParamtir('English')
                    : unselectedParamtir("English")),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  poviderLanguage.changelanguage('ar');
                },
                child: poviderLanguage.curentlanguage == 'ar'
                    ? selectedParamtir('العربية')
                    : unselectedParamtir("العربية")),
          ]),
    );
  }

  Widget selectedParamtir(String text) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Theme.of(context).primaryColor),
      ),
      Icon(Icons.check, color: Theme.of(context).primaryColor)
    ]);
  }

  Widget unselectedParamtir(String text) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: Theme.of(context).textTheme.headline5,
      ),
    ]);
  }
}
