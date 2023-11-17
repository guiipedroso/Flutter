import 'package:flutter/material.dart';


void main() => runApp( MeuApp());
   
class MeuApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:  Text('Meu primeiro app'),
        ),
        body: Container(
        color: Colors.red,
        child: Row( // pode ser column 
          children: [
            Expanded(
              child: Text('Guilherme'),
              ),
             Expanded(
              child: Text('Pedroso'),
              ),
             Expanded(
              child: Text('de Lima'),
              ),
           
          ],
        )

        /*body: Center(
          child: Text('Olá mundo'),
        ),*/
        )        
      )
    );
    
  } //Center
}

  