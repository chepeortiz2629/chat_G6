import 'package:chatgrupo6/interfaz/chat.dart';
import 'package:chatgrupo6/interfaz/login.dart';
import 'package:chatgrupo6/proceso/autenticacion.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Autenticacion().estadologin,
      builder: (context, respuesta) {
        if (respuesta.hasData) {
          return chat();
        } else {
          return login();
        }
      },
    );
  }
}
