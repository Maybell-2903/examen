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
    );
  }
}
