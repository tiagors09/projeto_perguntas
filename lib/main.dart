import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

dynamic main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0.0;

  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 3.4},
        {'texto': 'Vermelho', 'pontuacao': 6.7},
        {'texto': 'Verde', 'pontuacao': 3.5},
        {'texto': 'Branco', 'pontuacao': 2.4},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 4.4},
        {'texto': 'Cobra', 'pontuacao': 6.4},
        {'texto': 'Elefante', 'pontuacao': 2.9},
        {'texto': 'Leão', 'pontuacao': 1.2},
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 5.2},
        {'texto': 'João', 'pontuacao': 6.2},
        {'texto': 'Leo', 'pontuacao': 7.2},
        {'texto': 'Pedro', 'pontuacao': 4.2},
      ],
    },
  ];

  void _responder(double pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // List<Resposta> widgets =
    // respostas.map((t) => Resposta(texto: t, onPress: _responder)).toList();

    // List<Resposta> widgets = [];
    /* for (var textoResp in respostas) {
      widgets.add(Resposta(texto: textoResp, onPress: _responder));
    } */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(
                pontuacao: _pontuacaoTotal,
                reiniciarQuestionario: _reiniciarQuestionario,
              ),
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
