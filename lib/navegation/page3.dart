import 'package:aulaprincipaiswhidgts/navegation/page4.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page3"),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(
                        settings: RouteSettings(name: 'Page4'),
                        builder: (context) => Page4()));
                  },
                  child: Text("PAGE4 via Page")),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/page4');
              }, child: Text("PAGE4 via Named"))
            ],
          ),
        ),
    );
  }
}
