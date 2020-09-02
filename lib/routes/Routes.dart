import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/BothDirectionPage.dart';
import 'package:flutter_demo/pages/GestureRecognizerTestRoute.dart';
import 'package:flutter_demo/pages/ScrollViewPage.dart';
import 'package:flutter_demo/pages/TabController.dart';
import 'package:flutter_demo/pages/appBarDemo.dart';
import 'package:flutter_demo/pages/detail.dart';
import 'package:flutter_demo/pages/drag_page.dart';
import 'package:flutter_demo/pages/notification_page.dart';

final routes= {
        'detail':(context,{arguments})=>DetailPage(arguments:arguments),
        'appBarDemo':(context,{arguments})=>AppBarDemoPage(),
        'tabBarControllerPage':(context,{arguments})=>TabBarControllerPage(),
        '/dragPage':(context,{arguments})=>DragPage(),
        '/scrollViewPage':(context,{arguments})=>ScrollViewPage(),
        '/gestureRecognizerTest':(context,{arguments})=>GestureRecognizerTestRoute(),
        '/bothDirectionPage':(context,{arguments})=>BothDirectionPage(),
        '/notificationPage':(context,{arguments})=>NotificationPage(),
      };

var onGenerateRoute=(RouteSettings settings){
  final String name=settings.name;
  final pageContentBuilder=routes[name];
  if(pageContentBuilder!=null){
    return MaterialPageRoute(builder: (context)=>
    pageContentBuilder(context,arguments:settings.arguments));
  }
};