import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'Texto': 'qual é sua cor favorita?',
      'respostas': [
        {'Texto': 'Preto', 'nota': 10},
        {'Texto': 'Vermelho', 'nota': 5},
        {'Texto': 'Branco', 'nota': 3},
        {'Texto': 'Verde', 'nota': 1}
      ],
    },
    {
      'Texto': 'Ai seila',
      'respostas': [
        {'Texto': 'nao sei', 'nota': 10},
        {'Texto': 'tb nao', 'nota': 5},
        {'Texto': 'ixi menos eu', 'nota': 3},
        {'Texto': 'eu sei ...', 'nota': 1}
      ],
    },
    {
      'Texto': 'naoaooooo',
      'respostas': [
        {'Texto': 'nao aperte dnv', 'nota': 10},
        {'Texto': 'nao ne ', 'nota': 5},
        {'Texto': 'masome', 'nota': 3},
        {'Texto': 'pare gay', 'nota': 1},
      ],
    },
    {
      'Texto': 'ixi',
      'respostas': [
        {'Texto': 'aperto kkkk', 'nota': 5},
        {'Texto': 'sai fora', 'nota': 3},
        {'Texto': '^^', 'nota': 1},
        {'Texto': ':O', 'nota': 10},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

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
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : Resultado(),
      ),
    );
  }
}
