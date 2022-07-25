import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orientation Builder',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double boxSize = size.shortestSide - 100;

    return Scaffold(
      body: Center(
        child: Container(
          child: OrientationBuilder(
            builder: (context, orientation) {
                if(orientation == Orientation.landscape){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: getWidget(boxSize),
                  );
                }else{
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: getWidget(boxSize),
                  );
                }
            },
          ),
        ),
      ),
    );
  }
}

List<Widget> getWidget(double boxSize)
{
  return [
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
  ];
}
