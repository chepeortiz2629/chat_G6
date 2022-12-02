import 'package:chatgrupo6/proceso/autenticacion.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login/registro")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image(
                image: NetworkImage(
                    "data:image/png;base64,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")),
            Text(
              "Chat Grupo 6",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.teal[600]),
            ),
            Divider(),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Email", suffixIcon: Icon(Icons.email)),
            ),
            TextField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                  hintText: "Password", suffixIcon: Icon(Icons.key)),
            ),
            Divider(),
            ElevatedButton.icon(
              onPressed: () {
                Autenticacion()
                    .IniciarSesion(em: email.text, pass: password.text);
                password.clear();
                email.clear();
              },
              icon: Icon(Icons.login),
              label: Text("Iniciar Sesion"),
            ),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion()
                      .CrearUsuario(em: email.text, pass: password.text);
                },
                icon: Icon(Icons.person_add),
                label: Text("Registrar usuario")),
          ],
        ),
      ),
    );
  }
}
