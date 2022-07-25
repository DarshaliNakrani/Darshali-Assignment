import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Media Query - 01',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
     /* appBar: AppBar(
        title: Text('Material App Bar'),
      ),*/
      body: Center(
        child: Container(
          child: Row(
            children: [
              Container(
                width: size.width/2,
                height: size.width/2,
                color: Colors.blue,
              ),
              Container(
                width: size.width/2,
                height: size.width/2,
                color: Colors.red,
              ),
            /*  Container(
                width: size.shortestSide,
                height: size.shortestSide,
                color: Colors.blue,
              )*/
            ],
          ),
        )
      ),
    );
  }
}

