import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final dynamic Function(double) responder;

  const Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder,
      super.key});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((t) => Resposta(
                texto: t['texto'].toString(),
                onPress: () => responder(t['pontuacao'] as double)))
            .toList(),
      ],
    );
  }
}
