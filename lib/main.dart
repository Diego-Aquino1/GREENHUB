import 'package:flutter/material.dart';

void main() => runApp(GREENHUB());

class GREENHUB extends StatelessWidget {
  const GREENHUB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GREENHUB",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INICIO GREENHUB"),
      ),
      body: Center(
        child: Text("Buenas nochesssssssssss"),
      ),
    );
  }
}
