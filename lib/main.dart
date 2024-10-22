import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  final List<String> perguntas = [
    'qual é sua cor favorita?',
    'aaaaaaaaaaaaaaaaaaaaaaaa',
    'sai fora',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Appzada do guri",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 1"),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 2"),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 3"),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 4"),
            ),
          ],
        ),
      ),
    );
  }
}
