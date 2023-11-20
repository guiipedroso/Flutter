import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(labelText: 'Nome de Usuário'),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Senha'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // depois lembrar de configurar autenticação por aqui
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewPage()),
              );
            },
            child: Text('Entrar'),
          ),
        ],
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: ListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados cadastrais'),
      ),
      body: FormWidget(),
    );
  }
}

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Nome'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Telefone'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showExitDialog(context);
                },
                child: Text('Sair'),
              ),
              ElevatedButton(
                onPressed: () {
                  // aqui salvar os dados do formulário (segunda parte do trabalho)
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sair do Formulário"),
          content: Text("Deseja realmente sair? Seus dados não serão salvos."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Fechar o AlertDialog
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Fechar o AlertDialog
               // Navigator.pop(context); // Sair da tela de formulário
                SystemNavigator.pop(); // Sair da aplicação
              },
              child: Text("Sair"),
            ),
          ],
        );
      },
    );
  }
}
