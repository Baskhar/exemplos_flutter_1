import 'package:flutter/material.dart';

class HomePageContainer extends StatefulWidget {
  const HomePageContainer({Key? key}) : super(key: key);

  @override
  State<HomePageContainer> createState() => _HomePageContainerState();
}

class _HomePageContainerState extends State<HomePageContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePageContainer'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10),
          //espaço externo
          padding: EdgeInsets.all(10),
          //espaço interno
          decoration: BoxDecoration(
            //deciration permite um melhor personalização
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(//sombra
                color: Colors.black,//cor da sombra
                blurRadius: 20,//intensidade da sombra
                offset: Offset(10, 10)//dimensiona a sombra
              ),
              BoxShadow(//sombra
                  color: Colors.green,//cor da sombra
                  blurRadius: 20,//intensidade da sombra
                  offset: Offset(-10, -10)//dimensiona a sombra
              ),
            ]
          ),
        ),
      ),
    );
  }
}
