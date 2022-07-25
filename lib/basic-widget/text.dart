import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'text widget',
      home: Scaffold(
        appBar: AppBar(
          title:  const Text('text widget'),
        ),
        body: const Center(
          child: Text(
            'Tops Technologies',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20,
              //fontWeight: FontWeight.bold,
              // fontStyle: FontStyle.italic
              fontFamily: "poppins",
            ),
          ),
        ),
      ),
    );
 }
}