import 'package:barra_lateral/page/inicio.dart';
import 'package:flutter/material.dart';
//import 'package:barra_lateral/page/main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 23.0, bottom: 10),
          children: <Widget>[
            const DrawerHeader(
              margin: EdgeInsets.only(top: 58.0),
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("Imagenes/Hola.jpg"),
                ),
              ),
              child: Text(
                "Opciones",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text("Inicio"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Inicio()));
              },
            ),
            ListTile(
              title: const Text("Catálogos"),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text("FeedBack"),
              leading: const Icon(Icons.border_color),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Salir"),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Menú Lateral'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
