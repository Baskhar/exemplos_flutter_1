import 'package:aulaprincipaiswhidgts/navegation/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static final String routName = '/page2';
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        settings: RouteSettings(name: 'Page3'),
                        builder: (context) => Page3()));
                  },
                  child: Text("PAGE3 via Page")),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              }, child: Text("PAGE3 via Named"))
            ],
          ),
        ));
  }
}
