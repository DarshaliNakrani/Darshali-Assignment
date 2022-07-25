import 'package:flutter/material.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("TABLET"),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: 200,
            color: Colors.grey.shade600,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 3/2,
                    child: Container(
                      height: 250,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 120,
                        margin: EdgeInsets.all(8),
                        color: Colors.grey.shade400,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
