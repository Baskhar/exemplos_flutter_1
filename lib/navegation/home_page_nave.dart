import 'package:aulaprincipaiswhidgts/navegation/page2.dart';
import 'package:flutter/material.dart';

class HomePageNave extends StatefulWidget {
  const HomePageNave({Key? key}) : super(key: key);

  @override
  State<HomePageNave> createState() => _HomePageNaveState();
}

class _HomePageNaveState extends State<HomePageNave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                      settings: RouteSettings(name: 'Page2'),
                        builder: (context) => Page2()));
                  },
                  child: Text("PAGE2 via Page")),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed(Page2.routName);
              }, child: Text("PAGE2 via Named"))
            ],
          ),
        ));
  }
}
