import 'package:flutter/material.dart'; // Importación del paquete de Flutter

/*
Este código crea una aplicación básica en Flutter, que contiene una barra de título en la parte superior con estilo,
una imagen, textos que varían de tamaño y estilos y un botón que imprime un mensaje en consola cuando se presiona.
Para agregar la imagen se creo en el proyecto la carpeta images y se instancio en pubspec.yaml en la parte de assets.
*/ 

void main() {
  runApp(const MyApp()); 
  // La función main es la parte central de la aplicación y  MyApp es el widget raíz.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold es un widget que proporciona la estructura básica de la aplicación (appbar, body)
        appBar: AppBar(
          // AppBar es la barra superior de la aplicación
          title: const Text(
            'GUI BASICO', 
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white), 
            // Titlo de la barra superior con su estilo
          ),
          centerTitle: true, 
          backgroundColor: Colors.black, 
          // Centra y agrega color al fondo de la barra de la aplicación en negro.
        ),
        body: Container(
          // Container es un widget que puede contener otros widgets
          color: const Color.fromARGB(255, 230, 228, 228), 
          // Color de fondo del container
          child: Center(
              // Center es un widget que centra su hijo
              child: Column(
                // Column permite organizar sus hijos de forma vertical
                children: [ // Children permite agregar varios hijos a un mismo widget
            Image.asset(
              'images/developer.png', 
              // Muestra la imagen ubicada en la carpeta de assets
              width: 300, 
            ),
           const Padding(padding: EdgeInsets.only(top: 20)), 
            // Padding añade un espacio de en px al elemento

            RichText(
              // RichText permite mostrar texto con varios estilos en una misma línea
              text: const TextSpan(
                // TextSpan define fragmentos de texto con estilos sus estilos
                children: [
                  TextSpan(
                    text: 'U', 
                    style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 50, 
                        fontFamily: 'RocknRoll One', 
                        color: Color.fromARGB(255, 10, 51, 84)),
                  ),
                  TextSpan(
                    text: 'ISRAEL', 
                    style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 50, 
                        fontFamily: 'RocknRoll One', 
                        color: Color.fromARGB(255, 13, 114, 197)),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)), 

            const Text(
              // Muestra un texto simple.
              "Ingeniería en Informática", 
              style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 20, 
                  color: Color.fromARGB(255, 35, 36, 36)), 
            ),
            const Padding(padding: EdgeInsets.all(15)), 
            const Text(
              "Una vez graduado de la Ingeniería en Informática serás capaz de Diseñar y gestionar sistemas y aplicaciones informáticas para las organizaciones públicas y privadas con el fundamento teórico y práctico de la ciencia de la computación y las tecnologías de los procesos informáticos, para contribuir al desarrollo sostenible de la sociedad.",
              textAlign: TextAlign.center, 
              // Centrar el texto horizontalmente.
              style: TextStyle(
                  fontSize: 12, 
                  fontFamily: 'Arial', 
                  color: Color.fromARGB(255, 35, 36, 36)),
            ),
            const Padding(padding: EdgeInsets.only(top: 25)), 

            ElevatedButton(
              // Agregar un boton
              onPressed: () {
                print("Pulso más información");
                // Cuando se pulsa el botón, se imprime "Pulso más información" en la consola
              },
              child: const Text("Más Información"), 
            ),
          ])),
        ),
      ),
    );
  }
}
