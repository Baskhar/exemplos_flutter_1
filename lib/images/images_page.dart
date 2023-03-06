import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    //deixa a imagem como backgroud
                    image: AssetImage('assets/paisagem.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Center(
                  child: Text(
                'Imagem de Paisagem',
                style: TextStyle(
                  backgroundColor: Colors.white.withOpacity(0.6 ),
                  fontSize: 20,
                  
                ),
              )),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'https://www.zup.com.br/wp-content/uploads/2021/03/5ce2fde702ef93c1e994d987_flutter.png',
                //imagem através de um link
                //fit: BoxFit.fill, //preencher o espaço, mas irá distorcer a imagem
                //fit: BoxFit.contain,//caber sem distorcer
                fit: BoxFit
                    .cover, //adapta a imagem mantendo a qualidade(preeche todo o espaço)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
