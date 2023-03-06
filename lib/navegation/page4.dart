import 'package:aulaprincipaiswhidgts/navegation/page1.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page4"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          settings: RouteSettings(name: 'Page1'),
                          builder: (context) => Page1(),
                        ),
                        ModalRoute.withName('Page2'));//remover até apagina 2 e adciona a pagina 1 na frente
                  },
                  child: Text("PAGE1 via Page")),
              ElevatedButton(onPressed: () {}, child: Text("PAGE1 via Named"))
            ],
          ),
        ));
  }
}
