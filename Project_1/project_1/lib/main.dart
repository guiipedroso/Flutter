import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class FormData {
  final String nome;
  final String telefone;
  final String email;

  FormData(this.nome, this.telefone, this.email);

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'telefone': telefone,
      'email': email,
    };
  }

  factory FormData.fromMap(Map<String, dynamic> map) {
    return FormData(
      map['nome'],
      map['telefone'],
      map['email'],
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

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<FormData> formDataList = [];

  @override
  void initState() {
    super.initState();
    _loadFormData(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: ListView.builder(
        itemCount: formDataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(formDataList[index].nome),
            subtitle: Text(formDataList[index].email),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
   
          FormData formData = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormPage()),
          );

          if (formData != null) {
            setState(() {
              formDataList.add(formData);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _loadFormData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedData = prefs.getStringList('form_data_list') ?? [];

    setState(() {
      formDataList = savedData
          .map((data) => FormData.fromMap(jsonDecode(data))) 
          .toList();
    });
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
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: nomeController,
            decoration: InputDecoration(labelText: 'Nome'),
          ),
          TextField(
            controller: telefoneController,
            decoration: InputDecoration(labelText: 'Telefone'),
          ),
          TextField(
            controller: emailController,
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
                 
                  FormData formData = FormData(
                    nomeController.text,
                    telefoneController.text,
                    emailController.text,
                  );

                  _saveFormData(formData); 
                  Navigator.pop(context, formData); 
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _saveFormData(FormData formData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> savedData = prefs.getStringList('form_data_list') ?? [];

    savedData.add(jsonEncode(formData.toMap()));

    
    prefs.setStringList('form_data_list', savedData);
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
                Navigator.pop(context); 
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
                SystemNavigator.pop(); 
              },
              child: Text("Sair"),
            ),
          ],
        );
      },
    );
  }
}
