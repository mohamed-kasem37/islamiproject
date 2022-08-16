import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Sura_name.dart';

class SuraDetails extends StatefulWidget {
  static const String routename = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as SuraIndex;

    if (verse.isEmpty) readfiles(arg.index);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/default_bg.png'),
      )),
      child: Scaffold(
          appBar: AppBar(
            iconTheme: Theme.of(context).iconTheme,
            title: Text(
              arg.title,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          body: ListView.builder(
            itemBuilder: (_, index) {
              return Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1))),
                  child: Text(
                    '${verse[index]}{${index + 1}}',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline4,
                  ));
            },
            itemCount: verse.length,
          )),
    );
  }

  void readfiles(int index) async {
    String contant = await rootBundle.loadString('files/${index + 1}.txt');
    List<String> liens = contant.split("\n");
    verse = liens;
    setState(() {});
  }
}
