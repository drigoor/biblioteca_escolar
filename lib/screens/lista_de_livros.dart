import 'package:flutter/material.dart';

import 'package:biblioteca_escolar/models/livro.dart';
import 'package:biblioteca_escolar/screens/livro_detalhado.dart';

class ListaDeLivros extends StatelessWidget {
  const ListaDeLivros({Key? key, required this.livros}) : super(key: key);

  final List<Livro> livros;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Livros'),
      ),
      body: ListView.builder(
        itemCount: livros.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Text("\"" + livros[index].titulo + "\""),
                SizedBox(
                  width: 8,
                ),
                Container(
                  child: Text(
                    "de: " + livros[index].autor,
                    style: TextStyle(fontSize: 10),
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LivroDetalhado(livro: livros[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
