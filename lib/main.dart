import 'package:flutter/material.dart';

import 'models/livro.dart';
import 'package:biblioteca_escolar/screens/livro_detalhado.dart';

final livros = gerarLivrosAleatorios();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca Escolar Virtual',
      home: LivroDetalhado(livro: livros[0]),
    );
  }
}
