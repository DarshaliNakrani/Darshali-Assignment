import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'image widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('image widget'),
        ),
        body: Center(
          /*child: Image.network("https://picsum.photos/200/300")*/
          child: Image.asset(
              "assets/image/Screenshot (47).png",
          ),

              
          ),

          ),
        );


  }
}
