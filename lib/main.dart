import 'package:flutter/material.dart';
import 'package:flutter_demo/data.dart';
import 'package:flutter_demo/pages/Tabs.dart';
import 'package:flutter_demo/pages/appBarDemo.dart';
import 'package:flutter_demo/routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabsPage(),
      // routes: {
      //   'detail':(context)=>DetailPage()
      // },
      onGenerateRoute: onGenerateRoute,
      //initialRoute: 'appBarDemo',
    );
  }
}
