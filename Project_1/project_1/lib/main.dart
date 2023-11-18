import 'package:flutter/material.dart';

//reorganizar código

class LoginPage extends StatefulWidget{
    @override
    _LoginPage createState() _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  @override

  Widget build (Build context){
    return Scaffold(
    appBar: AppBar(
      title:Text('Login'),
    ),  
    body: Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            
            ],
          ),
        ),

      ),

    );
  }
  

}
