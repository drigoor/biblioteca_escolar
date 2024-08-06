import 'package:flutter/material.dart';

import 'package:biblioteca_escolar/models/livro.dart';

class LivroDetalhado extends StatelessWidget {
  const LivroDetalhado({Key? key, required this.livro}) : super(key: key);

  final Livro livro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          livro.titulo,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              livro.autor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "ISBN: " + livro.isbn,
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "Editora: " + livro.editora,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 350,
              child: Image.network(livro.imagePath),
            )
          ],
        ),
      ),
    );
  }
}
