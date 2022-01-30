# Biblioteca Escolar

_estamos no ramo:_ `Lista De Livros`

---

Agora que já temos um ecrã para ver as informações detalhadas de um livro, vamos mudar o nosso ecrã inicial para ser um
pouco mais útil e mostar uma lista de livros em vez de mostrar apenas os detalhes de um dado livro.

A ideia é o ecrã principal ser uma lista de livros e se clicarmos num dos livros, vamos para outro ecrã onde podemos ver
os seus detalhes. Felizmente já temos uma widget para visualizar os detalhes de um livro (a widget _LivroDetalhado_)

Para isso basta-nos mudar novamente a nossa _MyApp_ para agora a widget _ListaDeLivros_ que iremos criar:

```dart
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
```

E agora a nossa widget nova _ListaDeLivros_ ira ser construída com a widget ListView:

```dart
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
```

Uma vez mais estivemos a seguir e a adaptar o exemplo do _cookbook_ `Send data to a new screen`[^1].

[^1]: [Send data to a new screen](https://docs.flutter.dev/cookbook/navigation/passing-data)
