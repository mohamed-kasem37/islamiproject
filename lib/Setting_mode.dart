import 'package:flutter/material.dart';
import 'package:islami/setting_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetMode extends StatefulWidget {
  @override
  State<BottomSheetMode> createState() => _BottomSheetModeState();
}

class _BottomSheetModeState extends State<BottomSheetMode> {
  @override
  Widget build(BuildContext context) {
    var providermode = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        InkWell(
          onTap: () {
            providermode.changeThem(ThemeMode.dark);
          },
          child: providermode.isDarkMode()
              ? selectedParamtir('Dark')
              : unselectedParamtir('Dark'),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            providermode.changeThem(ThemeMode.light);
          },
          child: providermode.isDarkMode()
              ? unselectedParamtir('Light')
              : selectedParamtir('Light'),
        ),
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
