import 'package:flutter/material.dart';

import 'models/livro.dart';
import 'package:biblioteca_escolar/screens/lista_de_livros.dart';

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
      home: ListaDeLivros(
        livros: livros,
      ),
    );
  }
}
