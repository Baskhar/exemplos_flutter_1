import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nossa Primeira AppBar",
          style: TextStyle(fontFamily: 'Tourney'),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_link_outlined)),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text("Drawer Aberto"),
        ),
      ), //menu laterak
      body: Center(
        child: Text(
          "Nossa Home Page",
          style: TextStyle(
            fontFamily: 'Tourney',
            color: Colors.black,
            //fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
