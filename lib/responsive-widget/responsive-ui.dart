import 'package:flutter/material.dart';

import 'desktop_body.dart';
import 'mobile_body.dart';
import 'tablet_body.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
        tabletBody: MyTabletBody(),
      ),

    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  Widget mobileBody;
  Widget desktopBody;
  Widget tabletBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody, required this.tabletBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else if (constraints.maxWidth <950){
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}

class MyResponsivePage extends StatelessWidget {
  const MyResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
        600 < 950 ? Colors.grey.shade700 : Colors.blue.shade300,
      body: Center(
        child: Text(width.toString()),
      ),
    );
  }
}
