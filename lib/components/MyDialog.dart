import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDialog extends Dialog{

  String title,content;

  MyDialog({this.title:'',this.content:''});

  _showTimer(context){
    var timer=Timer.periodic(Duration(milliseconds: 3000), (timer) {
      print('关闭');
      Navigator.pop(context);
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment:Alignment.center,
                        child: Text(title),
                      ),
                      Align(
                        alignment:Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.clear),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  )
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(content),
              )
            ],
          ),
        )
      ),
    );
  }
}