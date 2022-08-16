import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/HadethDetails.dart';

class HadethScreen extends StatefulWidget {
  static const String routname = 'HadethScreen';

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> Hadethlist = [];

  @override
  Widget build(BuildContext context) {
    if (Hadethlist.isEmpty) readHadeth();

    return ListView.builder(
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, HadethDetails.routname,
                arguments: Hadeth(
                    Hadethlist[index].title, Hadethlist[index].hadethbody));
          },
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 75),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2))),
              padding: EdgeInsets.all(10),
              child: Text(
                '${Hadethlist[index].title}',
                style: TextStyle(fontSize: 20),
              )),
        );
      },
      itemCount: Hadethlist.length,
    );
  }

  readHadeth() async {
    String contant = await rootBundle.loadString('files/ahadeth.txt');
    List<Hadeth> Hadethfile = [];
    List<String> allHadeth = contant.trim().split('#');
    for (int i = 0; i < allHadeth.length; i++) {
      List<String> lines = allHadeth[i].trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String Contant = lines.join('\n');
      Hadeth data = Hadeth(title, Contant);
      Hadethfile.add(data);
    }
    Hadethlist = Hadethfile;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String hadethbody;

  Hadeth(this.title, this.hadethbody);
}
