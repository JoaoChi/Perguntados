import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelection;

  Resposta(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 20, 0, 10),
      child: ElevatedButton(
        onPressed: onSelection,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue, // Cor do texto do botão
        ),
        child: Text(texto),
      ),
    );
  }
}
