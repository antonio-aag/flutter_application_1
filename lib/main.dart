import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pantalla1.dart';
import 'package:flutter_application_1/screens/pantalla2.dart';
import 'package:flutter_application_1/screens/pantalla3.dart';


void main() {
runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner:false,
    title: 'Aplicación navigator',
    initialRoute: "/",
      routes: {
        "/": (contexts) =>  Pantalla1(),
        "/pantalla2": (context) => const Pantalla2(),
        "/pantalla3": (contextt) => const Pantalla3(),

      },
    );
  }
}


/*
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Aplicacion Navigator',
    home: Pantalla1(),
    );
  }
}
class Pantalla1 extends StatelessWidget {
  final TextEditingController usuario = TextEditingController();

  Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BBVA"),
        backgroundColor: Color.fromARGB(255, 23, 20, 223),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200, 
              child: TextFormField(
                controller: usuario,
                decoration: InputDecoration(
                  hintText: 'Escribe tu contraseña',
                  labelText: "Contraseña",
                ),
              ),
            ),
          SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Enviar"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pantalla2(
                      parametro: usuario.text,
                    ),
                  ),
                );
              },
            ),
        ]),
      ),
    );
  }
}
  class Pantalla2 extends StatelessWidget {
    final String parametro;
    const Pantalla2({super.key, required this.parametro});
    @override
      Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: const Text("Pantalla2"),
          backgroundColor: Color.fromARGB(255, 23, 20, 223),
        ),
        body: Center(
            child:Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Text(parametro),
          ElevatedButton(
          child: const Text("Ingresar la contraseña de nuevo"),
          onPressed: () {
          Navigator.pop(context);
      })
      ])),
    );
  }
}
*/
/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostrar Imagen'),
        backgroundColor: Color.fromARGB(255, 255, 68, 0),
      ),
      body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alinea los botones en el espacio disponible
        children: [
        ElevatedButton(
          onPressed: () {
          // Acción a realizar al presionar el botón
          print('Hola IGSOFT');
          },
          child: Text('Saludar'),
        ),
        ElevatedButton(
          onPressed: () {
          // Acción a realizar al presionar el botón
          final now = DateTime.now();
          print(now);
          },
          child: Text('Fecha y hora'),
        ),
        ElevatedButton(
          onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Image.asset('/imagen.jpg'),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cerrar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      },  
                    ),
                   ],
                 );
               },
            );
          },
          child: Text('Abrir Imagen'),
        ),
        ],
      ),
       ),
    );
  }
}
*/
/*
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
      title: Text('Botones'),
      backgroundColor: Colors.green,
      ),
      body: Center(
      child: ElevatedButton(
        onPressed: () {
        // Acción a realizar al presionar el botón
        print('Hola IGSOFT');
        },
        child: Text('Saludar'),
        ),
      ),
    );
  }
}
*/



/*

class MyApp extends StatelessWidget {
@override
 Widget build(BuildContext context) {
      return MaterialApp(
          title: 'ListView en Flutter',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Meses del año'),
              backgroundColor: Color.fromARGB(255, 248, 0, 0),
            ),
            body: ListView.builder(
                itemCount: 12,
                  itemBuilder: (context, posicion) {
                    return elementoDeLaLista(posicion);
                  },
            ),
          ),
      );
    }
    Widget elementoDeLaLista(int posicion) {
    List<String> opciones = ['Enero', 'Febrero', 'Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Ocubre','Noviembre','Diciembre']; // Agrega las opciones que desees

    return Card(
      margin: EdgeInsets.all(10.0),
      child: ListTile(
      leading: Icon(Icons.calendar_month, color: Colors.blue),
      title: Text('${opciones[posicion]}'),
      subtitle: Text('Mes #${posicion + 1}'),
      trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
*/
/*
Widget build(BuildContext context) {
return MaterialApp(
  title: 'Ejemplo de Row',
  home: Scaffold(
    appBar: AppBar(
    title: Text('Mejores lugares del mundo'),
    backgroundColor: Color.fromRGBO(252, 172, 0, 1),
    ),
    body: Center(
      
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
   
        
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Color.fromRGBO(252, 172, 0, 1),
          width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/01_khafre_north.jpg/640px-01_khafre_north.jpg'
          ),
        ),
        Container(
          color: Color.fromRGBO(252, 172, 0, 1),
          width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmVF8nK46JttnJJAZnbfKfeRpweWHCBoRn6Q&s'
          ),
        ),
        Container(
          color: Color.fromRGBO(252, 172, 0, 1),              
          width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://t2.uc.ltmcdn.com/es/posts/1/2/6/como_se_llaman_las_piramides_de_egipto_45621_600_square.jpg'
          ),
        ),
        ],
        ),     
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Color.fromRGBO(252, 172, 0, 1),               
          width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/stk3lqp0zqgbdlv1di6k'
          ),
        ),
        Container(
          color: Color.fromRGBO(252, 172, 0, 1),               
          width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/qazoph2ndvuopvajoyye'
          ),
        ),
        Container(
          color: Color.fromRGBO(252, 172, 0, 1),
               width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/r7hi7qicqhtqyzmrqmne'
          ),
        ),
        ],
        ),
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
         color: Color.fromRGBO(252, 172, 0, 1),
               width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/ofrlywwruye2ypbwv8k8'
          ),
        ),
        Container(
         color: Color.fromRGBO(252, 172, 0, 1),
               width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/jzedoxc8irlkqk6cy4fz'
          ),
        ),
        Container(
         color: Color.fromRGBO(252, 172, 0, 1),
               width: 150,
          height: 150,
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/sh1labay19cuhzsuthvg'
          ),
        ),
        ],
        ),
        
        ],
        ),
      ),
    ),
  );
}
}
*/





/*

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi primera App Flutter",
      home: Inicio(title: "Mi primera App Flutter"),
    );
  }
}
class Inicio extends StatefulWidget {
  const Inicio({super.key, required this.title});
  final String title;

  @override
  InicioState createState() => InicioState();
   
}
class InicioState extends State<Inicio> {
   final _formKey = GlobalKey<FormState>();
    final _controller = TextEditingController();
      List<String> opciones = ['Cañada de la virgen', 'Arroyo seco', 'Peralta']; // Agrega las opciones que desees

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor:const Color.fromARGB(255, 244, 168, 3),
      ),
      body: 
       Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Adivina la imagen",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.network(
            'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/bzmgcg4xglwsp22ovrmj',
              width: 200,
              height: 200,
              errorBuilder: (context, error, stackTrace) {
                return const Text('No se pudo cargar la imagen');
              },
            ),
            const SizedBox(height: 20),
        
            Form(
              key: _formKey,
              child: Column(
              children:[
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingrese tu respuesta aqui',
                ),
                
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'No puedes dejar el campo vacio';
                  }
                return null;
                },
              ),  
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingrese tu respuesta aqui',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'No puedes dejar el campo vacio';
                  }
                return null;
                },
              ), 
              const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: opciones.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(opciones[index]),
                        onTap: () {
                          // Agrega aquí el manejo de la selección de la opción
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).primaryColorLight,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }*/