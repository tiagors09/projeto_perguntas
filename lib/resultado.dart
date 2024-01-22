import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final double pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(
      {required this.pontuacao,
      required this.reiniciarQuestionario,
      super.key});

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Text(
          fraseResultado,
          style: const TextStyle(fontSize: 28.0),
        )),
        TextButton(
          onPressed: reiniciarQuestionario,
          child: const Text('Reiniciar?'),
        ),
      ],
    );
  }
}
