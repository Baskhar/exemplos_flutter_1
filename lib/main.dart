import 'package:aulaprincipaiswhidgts/home/home_page.dart';
import 'package:aulaprincipaiswhidgts/home/home_page_container.dart';
import 'package:aulaprincipaiswhidgts/images/images_page.dart';
import 'package:aulaprincipaiswhidgts/navegation/home_page_nave.dart';
import 'package:aulaprincipaiswhidgts/navegation/page1.dart';
import 'package:aulaprincipaiswhidgts/navegation/page3.dart';
import 'package:aulaprincipaiswhidgts/navegation/page4.dart';
import 'package:aulaprincipaiswhidgts/navegation_param/lista.dart';
import 'package:flutter/material.dart';

import 'navegation/page2.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/navegation_param',

      routes: {//navegação por nomes
        '/': (_) =>HomePageNave(),
        '/page1': (_) => Page1(),
        Page2.routName: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
        '/navegation_param': (_) => Lista(),
      },
    );
  }
}
