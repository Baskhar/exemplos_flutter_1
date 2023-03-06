import 'package:aulaprincipaiswhidgts/navegation_param/detail.dart';
import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      settings: RouteSettings(
                        name: 'detail',
                        arguments: {
                          'id':10
                        }
                      ),
                      builder: (context) => Detail()));
                },
                child: Text('Detail')),
          ],
        ),
      ),
    );
  }
}
