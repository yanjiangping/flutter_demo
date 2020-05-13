import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/detail.dart';

final routes= {
        'detail':(context,{arguments})=>DetailPage(arguments:arguments)
      };

var onGenerateRoute=(RouteSettings settings){
  final String name=settings.name;
  final pageContentBuilder=routes[name];
  if(pageContentBuilder!=null){
    return MaterialPageRoute(builder: (context)=>
    pageContentBuilder(context,arguments:settings.arguments));
  }
};