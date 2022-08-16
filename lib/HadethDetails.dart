import 'package:flutter/material.dart';
import 'package:islami/HadethScreen.dart';

class HadethDetails extends StatelessWidget {
  static const String routname = 'HadethScreen';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/default_bg.png'))),
        child: Scaffold(
            appBar: AppBar(
                iconTheme: Theme.of(context).iconTheme,
                title: Text(
                  arg.title,
                )),
            body: SingleChildScrollView(
                child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2))),
              child: Text(
                arg.hadethbody,
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.headline4,
              ),
            ))));
  }
}

class Hadethbody {
  String title;
  String hadethbody;

  Hadethbody(this.title, this.hadethbody);
}
