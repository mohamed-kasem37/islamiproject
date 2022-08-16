import 'package:flutter/material.dart';

import 'SuraDetailsScreen.dart';

class SuraName extends StatefulWidget {
  String title;
  int index;

  SuraName(this.index, this.title);

  @override
  State<SuraName> createState() => _SuraNameState();
}

class _SuraNameState extends State<SuraName> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, SuraDetails.routename,
              arguments: SuraIndex(widget.index, widget.title));
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Theme.of(context).primaryColor, width: 2))),
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            )));
  }
}

class SuraIndex {
  int index;
  String title;

  SuraIndex(this.index, this.title);
}
