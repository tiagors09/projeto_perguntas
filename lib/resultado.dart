import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final double pontuacao;

  const Resultado({required this.pontuacao, super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    }

    return 'Nivel Jedi!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      fraseResultado,
      style: const TextStyle(fontSize: 28.0),
    ));
  }
}
