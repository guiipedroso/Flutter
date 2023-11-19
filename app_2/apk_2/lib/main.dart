import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {

  botaoAction(){
    print("Clicou no botão.");

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Segundo App'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Clique no botão abaixo'),
              ElevatedButton(
                child: Text('Click here'),
                onPressed: botaoAction
                
              )
            ],
          ), // Adicione um texto significativo aqui
        ),
      ),
    );
  }
}
