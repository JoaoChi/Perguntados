import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Você é o pior!';
    } else if (pontuacao < 12) {
      return 'Você é podre.';
    } else if (pontuacao < 20) {
      return 'Você é gente boa!';
    } else if (pontuacao < 25) {
      return 'O melhor!';
    } else {
      return 'Mentiroso!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            child: Text('Reiniciar'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            onPressed: reiniciarQuestionario),
      ],
    );
  }
}
