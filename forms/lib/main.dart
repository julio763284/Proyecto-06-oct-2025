import 'package:flutter/material.dart';
import 'package:forms/Homepage.dart';
import 'package:forms/presentacion/widgets/failure.dart';
import 'package:forms/presentacion/widgets/loading.dart';
import "formulario.dart";


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Formulario());
  }
}
