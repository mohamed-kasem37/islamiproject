import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  static const String routname = 'SebhaScreen';

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double anglee = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
              child: Image.asset(
            "images/head_sebha_log.png",
            alignment: Alignment.center,
          )),
          InkWell(
            onTap: onpressed,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            //sebhaclick();

            child: Transform.rotate(
                angle: anglee * 5,
                child: Image.asset("images/body_sebha_logo.png")),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              padding: EdgeInsets.all(5),
              // decoration:BoxDecoration(border:Border.all(
              //     color: Theme.of(context).primaryColor,width: 3),color:Theme.of(context).primaryColor
              // ,borderRadius: BorderRadius.circular(10)
              //  ),
              child: Text(
                "عدد التسبيحات  ",
                style: Theme.of(context).textTheme.headline5,
              )),
          SizedBox(
            height: 25,
          ),
          Container(
              alignment: Alignment.center,
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 3),
                borderRadius: BorderRadius.circular(40),
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                '$count',
                style: Theme.of(context).textTheme.headline6,
              )),
          SizedBox(
            height: 25,
          ),
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 3),
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(tasabeh[i],
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  int count = 0;
  List<String> tasabeh = ['سبحان الله', 'الحمد لله', 'الله اكبر'];
  int i = 0;

  void sebhaclick() {
    count++;

    if (count == 34) {
      count = 0;
      i++;
    }
    if (i == 3) {
      i = 0;
    }
    setState(() {});
  }

  onpressed() {
    anglee = anglee - 4;
    sebhaclick();
    setState(() {});
  }
}
