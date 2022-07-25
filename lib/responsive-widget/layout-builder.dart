import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Builder',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text("MediaQuery.width : $width \nLayoutBuilder.width : ${constraints.maxWidth}"),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  color: Colors.green,
                  child: Center(
                    child: Text("MediaQuery.width : $width \nLayoutBuilder.width : ${constraints.maxWidth}"),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
