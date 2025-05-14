import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // Suggested code may be subject to a license. Learn more: ~LicenseLog:741701744.
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Login'), backgroundColor: Colors.blueGrey),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(
            'Email',
      style: TextStyle(fontSize: 20, color: Colors.amber),
          ),
          TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Digite seu email'),
          ),
                    Text(
            'Senha',
      style: TextStyle(fontSize: 20, color: Colors.amber),
          ), 
          TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Digite sua senha'),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Entrar'),)
        ],
        ),
      ),
    );
  }
}
