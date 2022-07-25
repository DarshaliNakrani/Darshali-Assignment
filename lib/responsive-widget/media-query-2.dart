import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Query - 02',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double boxSize = size.shortestSide - 100;

    return Scaffold(
      body: Center(
        child: Builder(
          builder: (context) {
            if (orientation.index == Orientation.portrait.index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: boxSize,
                    height: boxSize,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Text - 1",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Container(
                    width: boxSize,
                    height: boxSize,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Text - 2",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Row(
                children: [
                  Container(
                    width: boxSize,
                    height: boxSize,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Text - 1",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Container(
                    width: boxSize,
                    height: boxSize,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Text - 2",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
