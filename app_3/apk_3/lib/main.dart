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
          title: Text('Meu Terceiro App'),
        ),
        body: Center(
          child:  Text('...')
        ),
      ),
    );
  }
}