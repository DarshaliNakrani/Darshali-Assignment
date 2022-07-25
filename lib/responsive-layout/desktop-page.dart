import 'package:flutter/material.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desktop'),
      ),
      body: Container(
        color: Colors.grey.shade500,
      ),
    );
  }
}
