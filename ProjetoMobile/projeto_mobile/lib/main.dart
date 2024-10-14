import 'package:flutter/material.dart';
import 'package:projeto_mobile/view/DetalhesDoAnimal.dart';
import 'package:projeto_mobile/view/Home.dart';
import 'package:projeto_mobile/view/cadastrarAnimal.dart';
import 'package:projeto_mobile/view/cadastro.dart';
import 'package:projeto_mobile/view/favoritos.dart';
import 'package:projeto_mobile/view/login.dart';
import 'package:projeto_mobile/view/perfil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App doption',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 10, 10, 10)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
       

