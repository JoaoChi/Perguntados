import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Voce é gente boa?',
      'respostas': [
        {'texto': 'Sim', 'pontuacao': 10},
        {'texto': 'Mais ou menos', 'pontuacao': 5},
        {'texto': 'Quase nada', 'pontuacao': 3},
        {'texto': 'Não sou', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Gosta de animais?',
      'respostas': [
        {'texto': 'Amo', 'pontuacao': 10},
        {'texto': 'Gosto', 'pontuacao': 5},
        {'texto': 'Nem tanto', 'pontuacao': 3},
        {'texto': 'Odeio', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Gosta de salada?',
      'respostas': [
        {'texto': 'Odeio', 'pontuacao': 10},
        {'texto': 'Nao gosto', 'pontuacao': 5},
        {'texto': 'Até que sim', 'pontuacao': 3},
        {'texto': 'Amo', 'pontuacao': 1},
      ],
    }
  ];

  void _reiniciarForm() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

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
          title: const Text('Primeiro App Flutter'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarForm),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
