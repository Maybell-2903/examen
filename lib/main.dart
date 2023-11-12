import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.lightBlue,
          ),
        ),
        appBar: AppBar(
          title: Text('EXAMEN'),
        ),
        body: MyWrapRichText(),
      ),
    );
  }
}

class MyWrapRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
          colors: [
            Color(0xFF64B5F6), // Color celeste más claro
            Color.fromARGB(255, 248, 23, 233)
          ],
        ),
      ),
      child: Wrap(
        spacing: 10.0, // Espaciado horizontal entre elementos
        runSpacing: 10.0, // Espaciado vertical entre filas
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Wrap" ofrece flexibilidad en la disposición de elementos en pantalla, ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        'RichText" enriquece la presentación de contenido al permitir el formato de texto con estilos y elementos visuales  '),
                TextSpan(
                  text: 'RichText',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 245, 2, 2),
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text:
                      'los "Degradados" añaden profundidad y atractivo visual a los diseños',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'RichText',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 110, 242, 3),
                  ),
                ),
                TextSpan(
                  text: ' Ejemplo ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 255, 238, 2),
                  ),
                ),
                TextSpan(
                  text: ' Ejemplo 2 ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 42, 0, 251),
                  ),
                ),
                TextSpan(text: ' en Flutter.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
