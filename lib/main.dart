import 'package:flutter/material.dart';

import 'livro.dart';

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

class LivroDetalhado extends StatelessWidget {
  const LivroDetalhado({Key? key, required this.livro}) : super(key: key);

  final Livro livro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(livro.titulo),
      ),
      body: Column(
        children: [
          Text(livro.autor),
          Text(livro.isbn),
          Text(livro.editora),
          Image.network(livro.imagePath)
        ],
      ),
    );
  }
}
