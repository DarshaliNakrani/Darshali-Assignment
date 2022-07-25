import 'package:flutter/material.dart';

//import 'package:test123/responsive-layout/tablet-page.dart';
//import 'package:test123/responsive-widget/tablet_body.dart';
//import 'package:test123/responsive-layout/desktop-page.dart';
//import 'package:test123/responsive-layout/mobile-page.dart';
import 'package:test123/responsive-widget/responsive-layout/desktop-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ResponsivePage(
        mobilePage: MobilePage(),
        desktopPage: DesktopPage(),
        tabletPage: TabletPage(),
      ),
    );
  }
}

class ResponsivePage extends StatelessWidget {

  Widget mobilePage;
  Widget desktopPage;
  Widget tabletPage;


  ResponsivePage({required this.mobilePage, required this.desktopPage, required this.tabletPage});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth<600){
            // mobile
            return mobilePage;
          }else if (constraints.maxWidth<950){
            // tablet
            return tabletPage;
          }else{
            // desktop
            return desktopPage;
          }
        },
      )
    );
  }
}
