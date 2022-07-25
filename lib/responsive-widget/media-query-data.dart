import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'View Padding and View Insets',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  var msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);

    var viewInsetBottom = data.viewInsets.bottom;
    var viewInsetTop = data.viewInsets.top;
    var viewPaddingBottom = data.viewPadding.bottom;
    var viewPaddingTop = data.viewPadding.top;


    var paddingBottom = data.padding.bottom;
    var paddingTop = data.padding.top;



    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: msgController,
                  onChanged: (value) => null,
                  decoration: InputDecoration(hintText: "Enter Message"),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 40,
                ),
                getTextWidget("ViewInset.Bottom", viewInsetBottom),
                getTextWidget("ViewInset.Top", viewInsetTop),
                getTextWidget("ViewPadding.Bottom", viewPaddingBottom),
                getTextWidget("ViewPadding.Top", viewPaddingTop),
                getTextWidget("Padding.Bottom", paddingBottom),
                getTextWidget("Padding.Top", paddingTop),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

getTextWidget(String title, double value) {
  return Text(
    "$title : ${double.parse((value).toStringAsFixed(2))}",
    style: TextStyle(
      fontSize: 24,
    ),
  );
}
