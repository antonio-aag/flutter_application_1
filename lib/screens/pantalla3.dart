import 'package:flutter/material.dart';


class Pantalla3 extends StatelessWidget {
const Pantalla3 ({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Pantalla3"),
      backgroundColor: Color.fromARGB(255, 20, 223, 23),

      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
          color: Color.fromRGBO(0, 0, 0, 1),
          width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.asset('/imagen.jpg'),
          ),
       
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