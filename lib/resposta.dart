import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPress;

  const Resposta({required this.texto, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPress,
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            textStyle:
                MaterialStatePropertyAll(TextStyle(color: Colors.black))),
        child: Text(texto),
      ),
    );
  }
}
