import 'package:flutter/material.dart';

void main() => runApp(MeuApp());
botaoAction() {
  print('clicado');
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Meu Tserceiro App')),
            body:Column(
              children: [
                Exemplo(
                    title: 'Texto 1',
                    onPress: () {
                      print('Clicou no item 1');
                    }),
                Exemplo(
                  title: 'Texto 2',
                  onPress: () {
                    print('Clicou no item 2');
                  },
                )
              ],
            )));
  }
}

class Exemplo extends StatelessWidget {
  Exemplo({this.title, required this.onPress});

  var title;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.yellow,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(this.title),
          TextButton(
            onPressed: onPress,
            child: Text("Clique aqui"),
          )
        ],
      ),
    );
  }
}