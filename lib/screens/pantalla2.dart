import 'package:flutter/material.dart';


class Pantalla2 extends StatelessWidget {
const Pantalla2({super.key});
@override
  Widget build(BuildContext context) {
  final argumento = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
      title: const Text("Pantalla2"),
      backgroundColor: const Color.fromARGB(255, 20, 223, 23),

      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(argumento),
        ElevatedButton(
        child: const Text("Regresar a Pantalla1"),
        onPressed: () {
       Navigator.pushNamed(
        context,
        "/",
          );
        }),
      ])),
    );
  }
}