import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text widget'),
        ),
        body: const Center(
          widthFactor: 5,
          heightFactor: 2,
          child: Text(
            "Aww figure cuds wisdom dubs ufn few flag names jfehwgfreqwe gqwiufgasc wjhqgfsc yufqwgvcfv giuwqd ahgajgb gfiuqwgc",
            style: TextStyle(
              fontSize: 60,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          ),
        ),

    );
  }
}
