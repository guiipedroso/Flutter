import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Terceiro App'),
        ),
        body: Column(
          children: <Widget> [
            Exemplo(),
            Exemplo()
          ]  
        ),
      ),
    );
  }
}

class Exemplo extends StatelessWidget{
  
  botaoAction(){
    print("Clicou no botão.");
  }
   
   @override
   Widget build(BuildContext){

    return Container(
      width:200,
      height: 200,
      margin: EdgeInsets.all(10),//espaçamento 
      padding: EdgeInsets.all(10), //espaçamento interno
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
