import 'package:flutter/material.dart';


void main() => runApp( MeuApp());
   
class MeuApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:  Text('Meu app'),
        ),
        body: Center(
          child: Text('Olá mundo'),
        ),
      ),

    );
    
  } //Center
}

  