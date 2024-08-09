import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final questionSelected = 0;
  void responder() {
    questionSelected++;
    print(questionSelected);
  }

  @override
  Widget build(BuildContext contex) {
    final perguntas = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[questionSelected]),
            ElevatedButton(
              child: Text('Response One'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Response two'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Response thre'),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}
