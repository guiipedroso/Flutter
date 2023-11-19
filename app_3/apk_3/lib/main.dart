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
          child:  Exemplo()
        ),
      ),
    );
  }
}

class Exemplo extends StatelessWidget{
   @override
   Widget build(BuildContext){

    return Container(
      width:200,
      height: 200,
      color: Colors.red,
      child: Column(
        children: [
          Text('Exemplo'),
          ElevatedButton(
            child: Text('Click Here'),
            onPressed: botaoAction()
          )
        ],
      )
    );
   }

}
