import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});
  @override
    Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      title: const Text("Pantalla1"),
      backgroundColor: const Color.fromARGB(255, 20, 223, 23),
      ),
      body: Center(
      child:
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
  
      children: [
      ElevatedButton(
      child: const Text("Ir a Pantalla2"),
      onPressed: () {
      Navigator.pushNamed(
      context,
      "/pantalla2",
      arguments: "Saludo enviado de la pantalla 1",
      );
      },
    ),
    ElevatedButton(
      child: const Text("Ir a Pantalla3"),
      onPressed: () {
      Navigator.pushNamed(
      context,
      "/pantalla3",
      );
      },
    ),
    ])
  ),
  );
}
}