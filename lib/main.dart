import 'package:flutter/material.dart';
import 'package:flutter_demo/data.dart';
import 'package:flutter_demo/pages/Tabs.dart';
import 'package:flutter_demo/pages/appBarDemo.dart';
import 'package:flutter_demo/routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // 本地化的代理类
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // 美国英语
        const Locale('zh', 'CN'), // 中文简体
        //其它Locales
      ],
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
