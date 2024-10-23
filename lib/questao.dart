import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(12, 12, 12, 5),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
