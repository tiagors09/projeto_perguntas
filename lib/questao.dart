import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
    );
  }
}
